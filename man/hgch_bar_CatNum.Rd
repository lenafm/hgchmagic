% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hgch_bar_CatNum.R
\name{hgch_bar_CatNum}
\alias{hgch_bar_CatNum}
\title{Bar chart Cat Num}
\usage{
hgch_bar_CatNum(data, ...)
}
\arguments{
\item{data}{A data frame, data frame extension (e.g. a tibble), a
lazy data frame (e.g. from dbplyr or dtplyr), or fringe data (e.g from homodatum).}

\item{...}{Read \code{\link[dsvizopts]{chart_viz_options}} a general options summary to configure your hgchmagic plots
and <\code{\link[=hgch_bar_options]{bar-options}}> which specifically contains the additional arguments
that work only for this type of chart.}
}
\description{
\code{hgch_bar_CatNum()} Create a highcharter bar plot based on a particular data type.
In this case, you can load data with only two columns, where the firts column is a
\strong{categorical column} and the second must be  a \strong{numeric class column}, or be sure that
two firts columns they meet this condition
}
\section{Ftype}{

Cat-Num
}

\examples{
data <- sample_data("Cat-Num", n = 30)
hgch_bar_CatNum(data)

example with iris data
data <- iris \%>\% select(Species, Petal.Width)
# this plot show the sum of petal width by species
hgch_bar_CatNum(data)
# if you want to calculate the average instead of the sum,
# you can use "agg" param inside a function
hgch_bar_CatNum(data, agg = "mean")

# data with more of one column
data <- sample_data("Cat-Num-Dat-Cat-Cat", n = 30)
hgch_bar_CatNum(data)

# calculate percentage
hgch_bar_CatNum(data, percentage = TRUE)

# numeric format
hgch_bar_CatNum(data, percentage = TRUE, format_sample_num = "1.234,")

# You can call the mean and percentage in the tooltip plot
num_name <- names(data)[2]
data \%>\%
hgch_bar_CatNum(agg = "mean",
                tooltip = paste0("Average: {", num_name ,"} <br/> Percentage: {\%}\%"))
}
\seealso{
Other Cat-Num plots: 
\code{\link{hgch_donut_CatNum}()},
\code{\link{hgch_pie_CatNum}()},
\code{\link{hgch_treemap_CatNum}()}
}
\concept{Cat-Num plots}
