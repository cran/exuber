% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radf-methods.R
\name{summary.radf_obj}
\alias{summary.radf_obj}
\title{Summarizing \code{radf} models}
\usage{
\method{summary}{radf_obj}(object, cv = NULL, ...)
}
\arguments{
\item{object}{An object of class \code{radf_obj}. The output of \code{\link[=radf]{radf()}}.}

\item{cv}{An object of class \code{radf_cv}. The output of \code{\link[=radf_mc_cv]{radf_mc_cv()}},
\code{\link[=radf_wb_cv]{radf_wb_cv()}} or \code{\link[=radf_sb_cv]{radf_sb_cv()}}.}

\item{...}{Further arguments passed to methods. Not used.}
}
\value{
Returns a list of summary statistics, which include the estimated ADF,
SADF, and GSADF test statistics and the corresponding critical values
}
\description{
\code{summary} method for radf models that consist of \code{radf_obj} and \code{radf_cv}.
}
\examples{
\donttest{
# Simulate bubble processes, compute the test statistics and critical values
rsim_data <- radf(sim_data)

# Summary, diagnostics and datestamp (default)
summary(rsim_data)

#Summary, diagnostics and datestamp (wild bootstrap critical values)

wb <- radf_wb_cv(sim_data)

summary(rsim_data, cv = wb)

}
}
