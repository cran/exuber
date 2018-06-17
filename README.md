
<!-- README.md is generated from README.Rmd. Please edit that file -->

# exuber : Econometric Analysis of Explosive Time Series

[![Build
Status](https://travis-ci.org/kvasilopoulos/exuber.svg?branch=master)](https://travis-ci.org/kvasilopoulos/exuber)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/kvasilopoulos/exuber?branch=master&svg=true)](https://ci.appveyor.com/project/kvasilopoulos/exuber)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/exuber)](https://cran.r-project.org/package=exuber)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![codecov](https://codecov.io/gh/kvasilopoulos/exuber/branch/master/graph/badge.svg)](https://codecov.io/gh/kvasilopoulos/exuber)

## Description

Testing for and dating periods of explosive dynamics (exuberance) in
time series using recursive unit root tests as proposed by Phillips, P.
C., Shi, S. and Yu, J. (2015a) \<:10.1111/iere.12132\>. Simulate a
variety of periodically-collapsing bubble models. The estimation and
simulation utilize the matrix inversion lemma from the recursive least
squares algorithm, which results in a significant speed improvement.

## Overview

  - `radf()` : Recursive Augmented Dickey-Fuller test
  - `mc_cv()` : Monte Carlo Critical Values
  - `wb_cv()` : Wild Bootstrap Critical values

## Installation

The package is still under development, to install the development
version from GitHub:

``` r
if(!require(devtools)) install.packages("devtools")
devtools::install_github("kvasilopoulos/exuber")
```

Note that development version requires compilation, so to install you
will need the appropriate development tools.

  - Window Users should install
    [Rtools](https://cran.r-project.org/bin/windows/Rtools/)
  - Mac User should install [Clang or GNU
    Fortran](https://cran.r-project.org/bin/macosx/tools/)

If you encounter a clear bug, please file a reproducible example on
[GitHub](https://github.com/kvasilopoulos/exuber/issues).

## Usage

This is a basic example which shows you how to use exuber:

``` r
library(exuber)
# Simulate data witn n = 100 observations
set.seed(123)
a1 <- sim_dgp1(n = 100) # one bubble
a2 <- sim_dgp2(n = 100) # two bubbles
a3 <- sim_blan(n = 100) # blanchard model
a4 <- sim_evans(n = 100) # evans model

dta <- data.frame("oneb" = a1, "twob" = a2, "blan" = a3, "evans" = a4)

ts <- radf(dfrm, lag = 1)

# Critical Values mc = Monte Carlo, wb= Wild Bootstrapped
## Use 500 repetions(boostraps) for faster computation
mc <- mc_cv(n = NROW(dta), nrep = 500, parallel = T)
wb <- wb_cv(dta, nboot = 500, parallel = T)
```

### Report

Report summary statistics, diagnostics and date stamping periods of
mildly explosive behaviour.

``` r
report(ts, mc)
diagnostics(ts, mc)
datestamp(ts, mc)
```

### Plotting

The output of plot will be a list,

``` r
# All together
plot(ts, mc, plot_type = "single", breaks_x = 20)

# Individually
plot(ts, mc, plot_type = "multiple", breaks_x = 20)

library(gridExtra)
p1 <- plot(ts, mc, plot_type = "multiple", breaks_x = 20, breaks_y = 3)
do.call("grid.arrange", c(p1, ncol = 2))
```

-----

Please note that this project is released with a [Contributor Code of
Conduct](https://github.com/kvasilopoulos/exuber/blob/master/CONDUCT.md).
By participating in this project you agree to abide by its terms.
