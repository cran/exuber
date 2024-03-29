% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radf_wb.R
\name{radf_wb_cv}
\alias{radf_wb_cv}
\alias{radf_wb_distr}
\title{Wild Bootstrap Critical Values}
\usage{
radf_wb_cv(data, minw = NULL, nboot = 500L, dist_rad = FALSE, seed = NULL)

radf_wb_distr(data, minw = NULL, nboot = 500L, dist_rad = FALSE, seed = NULL)
}
\arguments{
\item{data}{A univariate or multivariate numeric time series object, a numeric
vector or matrix, or a data.frame. The object should not have any NA values.}

\item{minw}{A positive integer. The minimum window size (default =
\eqn{(0.01 + 1.8/\sqrt(T))T}{(0.01 + 1.8 / \sqrtT)T}, where T denotes the sample size).}

\item{nboot}{A positive integer. Number of bootstraps (default = 500L).}

\item{dist_rad}{Logical. If TRUE then the Rademacher distribution will be used.}

\item{seed}{An object specifying if and how the random number generator (rng)
should be initialized. Either NULL or an integer will be used in a call to
\code{set.seed} before simulation. If set, the value is saved as "seed" attribute
of the returned value. The default, NULL, will not change rng state, and
return .Random.seed as the "seed" attribute. Results are different between
the parallel and non-parallel option, even if they have the same seed.}
}
\value{
For \code{radf_wb_cv} a list that contains the critical values for the ADF,
BADF, BSADF and GSADF tests. For \code{radf_wb_distr} a list that
contains the ADF, SADF and GSADF distributions.
}
\description{
\code{radf_wb_cv} performs the Harvey et al. (2016) wild bootstrap re-sampling
scheme, which is asymptotically robust to non-stationary volatility, to
generate critical values for the recursive unit root tests. \code{radf_wb_distr}
computes the distribution.
}
\details{
This approach involves applying a wild bootstrap re-sampling scheme
to construct the bootstrap analogue of the Phillips et al. (2015) test which
is asymptotically robust to non-stationary volatility.
}
\examples{
\donttest{
# Default minimum window
wb <- radf_wb_cv(sim_data)

tidy(wb)

# Change the minimum window and the number of bootstraps
wb2 <- radf_wb_cv(sim_data, nboot = 600, minw = 20)

tidy(wb2)

# Simulate distribution
wdist <- radf_wb_distr(sim_data)

autoplot(wdist)
}
}
\references{
Harvey, D. I., Leybourne, S. J., Sollis, R., & Taylor, A. M. R.
(2016). Tests for explosive financial bubbles in the presence of
non-stationary volatility. Journal of Empirical Finance, 38(Part B), 548-574.

Phillips, P. C. B., Shi, S., & Yu, J. (2015). Testing for
Multiple Bubbles: Historical Episodes of Exuberance and Collapse in the
S&P 500. International Economic Review, 56(4), 1043-1078.
}
\seealso{
\code{\link{radf_mc_cv}} for Monte Carlo critical values and
\code{\link{radf_sb_cv}} for sieve bootstrap critical values.
}
