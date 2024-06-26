% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/B_CombineDadaOutput.R
\name{combine_dada_output}
\alias{combine_dada_output}
\title{Combine Dada Output}
\usage{
combine_dada_output(fileLoc = NULL, minLen = 100, verbose = TRUE)
}
\arguments{
\item{fileLoc}{Select a file in the file folder with dada_implement() results you would
like to combine (YYYY_MM_DD_HHMM_FileName_MergeFwdRev OR
YYYY_MM_DD_HHMM_FileName_Merge both .tsv and .fas files (Default NULL).}

\item{minLen}{The minimum final desired length of the read (Default 100).}

\item{verbose}{If set to TRUE then there will be output to the R console, if
FALSE then this reporting data is suppressed (Default TRUE).}
}
\value{
The output from this function includes three files.
1. YYYY_MM_DD_HHMM_combinedDada.tsv - combined ASV table
2. YYYY_MM_DD_HHMM_combinedDada.fas - combined fasta file
3. YYYY_MM_DD_HHMM_combinedDada.txt - Summary file from the combine_dada_output run
}
\description{
This function uses DBTC dada_implement ASV output files
(YYYY_MM_DD_HH_MM_UserInputRunName_Merge,
YYYY_MM_DD_HH_MM_UserInputRunName_MergeFwdRev, and/or
YYYY_MM_DD_HH_MM_UserInputRunName_TotalTable) and combines them into a single
ASV table with accompanying fasta file. This function also produces a file
containing the processing information for the function. The main input
argument for this function is the location of a file in a folder containing
all ASV tables wanting to be combined. Output files are generated with the
naming convention YYYY_MM_DD_HH_MM_combinedDada.
}
\details{
Two or more files to be combined are required as input for this function.
These files need to be ASV files as outputted from the dada_implement() and
can include Merge, MergeFwdRev, or TotalTable.tsv files.
In addition, the user can input the desired minimum length of sequences that
are wanted in the output combined file.

The examples are present to display the syntax for the function.
These examples are not run because there are files required to run the functions,
in some cases multiple files are necessary and some of these are quite large. To
get specific examples please see https://github.com/rgyoung6/DBTCShinyTutorial/blob/main/README.md
}
\note{
WARNING - NO WHITESPACE!

When running DBTC functions the paths for the files selected cannot have white
space! File folder locations should be as short as possible (close to the root
as some functions do not process long naming conventions.

Also, special characters should be avoided (including question mark, number
sign, exclamation mark). It is recommended that dashes be used for separations
in naming conventions while retaining underscores for use as information
delimiters (this is how DBTC functions use underscore).

There are several key character strings used in the DBTC pipeline, the presence
of these strings in file or folder names will cause errors when running DBTC functions.

The following strings are those used in DBTC and should not be used in file or folder naming:
- _BLAST
- _combinedDada
- _taxaAssign
- _taxaAssignCombined
- _taxaReduced
- _CombineTaxaReduced
}
\examples{
\dontrun{
combine_dada_output()
combine_dada_output(fileLoc = NULL, minLen = 100)
}

}
\references{
<https://github.com/rgyoung6/DBTC>
Young, R. G., Hanner, R. H. (Submitted October 2023). Dada-BLAST-Taxon Assign-Condense
Shiny Application (DBTCShiny). Biodiversity Data Journal.
}
\seealso{
dada_implement()
make_BLAST_DB()
seq_BLAST()
taxon_assign()
combine_assign_output()
reduce_taxa()
combine_reduced_output()
}
\author{
Robert G. Young
}
