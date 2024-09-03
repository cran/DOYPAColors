## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(DOYPAColors)

## -----------------------------------------------------------------------------
library(ggplot2)

# Plot using automatic palette selection
ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_doypa(type = "qual", discrete = TRUE) +
  theme_minimal() +
  labs(title = "Bar Plot with Automatic DOYPAColors Palette")

## -----------------------------------------------------------------------------
# List all available DOYPAColors palettes
list_doypa_pals()

## -----------------------------------------------------------------------------
# Preview all available DOYPAColors palettes
preview_doypa_pals()

## -----------------------------------------------------------------------------
# Preview a specific DOYPAColors palette
preview_pal(palette = "doypa")

## -----------------------------------------------------------------------------
# Retrieve colors from a specific palette
doypa_colors <- doypa(palette = "retro")
print(doypa_colors)

# Retrieve a default palette if no palette name is provided
default_palette_colors <- doypa()
print(default_palette_colors)

## -----------------------------------------------------------------------------
library(ggplot2)

# Create a bar plot with a DOYPAColors palette
ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_doypa(type = "qual", discrete = TRUE) +
  theme_minimal() +
  labs(title = "Bar Plot with DOYPAColors")

## -----------------------------------------------------------------------------
# Apply a palette with a specific number of colors
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_doypa(palette = "buzz", n = 3, discrete = TRUE) +
  theme_classic()

## ----fig.show="hold", out.width="50%"-----------------------------------------
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_doypa(palette = "buzz", reverse = TRUE, discrete = TRUE) +
  theme_classic() +
  ggtitle("Palette Reversed")

ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_doypa(palette = "buzz", n = 3, reverse = TRUE, discrete = TRUE) +
  theme_classic() +
  ggtitle("Palette Reversed (n = 3)")

## -----------------------------------------------------------------------------
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_doypa(palette = "buzz", gradient = TRUE, discrete = TRUE) +
  theme_classic()

