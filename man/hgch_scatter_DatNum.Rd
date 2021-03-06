% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hgch_scatter_DatNum.R
\name{hgch_scatter_DatNum}
\alias{hgch_scatter_DatNum}
\title{Scatter chart Dat Num}
\usage{
hgch_scatter_DatNum(data, ...)
}
\arguments{
\item{data}{A data frame, data frame extension (e.g. a tibble), a
lazy data frame (e.g. from dbplyr or dtplyr), or fringe data (e.g from homodatum).}

\item{...}{Read \code{\link[dsvizopts]{chart_viz_options}} a general options summary to configure your hgchmagic plots
and <\code{\link[=hgch_scatter_options]{scatter-options}}> which specifically contains the additional arguments
that work only for this type of chart.}
}
\description{
\code{hgch_scatter_DatNum()} Create a highcharter scatter plot based on a particular data type.
In this case, you can load data with only two columns,  where the firts is a
\strong{date column}, and second is a \strong{numeric column}, or be sure that two firts columns they meet this condition
}
\section{Ftype}{

Dat-Num
}

\examples{
data <- sample_data("Dat-Num", n = 30)
hgch_scatter_DatNum(data)

# data with more of one column
data <- sample_data("Dat-Num-Dat-Cat-Cat", n = 30)
hgch_scatter_DatNum(data)

}
\seealso{
Other Dat-Num plots: 
\code{\link{hgch_area_DatNum}()},
\code{\link{hgch_line_DatNum}()}
}
\concept{Dat-Num plots}
