% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exuber-package.r
\docType{package}
\name{exuber}
\alias{exuber}
\alias{exuber-package}
\title{exuber: Econometric Analysis of Explosive Time Series}
\description{
\if{html}{\figure{logo.png}{options: style='float: right' alt='logo' width='120'}}

Testing for and dating periods of explosive dynamics (exuberance) in time series using the univariate and panel recursive unit root tests proposed by Phillips et al. (2015) \doi{10.1111/iere.12132} and Pavlidis et al. (2016) \doi{10.1007/s11146-015-9531-2}.The recursive least-squares algorithm utilizes the matrix inversion lemma to avoid matrix inversion which results in significant speed improvements. Simulation of a variety of periodically-collapsing bubble processes. Details can be found in Vasilopoulos et al. (2022) \doi{10.18637/jss.v103.i10}.
}
\section{Package options}{

\code{exuber.show_progress}
\itemize{
\item Should lengthy operations such as \code{radf_mc_cv()} show a progress bar? Default: TRUE
}

\code{exuber.parallel}
\itemize{
\item Should lengthy operations use parallel computation? Default: TRUE
}

\code{exuber.ncores}
\itemize{
\item How many cores to use for parallel computation. Default: system cores - 1
}

\code{exuber.global_seed}
\itemize{
\item When chosen automatically feeds into all functions with random-number generation. Default: NA
}
}

\seealso{
Useful links:
\itemize{
  \item \url{https://github.com/kvasilopoulos/exuber}
  \item Report bugs at \url{https://github.com/kvasilopoulos/exuber/issues}
}

}
\author{
\strong{Maintainer}: Kostas Vasilopoulos \email{k.vasilopoulo@gmail.com}

Authors:
\itemize{
  \item Efthymios Pavlidis \email{e.pavlidis@lancaster.ac.uk}
  \item Enrique Martínez-García \email{emg.economics@gmail.com}
  \item Simon Spavound \email{simon.spavound@googlemail.com}
}

}
\keyword{internal}
