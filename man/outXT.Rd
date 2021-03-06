\name{outXT}
\alias{outXT}
\title{Create LaTeX or CSV versions of an Object Produced by CrossTable}
\description{\code{outXT} takes the output from \code{CrossTable} in the \code{gmodels} package and produces either LaTeX code or CSV file that can be imported into word processing software. }
\usage{
	outXT(obj, count=TRUE, prop.r = TRUE, prop.c = TRUE, prop.t = TRUE, 
		col.marg=TRUE, row.marg=TRUE, digits = 3, type = "word", file=NULL)
}
\arguments{
  \item{obj}{A list returned by \code{CrossTable} from the \code{gmodels} package.}
  \item{count}{Logical indicating whether the cell frequencies should be returned.}
  \item{prop.r}{Logical indicating whether the row proportions should be returned.}
  \item{prop.c}{Logical indicating whether the column proportions should be returned.}
  \item{prop.t}{Logical indicating whether the cell proportions should be returned.}
  \item{col.marg}{Logical indicating whether the column marginals should be printed.}	
  \item{row.marg}{Logical indicating whether the row marginals should be printed.}	
  \item{digits}{Number of digits to use in printing the proportions.}
  \item{type}{String where \code{word} indicates a CSV file will be produced and \code{latex} indicates LaTeX code will be generated.}
  \item{file}{Connection where the file will be written, if \code{NULL} the output will only be written to the console}.
}
\value{
A file containing LaTeX Code or CSV data to make a table
}
\author{Dave Armstrong}
