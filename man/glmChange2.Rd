\name{glmChange2}
\alias{glmChange2}
\alias{print.glmc2}
\title{Maximal First Differences for Generalized Linear Models}
\description{For objects of class \code{glm}, it calculates the change in predicted responses, for discrete changes in a covariate holding all other variables at their observed values.}
\usage{
glmChange2(obj, varname, data, change=c("unit", "sd"), R=1500)
}
\arguments{
  \item{obj}{A model object of class \code{glm}.}
  \item{varname}{Character string giving the variable name for which average effects are to be calculated.}
  \item{data}{Data frame used to fit \code{object}.}
  \item{change}{A string indicating the difference in predictor values to calculate the discrete change.  \code{sd} gives plus and minus one-half standard deviation change around the median and \code{unit} gives a plus and minus one-half unit change around the median.}
  \item{R}{Number of simulations to perform.}
}
\details{
The function calculates the average change in predicted probabiliy for a discrete change in a single covariate with all other variables at their observed values, for objects of class \code{glm}.  This function works with polynomials specified with the \code{poly} function.  
}
\value{
\item{res}{A vector of values giving the average and 95 percent confidence bounds}
\item{ames}{The average change in predicted probability (across all N observations) for each of the R simulations.}
\item{avesamp}{The average change in predicted probability for each of the N observation (across all of the R simulations). }
}
\author{Dave Armstrong}
\examples{
data(france)
left.mod <- glm(voteleft ~ male + age + retnat + 
	poly(lrself, 2), data=france, family=binomial)
glmChange2(left.mod, "age", data=france, "sd")
}