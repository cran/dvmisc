% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/n_2t_equal.R
\name{n_2t_equal}
\alias{n_2t_equal}
\title{Calculate Per-Group Sample Size for Two-Sample Equal Variance T-Test}
\usage{
n_2t_equal(d, sigsq, alpha = 0.05, beta = 0.2)
}
\arguments{
\item{d}{Numeric value specifying true difference in group means.}

\item{sigsq}{Numeric value specifying the variance of observations.}

\item{alpha}{Numeric value specifying type-1 error rate.}

\item{beta}{Numeric value specifying type-2 error rate.}
}
\value{
Numeric value indicating per-group sample size, rounded up to the
nearest whole number.
}
\description{
Same idea as \code{\link[stats]{power.t.test}}. Less flexible, but faster.
}
\examples{
# Per-group sample size for 90\% power to detect difference of 0.2 with
# sigsq = 1
n_2t_equal(d = 0.2, sigsq = 1, beta = 0.1)


}
