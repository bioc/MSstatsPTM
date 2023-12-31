% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/designSampleSizePTM.R
\name{.getNumSamplePTM}
\alias{.getNumSamplePTM}
\title{Get sample size for PTM experiment}
\usage{
.getNumSamplePTM(
  desiredFC,
  power,
  alpha,
  delta,
  ptm_median_sigma_error,
  protein_median_sigma_error,
  ptm_median_sigma_subject,
  protein_median_sigma_subject
)
}
\arguments{
\item{desiredFC}{the range of a desired fold change which includes the lower
and upper values of the desired fold change.}

\item{power}{a pre-specified statistical power which defined as the probability
of detecting a true fold change. TRUE represent you require to calculate the power
for this category, else you should input the average of power you expect. Default is 0.9}
}
\value{
\code{int} of samples
}
\description{
Get sample size for PTM experiment
}
\keyword{internal}
