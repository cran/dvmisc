% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quant_groups_svy.R
\name{quant_groups_svy}
\alias{quant_groups_svy}
\title{Split Continuous Variable into Quantile Groups (Survey Version)}
\usage{
quant_groups_svy(x, by = NULL, groups = 4, probs = NULL, design)
}
\arguments{
\item{x}{Formula, e.g. \code{~varname}.}

\item{by}{Formula, e.g. \code{~varname}.}

\item{groups}{Numeric value specifying number of quantile groups.}

\item{probs}{Numeric vector.}

\item{design}{A \code{svydesign} or \code{svrepdesign} object.}
}
\value{
Factor variable.
}
\description{
Complex survey version of \code{\link{quant_groups}}. Speeds up process of 
creating quantile groups based on survey weighted percentiles.
}
