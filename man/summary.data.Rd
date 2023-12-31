% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataDoc.R
\docType{data}
\name{summary.data}
\alias{summary.data}
\title{Example of output from dataSummarizationPTM function for non-TMT data}
\format{
A list of two lists with four data.tables.
}
\usage{
summary.data
}
\description{
It is made from \code{\link{raw.input}}.
It is the output of dataSummarizationPTM function from MSstatsPTM.
It should include a list with two names \code{PTM} and \code{PROTEIN}. Each
of these list values is also a list with two names \code{ProteinLevelData}
and \code{FeatureLevelData}, which correspond to two data.tables.The columns
in these two data.tables are listed below. The variables are as follows:
\itemize{
\item FeatureLevelData : \itemize{
\item PROTEIN : Protein ID with modification site mapped in. Ex.
Protein_1002_S836
\item PEPTIDE : Full peptide with charge
\item TRANSITION: Charge
\item FEATURE : Combination of Protien, Peptide, and Transition Columns
\item LABEL :
\item GROUP : Condition (ex. Healthy, Cancer, Time0)
\item RUN : Unique ID for technical replicate of one TMT
mixture.
\item SUBJECT : Unique ID for biological subject.
\item FRACTION : Unique Fraction ID
\item originalRUN : Run name
\item censored :
\item INTENSITY : Unique ID for TMT mixture.
\item ABUNDANCE : Unique ID for TMT mixture.
\item newABUNDANCE : Unique ID for TMT mixture.
\item predicted : Unique ID for TMT mixture.
}
\item ProteinLevelData : \itemize{
\item RUN : MS run ID
\item Protein : Protein ID with modification site mapped in. Ex.
Protein_1002_S836
\item LogIntensities: Protein-level summarized abundance
\item originalRUN : Labeling information (126, ... 131)
\item GROUP : Condition (ex. Healthy, Cancer, Time0)
\item SUBJECT : Unique ID for biological subject.
\item TotalGroupMeasurements : Unique ID for technical replicate of one TMT
mixture.
\item NumMeasuredFeature : Unique ID for TMT mixture.
\item MissingPercentage : Unique ID for TMT mixture.
\item more50missing : Unique ID for TMT mixture.
\item NumImputedFeature : Unique ID for TMT mixture.
}

}
}
\examples{
head(summary.data)

}
\keyword{datasets}
