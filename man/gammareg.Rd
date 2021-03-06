% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gammareg.R
\name{gammareg}
\alias{gammareg}
\title{Constant-Scale Gamma Model for Y vs. Covariates with Y Potentially Subject 
to Multiplicative Lognormal Errors}
\usage{
gammareg(y, x = NULL, merror = FALSE, integrate_tol = 1e-08,
  integrate_tol_hessian = integrate_tol, estimate_var = TRUE,
  fix_posdef = FALSE, ...)
}
\arguments{
\item{y}{Numeric vector.}

\item{x}{Numeric vector or matrix. If \code{NULL}, model reduces to marginal
Gamma model Y ~ Gamma(exp(beta_0), b).}

\item{merror}{Logical value for whether to model multiplicative lognormal 
measurement errors in Y.}

\item{integrate_tol}{Numeric value specifying the \code{tol} input to
\code{\link[cubature]{hcubature}}. Only used if \code{merror = TRUE}.}

\item{integrate_tol_hessian}{Same as \code{integrate_tol}, but for use when
estimating the Hessian matrix only. Sometimes more precise integration
(i.e. smaller tolerance) than used for maximizing the likelihood helps
prevent cases where the inverse Hessian is not positive definite.}

\item{estimate_var}{Logical value for whether to return Hessian-based
variance-covariance matrix.}

\item{fix_posdef}{Logical value for whether to repeatedly reduce
\code{integrate_tol_hessian} by factor of 5 and re-estimate Hessian to try
to avoid non-positive definite variance-covariance matrix.}

\item{...}{Additional arguments to pass to \code{\link[stats]{nlminb}}.}
}
\value{
List containing:
\enumerate{
\item Numeric vector of parameter estimates.
\item Variance-covariance matrix (if \code{estimate_var = TRUE}).
\item Returned \code{\link[stats]{nlminb}} object from maximizing the
log-likelihood function.
\item Akaike information criterion (AIC).
}
}
\description{
Uses maximum likelihood to fit
Y|\strong{X} ~ Gamma(exp(beta_0 + \strong{beta_x}^T \strong{X}), b), with the
shape-scale (as opposed to shape-rate) parameterization described in
\code{\link[stats]{GammaDist}}. Y can be precisely measured or subject to 
multiplicative mean-1 lognormal errors, in which case replicates can be 
incorporated by specifying \code{y} as a list.
}
