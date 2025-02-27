# Skrypty geoprzetwarzania

To repozytorium zawiera materiały do kursu "Skrypty geoprzetwarzania" prowadzonego
na Uniwersytecie Adama Mickiewicza w semestrze letnim w 2025 r.

# Wstęp

**1. Instalacja R**

Interpreter języka **R** można pobrać dla [Windows](https://cloud.r-project.org/bin/windows/base/R-4.4.2-win.exe),
[MacOS](https://cran.r-project.org/bin/macosx/) oraz [Linux](https://cloud.r-project.org/bin/linux/).

**2. Instalacja RStudio**

**RStudio** jest zintegrowanym środowiskiem programistycznym z edytorem kodu.
Aplikacja dostępna jest na różnych platformach do pobrania w [tym miejscu](https://posit.co/download/rstudio-desktop/).

**3. Instalacja pakietów**

Jednym z najpopularniejszych pakietów do analizy przestrzennej w R jest pakiet [**terra**](https://github.com/rspatial/terra).
Umożliwia on analizę zarówno danych rastrowych i wektorowych.
Można go zainstalować w następujący sposób:

```r
install.packages("terra")
```

Następnie można go załadować używając funkcji `library()`.

```r
library("terra")
```

Dokumentację do tego pakietu znajdziesz tutaj: <https://rspatial.github.io/terra/reference/terra-package.html>

# Materiały do kursu

1. [Wprowadzenie](https://kadyb.github.io/sg2025/cwiczenia/01_Wprowadzenie.html)
2. [Przetwarzanie danych rastrowych](https://kadyb.github.io/sg2025/cwiczenia/02_Przetwarzanie_raster.html)
3. [Przetwarzanie danych wektorowych](https://kadyb.github.io/sg2025/cwiczenia/03_Przetwarzanie_wektor.html)

# Materiały dodatkowe

1. ["Geocomputation with R"](https://r.geocompx.org/) Robin Lovelace, Jakub Nowosad i Jannes Muenchow
2. ["Spatial Data Science with R and terra"](https://rspatial.org/) Robert Hijmans i inni

# Kontakt 

W razie pytań proszę o kontakt na <krzysztof.dyba@amu.edu.pl>.
