\name{cv.lo2}
\alias{cv.lo2}
\title{Cross-validating Loess curve}
\description{Function provides the cross-validation error for the loess curve in a manner that is amenable to optimization of the span. }
\usage{
cv.lo2(span, form, data, cost = function(y, yhat) mean((y - yhat)^2, na.rm=T), 
    K = n, numiter = 100, which=c("corrected", "raw"))
}
\arguments{
  \item{span}{The span of the loess smoother.}
  \item{form}{The formula that identifies the model}
  \item{data}{A data frame containing the required variables.}
  \item{cost}{Cost function to be passed down to loess.}
  \item{K}{Number of folds for the cross-validation}
  \item{numiter}{Number of times over which the cv error will be aggregated}
  \item{which}{Return raw or corrected cv error}
}
\value{
	The cross-validation error from the loess curve. 
}
\author{Dave Armstrong}
