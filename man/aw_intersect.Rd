% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aw_intersect.R
\name{aw_intersect}
\alias{aw_intersect}
\title{Intersect Source and Target Data}
\usage{
aw_intersect(.data, source, areaVar)
}
\arguments{
\item{.data}{A \code{sf} object that data should be interpolated to}

\item{source}{A \code{sf} object with data to be interpolated}

\item{areaVar}{The name of the new area variable to be calculated.}
}
\value{
A \code{sf} object with the intersected data and new area field.
}
\description{
\code{aw_intersect} intersects the source and target datasets and
    computes a new area field for the intersected data using the units associated
    with whatever project the data are currently in. This is the first step in the
    interpolation process after data validation and subsetting.
}
\examples{
library(dplyr)

race <- select(ar_stl_race, GEOID, TOTAL_E)
wards <- select(ar_stl_wards, WARD)

aw_intersect(wards, source = race, areaVar = "area")

}
