\name{probci}
\alias{probci}
\title{Confidence Intervals for Predicted Probabilities and Their Differences}
\description{Calculates predicted probabilities for any combination of x-variable values holding all other variables constant at either typical values (average case approach) or at observed values (average effect approach).}
\usage{
probci(obj, data, .vcov=NULL, changeX=NULL, numQuantVals=5, xvals = NULL, type=c("aveEff", "aveCase")
}
\arguments{
  \item{obj}{A model of class \code{glm}, particularly those with \code{binomial} family.}
  \item{data}{Data frame used to estimate \code{obj}.}
  \item{.vcov}{A parameter variance covariance matrix to be passed to the simulation.  If \code{NULL}, \code{vcov()} will be used to obtain the variance-covariance matrix of the parameters. }
  \item{changeX}{A vector of strings giving the names of variables for which changes are desired.}
  \item{numQuantVals}{For quantitative variables, if no x-values are specified in \code{xvals}, then \code{numQuantVals} gives the number of values used across the range of the variable.}
  \item{xvals}{A names list of values used to make the predictions.  The names in the list should correspond with the variable names specified in \code{changeX}.}
  \item{type}{Type of effect to be generated.  \code{aveEff} produces the average first difference across all observed values of \code{X}, while \code{aveCase} gives the first difference holding all other variables constant at typical values. }
  }
\details{Calculates predicted probabilities for any combination of x-variable values holding all other variables constant at either typical values (average case approach) or at observed values (average effect approach).  The function uses a parametric bootstrap to provide generate confidence bounds for predicted probabilities and their differences.  The confidence intervals produced are raw percentile interviews (at the 5\% level).  
}
\value{
An data frame with the following variables:
  \item{variables}{The variables and the values at which they are held constant.  For example, \code{tmp1} would be the first value of \code{tmp} used in the probability calculation and \code{tmp2} would be the second value of \code{tmp} used in the probability calculation. }
  \item{pred_prob}{The difference in predicted probability given the following change in \code{X}: \code{tmp2}-\code{tmp1}.}
  \item{lower, upper}{The lower and upper 95\% confidence bounds.}
}

\author{Dave Armstrong}
\examples{
data(france)
left.mod <- glm(voteleft ~ male + age + retnat + 
	poly(lrself, 2), data=france, family=binomial)
out <- probci(left.mod, france, changeX="retnat")
out
out2 <- probci(left.mod, france, changeX="lrself",
    xvals = list(lrself = c(1,10)))
out2
out3 <- probci(left.mod, france, changeX=c("lrself", "retnat"), 
    xvals = list(lrself = c(1,10)))
out3
}
