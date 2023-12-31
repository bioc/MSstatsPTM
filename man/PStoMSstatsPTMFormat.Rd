% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/converters.R
\name{PStoMSstatsPTMFormat}
\alias{PStoMSstatsPTMFormat}
\title{Convert Peaks Studio output into MSstatsPTM format}
\usage{
PStoMSstatsPTMFormat(
  input,
  annotation,
  input_protein = NULL,
  annotation_protein = NULL,
  use_unmod_peptides = FALSE,
  target_modification = NULL,
  remove_oxidation_peptides = FALSE,
  remove_multi_mod_types = FALSE,
  summaryforMultipleRows = max,
  use_log_file = TRUE,
  append = FALSE,
  verbose = TRUE,
  log_file_path = NULL
)
}
\arguments{
\item{input}{name of Peaks Studio PTM output}

\item{annotation}{name of annotation file which includes Raw.file, Condition,
BioReplicate, Run. For example annotation see example below.}

\item{input_protein}{name of Peaks Studio unmodified protein output
(optional)}

\item{annotation_protein}{name of annotation file which includes Raw.file,
Condition,
BioReplicate, Run for unmodified protein output.}

\item{use_unmod_peptides}{Boolean if the unmodified peptides in the input
file should be used to construct the unmodified protein output. Only used if
\code{input_protein} is not provided. Default is \code{FALSE}}

\item{target_modification}{Character name of modification of interest. To
use all mod types, leave as \code{NULL}. Default is \code{NULL}. Note that if the name
includes special characters, you must include "\\" before the characters. Ex.
"Phosphorylation \\(STY\\)"}

\item{remove_oxidation_peptides}{Boolean if Oxidation (M) modifications
should be removed. Default is \code{FALSE}}

\item{remove_multi_mod_types}{Used if \code{target_modification} is not \code{NULL}.
\code{TRUE} will remove peptides with multiple types of modifications
(ie acetylation and phosphorylation). \code{FALSE} will keep these peptides and
summarize them seperately.}

\item{summaryforMultipleRows}{max(default) or sum - when there are multiple
measurements for certain feature and certain run, use highest or sum of
multiple intensities.}

\item{use_log_file}{logical. If TRUE, information about data processing will
be saved to a file.}

\item{append}{logical. If TRUE, information about data processing will be
added to an existing log file.}

\item{verbose}{logical. If TRUE, information about data processing wil be
printed to the console.}

\item{log_file_path}{character. Path to a file to which information about
data processing will be saved. If not provided, such a file will be created
automatically. If 'append = TRUE', has to be a valid path to a file.}
}
\value{
\code{list} of \code{data.table}
}
\description{
Currently only supports label-free quantification.
}
\examples{
# The output should be in the following format.
head(raw.input$PTM)
head(raw.input$PROTEIN)
}
