\name{oc2plot}
\alias{oc2plot}
\title{Plot First Differences from Ordinal DV Model}
\description{Takes the output from \code{\link{ordChange}} and turns it into a plot. }

\usage{
oc2plot(ordc, plot=TRUE)
}
\arguments{
  \item{ordc}{The output from \code{ordChange}.}
  \item{plot}{Logical indicating whether a plot (if \code{TRUE}) or data (if \code{FALSE}) should be returned.}
}  
\value{
Either a \code{lattice} plot or a \code{data.frame} depending on the specification of the \code{plot} argument. 
}
\author{Dave Armstrong}
\examples{
library(MASS)
data(france)
polr.mod <- polr(vote ~ age + male + retnat + lrself, data=france)
typical.france <- data.frame(
	age = 35, 
	retnat = factor(1, levels=1:3, labels=levels(france$retnat))
	)
oc.res <- ordChange(polr.mod, data=france, typical.dat=typical.france, sim=FALSE)	
oc2plot(oc.res)
}