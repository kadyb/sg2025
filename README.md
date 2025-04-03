# Skrypty geoprzetwarzania

To repozytorium zawiera materiały do kursu "Skrypty geoprzetwarzania" prowadzonego
na Uniwersytecie Adama Mickiewicza w semestrze letnim w 2025 r.

Skrypty geoprzetwarzania to sekwencje zakodowanych instrukcji wykorzystywane do automatyzacji
przetwarzania, analizy i wizualizacji danych przestrzennych. W przeciwieństwie do ręcznych analiz
wykonywanych w oprogramowaniu GIS, skrypty zapewniają powtarzalność, skalowalność i dowolne
dostosowanie według potrzeb, dzięki czemu są odpowiednie do przeprowadzania iteracyjnych procesów.
Geoprzetwarzanie w R oferuje kilka istotnych zalet związanych z pełną integracją danych
tabelarycznych i przestrzennych, zaawansowane możliwości analiz statystycznych, uczenia
maszynowego i analiz przestrzennych oraz rozbudowane narzędzia do wizualizacji danych.

# Wstęp

**1. Instalacja R**

Interpreter języka **R** można pobrać dla [Windows](https://cloud.r-project.org/bin/windows/base/),
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
4. [Dostęp do danych satelitarnych](https://kadyb.github.io/sg2025/cwiczenia/04_Dane_satelitarne.html)
5. [Klasteryzacja danych](https://kadyb.github.io/sg2025/cwiczenia/05_Klasteryzacja.html)
6. [Klasyfikacja danych](https://kadyb.github.io/sg2025/cwiczenia/06_Klasyfikacja.html)
7. [Analiza wieloczasowa](https://kadyb.github.io/sg2025/cwiczenia/07_Analiza_wieloczasowa.html)
8. [Analizy geoprzestrzenne](https://kadyb.github.io/sg2025/cwiczenia/08_Analizy_geoprzestrzenne.html)

# Materiały dodatkowe

1. ["Geocomputation with R"](https://r.geocompx.org/) Robin Lovelace, Jakub Nowosad i Jannes Muenchow
2. ["Spatial Data Science with R and terra"](https://rspatial.org/) Robert Hijmans i inni

# Kontakt 

W razie pytań proszę o kontakt na <krzysztof.dyba@amu.edu.pl>.
