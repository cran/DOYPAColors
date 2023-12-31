% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DOYPAColors_functions.R
\name{scale_fill_doypa}
\alias{scale_fill_doypa}
\title{Fill scale for ggplot2 with DOYPAColors color palettes}
\usage{
scale_fill_doypa(
  palette = NULL,
  n = NULL,
  reverse = FALSE,
  ramp = FALSE,
  discrete = FALSE,
  ...
)
}
\arguments{
\item{palette}{Character string specifying the desired palette name.
Available palettes: list_doypa_pals().}

\item{n}{Number of colors needed.}

\item{reverse}{Boolean indicating whether to reverse the order of colors in the palette (default: FALSE).}

\item{ramp}{Boolean indicating whether to use a color ramp (gradient) or a vector of colors (default: FALSE).}

\item{discrete}{Boolean indicating whether to generate a discrete or continuous palette (default: continuous).}

\item{...}{Additional parameters to pass to ggplot2's scale_fill functions.}
}
\value{
A `ggplot2` fill scale suitable for adding to a `ggplot2` object to control fill aesthetics.
}
\description{
This function sets the fill scale for ggplot2 using DOYPAColors color palettes.
}
\examples{
library(ggplot2)

# Discrete data
data(iris)
disc <- ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() + theme_classic()
disc <- disc + scale_fill_doypa(palette = "buzz", discrete = TRUE)
print(disc)

# Continuous data
cont <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) + 
  geom_tile() + theme_classic()
cont <- cont + scale_fill_doypa(palette = "buzz")
print(cont)
}
