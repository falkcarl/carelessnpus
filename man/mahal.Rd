% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mahal.R
\name{mahal}
\alias{mahal}
\title{Mahalanobis distance}
\usage{
mahal(x, ref, mu = NULL, sig = NULL, missargs = NULL)
}
\arguments{
\item{x}{data (matrix or dataframe) of interest.}

\item{ref}{reference sample (matrix or dataframe). Must have same number of columns as \code{x}.}

\item{mu}{(Optional) Vector of means that could be used instead of the reference sample.}

\item{sig}{(Optional) Covariance matrix that could be used instead of the reference sample.}

\item{missargs}{(Experimental/Optional) A list of arguments for handling missing data. Currently
a list of two elements \code{missingmethod} and \code{idx_nonmiss} are accepted. Details will
later document how these work. This part is likely to change and only handles missing
values in the reference sample.}
}
\value{
Vector of Mahalanobis distances.
}
\description{
Calculates the Mahalanobis distance with respect to some reference sample.
}
\details{
Computes Mahalanobis distance for each row in \code{x} based on either the
references sample in \code{ref} or the means and covariance matrix in \code{mu}
and \code{sig}. Larger values of Mahalanobis distance are often thought to be
indicative of multivariate outliers or careless responders. Values at the
centroid of the means/covariances have a value of 0 (the ideal point).
}
\examples{
x = cnrexample1[1:10,]
anchor = cnrexample1[-(1:10),]
mahal(x, anchor) # mahalanobis distance of x wrt to anchor
}
\seealso{
\code{\link[stats]{mahalanobis}}
}
