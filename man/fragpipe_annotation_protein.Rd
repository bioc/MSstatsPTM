% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataDoc.R
\docType{data}
\name{fragpipe_annotation_protein}
\alias{fragpipe_annotation_protein}
\title{Example annotation file for a global profiling run TMT FragPipe experiment.}
\format{
A data.table with 7 columns.
}
\usage{
fragpipe_annotation_protein
}
\description{
Automatically created by FragPipe, manually checked by the user and input
into the FragPipetoMSstatsPTMFormat converter. Requires the correct columns
and maps the experimental desing into the MSstats format. Specify unique
bioreplicates for group comparison designs, and the same bioreplicate for
repeated measure designs. The columns and descriptions are below.
}
\details{
\itemize{
\item Run : Run name that matches exactly with FragPipe run. Used to join
evidence and metadata in annotation file.
\item Fraction : If multiple fractions were used (i.e. the same mixture
split into multiple fractions) enter that here.
TechRepMixture : Multiple runs using the same bioreplicate
\item Channel : Mixture channel used
\item Condition : Name of condition that was used for each run.
\item Mixture : The unique mixture (plex) name
\item BioReplicate : Name of biological replicate. Repeating the same name
here will tell MSstatsPTM that the experiment is a repeated measure design.
}
}
\examples{
head(fragpipe_annotation_protein)
}
\keyword{datasets}
