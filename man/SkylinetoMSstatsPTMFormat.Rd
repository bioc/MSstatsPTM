% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/converters.R
\name{SkylinetoMSstatsPTMFormat}
\alias{SkylinetoMSstatsPTMFormat}
\title{Convert Skyline output into MSstatsPTM format}
\usage{
SkylinetoMSstatsPTMFormat(
  input,
  fasta_path,
  fasta_protein_name = "uniprot_iso",
  annotation = NULL,
  input_protein = NULL,
  annotation_protein = NULL,
  use_unmod_peptides = FALSE,
  removeiRT = TRUE,
  filter_with_Qvalue = TRUE,
  qvalue_cutoff = 0.01,
  use_unique_peptide = TRUE,
  remove_few_measurements = FALSE,
  remove_oxidation_peptides = FALSE,
  removeProtein_with1Feature = FALSE,
  use_log_file = TRUE,
  append = FALSE,
  verbose = TRUE,
  log_file_path = NULL
)
}
\arguments{
\item{input}{name of Skyline PTM output}

\item{fasta_path}{A string of path to a FASTA file, used to match PTM peptides.}

\item{fasta_protein_name}{Name of fasta column that matches with protein name
in evidence file. Default is \code{uniprot_iso}.}

\item{annotation}{name of 'annotation.txt' data which includes Condition,
BioReplicate, Run. If annotation is already complete in Skyline, use
annotation=NULL (default). It will use the annotation information from input.}

\item{input_protein}{name of Skyline unmodified protein output (optional)}

\item{annotation_protein}{name of 'annotation.txt' data which includes Condition,
BioReplicate, Run for unmodified protein output. This can be the same as
\code{annotation}.}

\item{use_unmod_peptides}{Boolean if the unmodified peptides in the input
file should be used to construct the unmodified protein output. Only used if
\code{input_protein} is not provided. Default is \code{FALSE}.}

\item{removeiRT}{TRUE (default) will remove the proteins or peptides which
are labeld 'iRT' in 'StandardType' column. FALSE will keep them.}

\item{filter_with_Qvalue}{TRUE(default) will filter out the intensities that
have greater than qvalue_cutoff in DetectionQValue column. Those intensities
will be replaced with zero and will be considered as censored missing values
for imputation purpose.}

\item{qvalue_cutoff}{Cutoff for DetectionQValue. default is 0.01.}

\item{use_unique_peptide}{TRUE (default) removes peptides that are assigned
for more than one proteins. We assume to use unique peptide for each protein.}

\item{remove_few_measurements}{TRUE will remove the features that
have 1 or 2 measurements across runs. FALSE is default.}

\item{remove_oxidation_peptides}{TRUE will remove the peptides including
'oxidation (M)' in modification. FALSE is default.}

\item{removeProtein_with1Feature}{TRUE will remove the proteins which have
only 1 feature, which is the combination of peptide, precursor charge,
fragment and charge. FALSE is default.}

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
