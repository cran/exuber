% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radf-autoplot.R
\name{scale_exuber_manual}
\alias{scale_exuber_manual}
\alias{theme_exuber}
\title{Exuber scale and theme functions}
\usage{
scale_exuber_manual(
  color_values = c("red", "blue"),
  linetype_values = c(2, 1),
  size_values = c(0.8, 0.7)
)

theme_exuber(
  base_size = 11,
  base_family = "",
  base_line_size = base_size/22,
  base_rect_size = base_size/22
)
}
\arguments{
\item{color_values}{a set of color values to map data values to.}

\item{linetype_values}{a set of linetype values to map data values to.}

\item{size_values}{a set of size values to map data values to.}

\item{base_size}{base font size, given in pts.}

\item{base_family}{base font family}

\item{base_line_size}{base size for line elements}

\item{base_rect_size}{base size for rect elements}
}
\description{
\code{scale_exuber_manual} allows specifying the color, size and linetype in
\code{autoplot.radf_obj} mappings. \code{theme_exuber} is a complete theme which control
all non-data display.
}
