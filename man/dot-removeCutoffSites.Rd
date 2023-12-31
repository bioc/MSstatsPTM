% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_converters.R
\name{.removeCutoffSites}
\alias{.removeCutoffSites}
\title{Remove sites below cutoff probability}
\usage{
.removeCutoffSites(data, mod_pep_col, cutoff, remove_unlocalized_peptides)
}
\arguments{
\item{data}{data.table}

\item{mod_pep_col}{column in data with modified sites}

\item{cutoff}{numeric cutoff. Default is .75.}

\item{remove_unlocalized_peptides}{Boolean if to remove peptides that
could not be fully localized.}
}
\value{
data.table with modifications below cutoff removed
}
\description{
Remove sites below cutoff probability
}
\keyword{internal}
