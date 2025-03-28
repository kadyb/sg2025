library("terra")
library("rstac")
options(timeout = 600)

stac_source = stac("https://earth-search.aws.element84.com/v1")
stac_source |>
  stac_search(
    collections = "sentinel-2-c1-l2a",
    bbox = c(22.5, 51.1, 22.6, 51.2),
    datetime = "2023-01-01T00:00:00Z/2023-12-31T00:00:00Z") |>
  ext_query(`eo:cloud_cover` < 20) |>
  ext_query(`grid:code` == "MGRS-34UEB") |>
  post_request() -> obrazy

# ID sceny
unlist(lapply(obrazy$features, \(x) x$id))
# kod siatki
unlist(lapply(obrazy$features, \(x) x$properties$`grid:code`))

# df = items_as_sf(obrazy)

# items_reap() -- selekcja scen na podstawie warunku?
bands = c("blue", "green", "red")
obrazy |>
  # wylistuj wszystkie sceny
  items_fetch() |>
  assets_select(asset_names = bands) |>
  assets_url(append_gdalvsi = TRUE) -> urls

# grupowanie tych samych scen
group = function(x){
  g = strsplit(urls, "/")
  g = sapply(g, "[[", 12) # 12 element
  g = split(x, factor(g))
  return(g)
}

sceny = group(urls)

# sortowanie scen według dat
daty = substr(names(sceny), 12, 19)
daty = as.Date(daty, format = "%Y%m%d")
sceny = sceny[order(daty)] # ustaw kolejność scen

r = rast(sceny[[1]])
plotRGB(r, 3, 2, 1, stretch = "lin", axes = TRUE,
        mar = c(1.5, 0, 1, 0))

# ograniczenie do mniejszego zasięgu
# (wymagana reprojekcja)
e = ext(c(22.40, 22.60, 50.80, 50.90))
e = project(e, from = "EPSG:4326", to = "EPSG:32634")
r = rast(sceny[[1]], win = e)
plotRGB(r, 3, 2, 1, stretch = "lin", axes = TRUE,
        mar = c(1.5, 0, 1, 0))

# raster czterowymiarowy
# sds() czy stworzyć nowy atrybut time???
t = sds(lapply(sceny, FUN = rast, win = e))

# następnie:
# obliczyć wybrany wskaźnik spektralny
# pobrać wartości dla wyznaczonych obiektów
# stworzyć wykres liniowy
