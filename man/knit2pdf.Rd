\name{knit2pdf}
\alias{knit2pdf}
\title{Convert Rnw or Rrst files to PDF using knit() and texi2pdf() or rst2pdf()}
\usage{
knit2pdf(input, output = NULL, compiler = NULL, envir = parent.frame(), quiet = FALSE, 
    encoding = getOption("encoding"), ...)
}
\arguments{
\item{compiler}{a character string which gives the LaTeX program used to
compile the tex document to PDF (by default it uses the default setting of
\code{\link[tools]{texi2pdf}}, which is often PDFLaTeX); this argument will
be used to temporarily set the environmental variable \samp{PDFLATEX}. For
an Rrst file, setting compiler to \code{'rst2pdf'} will use
\code{\link{rst2pdf}} to compiles the rst file to PDF using the ReportLab
open-source library.}

\item{...}{options to be passed to \code{\link[tools]{texi2pdf}} or
\code{\link{rst2pdf}}}

\item{input}{path of the input file}

\item{output}{path of the output file for \code{knit()}; if \code{NULL}, this
function will try to guess and it will be under the current working
directory}

\item{envir}{the environment in which the code chunks are to be evaluated
(can use \code{\link{new.env}()} to guarantee an empty new environment)}

\item{quiet}{whether to suppress the progress bar and messages}

\item{encoding}{the encoding of the input file; see \code{\link{file}}}
}
\value{
The filename of the PDF file.
}
\description{
Knit the input Rnw or Rrst document, and compile to PDF using \code{texi2pdf}
or \code{rst2pdf}.
}
\note{
The \code{output} argument specifies the output filename to be passed
  to the PDF compiler (e.g. a tex document) instead of the PDF filename.
}
\examples{
#' compile with xelatex
## knit2pdf(..., compiler = 'xelatex')

#' compile a reST file with rst2pdf
## knit2pdf(..., compiler = 'rst2pdf')
}
\author{
Ramnath Vaidyanathan, Alex Zvoleff and Yihui Xie
}
\seealso{
\code{\link{knit}}, \code{\link[tools]{texi2pdf}},
  \code{\link{rst2pdf}}
}
