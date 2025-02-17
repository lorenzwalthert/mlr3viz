% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TaskDens.R
\name{autoplot.TaskDens}
\alias{autoplot.TaskDens}
\title{Plot for Density Tasks}
\usage{
\method{autoplot}{TaskDens}(object, type = "dens", ...)
}
\arguments{
\item{object}{(\link[mlr3proba:TaskDens]{mlr3proba::TaskDens}).}

\item{type}{(\code{character(1)}):
Type of the plot. Available choices:
\itemize{
\item \code{"dens"}: histogram density estimator (default) with \code{\link[ggplot2:geom_histogram]{ggplot2::geom_histogram()}}.
\item \code{"freq"}: histogram frequency plot with \code{\link[ggplot2:geom_histogram]{ggplot2::geom_histogram()}}.
\item \code{"overlay"}: histogram with overlaid density plot with \code{\link[ggplot2:geom_histogram]{ggplot2::geom_histogram()}} and
\code{\link[ggplot2:geom_density]{ggplot2::geom_density()}}.
\item \code{"freqpoly"}: frequency polygon plot with \code{ggplot2::geom_freqpoly}.
}}

\item{...}{(\code{any}):
Additional arguments, possibly passed down to the underlying plot functions.}
}
\value{
\code{\link[ggplot2:ggplot]{ggplot2::ggplot()}} object.
}
\description{
Generates plots for \link[mlr3proba:TaskDens]{mlr3proba::TaskDens}.
}
\section{Theme}{

The \code{\link[=theme_mlr3]{theme_mlr3()}} and viridis color maps are applied by default to all
\code{autoplot()} methods. To change this behavior set
\code{options(mlr3.theme = FALSE)}.
}

\examples{
library(mlr3)
library(mlr3proba)
task = tsk("precip")

head(fortify(task))
autoplot(task, bins = 15)
autoplot(task, type = "freq", bins = 15)
autoplot(task, type = "overlay", bins = 15)
autoplot(task, type = "freqpoly", bins = 15)
}
