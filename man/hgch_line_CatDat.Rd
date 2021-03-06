% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hgch_line_CatDat.R
\name{hgch_line_CatDat}
\alias{hgch_line_CatDat}
\title{Line chart Cat Dat}
\usage{
hgch_line_CatDat(data, ...)
}
\arguments{
\item{data}{A data frame, data frame extension (e.g. a tibble), a
lazy data frame (e.g. from dbplyr or dtplyr), or fringe data (e.g from homodatum).}

\item{...}{Read \code{\link[dsvizopts]{chart_viz_options}} a general options summary to configure your hgchmagic plots
and <\code{\link[=hgch_line_options]{line-options}}> which specifically contains the additional arguments
that work only for this type of chart.}
}
\description{
\code{hgch_line_CatDat()} Create a highcharter line plot based on a particular data type.
In this case, you can load data with only three columns, where the firts column is a
\strong{categorical column}, and second is a \strong{date column},
or be sure that three firts columns they meet this condition.
}
\section{Ftype}{

Cat-Dat
}

\examples{
data <- sample_data("Cat-Dat", n = 30)
hgch_line_CatDat(data)

# Activate data labels
hgch_line_CatDat(data,
                       dataLabels_show = TRUE)

# data with more of one column
data <- sample_data("Cat-Dat-Dat-Dat-Cat", n = 30)
hgch_line_CatDat(data)

# Change variable to color and pallete type
hgch_line_CatDat(data,
                       color_by = names(data)[2],
                       palette_type = "sequential")

# Change tooltip info and add additional information contained in your data
names_data <- names(data)
info_tool <- paste0("<b>",names_data[1],":</b> {", names_data[1],"}<br/><b>", names_data[4],":</b> {", names_data[4],"}<br/>")
data \%>\%
 hgch_line_CatDat(tooltip = info_tool)

}
\seealso{
Other Cat-Dat plots: 
\code{\link{hgch_area_CatDat}()},
\code{\link{hgch_scatter_CatDat}()}
}
\concept{Cat-Dat plots}
