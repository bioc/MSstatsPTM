% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataSummarizationPTM_TMT.R
\name{dataSummarizationPTM_TMT}
\alias{dataSummarizationPTM_TMT}
\title{Data summarization function for TMT labelled MS experiments targeting PTMs.}
\usage{
dataSummarizationPTM_TMT(
  data,
  method = "msstats",
  global_norm = TRUE,
  global_norm.PTM = TRUE,
  reference_norm = TRUE,
  reference_norm.PTM = TRUE,
  remove_norm_channel = TRUE,
  remove_empty_channel = TRUE,
  MBimpute = TRUE,
  MBimpute.PTM = TRUE,
  maxQuantileforCensored = NULL,
  use_log_file = TRUE,
  append = FALSE,
  verbose = TRUE,
  log_file_path = NULL
)
}
\arguments{
\item{data}{Name of the output of MSstatsPTM converter function or
peptide-level quantified data from other tools. It should be a list
containing one or two data tables, named PTM and PROTEIN for modified and
unmodified datasets. The list must at least contain the PTM dataset. The data
should have columns ProteinName, PeptideSequence, Charge, PSM, Mixture,
TechRepMixture, Run, Channel, Condition, BioReplicate, Intensity}

\item{method}{Four different summarization methods to protein-level can be
performed : "msstats"(default), "MedianPolish", "Median", "LogSum".}

\item{global_norm}{Global median normalization on for unmodified peptide
level data (equalizing the medians across all the channels and MS runs).
Default is TRUE. It will be performed before protein-level summarization.}

\item{global_norm.PTM}{Same as above for modified peptide level data. Default
is TRUE.}

\item{reference_norm}{Reference channel based normalization between MS runs
on unmodified protein level data. TRUE(default) needs at least one reference
channel in each MS run, annotated by 'Norm' in Condtion column. It will be
performed after protein-level summarization. FALSE will not perform this
normalization step. If data only has one run, then reference_norm=FALSE.}

\item{reference_norm.PTM}{Same as above for modified peptide level data.
Default is TRUE.}

\item{remove_norm_channel}{TRUE(default) removes 'Norm' channels from
protein level data.}

\item{remove_empty_channel}{TRUE(default) removes 'Empty' channels from
protein level data.}

\item{MBimpute}{only for method="msstats". TRUE (default) imputes missing
values by Accelated failure model. FALSE uses minimum value to impute the
missing value for each peptide precursor ion.}

\item{MBimpute.PTM}{Same as above for modified peptide level data. Default is
TRUE}

\item{maxQuantileforCensored}{We assume missing values are censored.
maxQuantileforCensored is Maximum quantile for deciding censored missing
value, for instance, 0.999. Default is Null.}

\item{use_log_file}{logical. If TRUE, information about data processing
will be saved to a file.}

\item{append}{logical. If TRUE, information about data processing will be
added to an existing log file.}

\item{verbose}{logical. If TRUE, information about data processing will be
printed to the console.}

\item{log_file_path}{character. Path to a file to which information about
data processing will be saved.
If not provided, such a file will be created automatically.
If \code{append = TRUE}, has to be a valid path to a file.}
}
\value{
list of two data.tables
}
\description{
Utilizes functionality from MSstatsTMT to clean, summarize, and
normalize PTM and protein level data. Imputes missing values, performs
normalization, and summarizes data. PTM data is summarized up to the
modification and protein data is summarized up to the protein level. Takes
as input the output of the included converters (see included \code{raw.input.tmt}
data object for required input format).
}
\examples{
head(raw.input.tmt$PTM)
head(raw.input.tmt$PROTEIN)

quant.tmt.msstatsptm = dataSummarizationPTM_TMT(raw.input.tmt,
                                                 method = "msstats", 
                                                 verbose = FALSE)
head(quant.tmt.msstatsptm$PTM$ProteinLevelData)
}
