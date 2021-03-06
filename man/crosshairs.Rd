% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crosshairs.R
\name{crosshairs}
\alias{cross-hairs}
\alias{crosshairs}
\title{Creates a Cross-hairs Plot.}
\usage{
crosshairs(x, y, xse, yse, x_lab = NULL, y_lab = NULL, main_lab = NULL,
  confint = 0.95, mdrtr = NULL, mdrtr_lab = NULL, mdrtr_lab_pos = c(0.2,
  0.9), lab_size = 14, pnt_size = 3, whis_on = TRUE, annotate = FALSE,
  grid_dense = FALSE, bxplts = TRUE)
}
\arguments{
\item{x}{Numeric vector of effect sizes that will be used in x axis.}

\item{y}{Numeric vector of effect sizes that will be used in y axis.}

\item{xse}{Numeric vector standard errors of effect sizes that is used
in x axis.}

\item{yse}{Numeric vector standard errors of the effect sizes that is used
in y axis}

\item{x_lab}{Title of the x-axis.}

\item{y_lab}{Title of the y-axis.}

\item{main_lab}{Main label of the cross-hairs plot.}

\item{confint}{Confidence interval that is used to determine
length of the whiskers.}

\item{mdrtr}{Whether there is a moderator variable?}

\item{mdrtr_lab}{Label of the moderator variable.}

\item{mdrtr_lab_pos}{Determine the positon of the moderator labels. Values
between 0.1 and 0.9 are allowed.}

\item{lab_size}{Size of the axis titles.}

\item{pnt_size}{Determines the size of point in the plot.}

\item{whis_on}{Whiskers on or off?}

\item{annotate}{If true, mean effect size and correlation between
effect sizes will be printed within the graph.}

\item{grid_dense}{When changed to FALSE, a default denser gridlines
will be used.}

\item{bxplts}{Swithes boxplots on or off.}
}
\description{
When given effect sizes and standard errors, creates cross-hairs plots.
}
\details{
\code{crosshairs}'s basic output is a bitmat file that contains cross-hairs
plot of given dependent effect sizes.
}
\examples{
\dontrun{
# Load and attach metaplotr package to the Global Environment
library(metaplotr)

# Remove all variables in the .GlobalEnv, effectively clearing .GlobalEvn
rm(list = ls())

# Find out more about the data set from Ferguson and Brannick (2012)
# help("FergusonBrannick2012")

# You can check out help file of the \\code{crosshairs} function.
# help(crosshairs)
}

# Basic usage of the \\code{crosshairs} function.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se)

\dontrun{
# whis_on option opens and closes whiskers.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
whis_on = FALSE)
}

# confint option can control whiskers length.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se, confint = .7)

crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se, confint = .2)
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se, confint = .95)

# Main and axes labels can be changed.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
main_lab = 'Different Main Label', x_lab = 'Different X Label',
y_lab = 'Different Y Label')

# Annotated correlation and meand values can be added to the graph.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se, annotate = TRUE,
main_lab = 'Annotated Graph')

# Boxplots can be hidden.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
main_lab = 'No Boxplots', bxplts = FALSE)

\dontrun{
# Moderator legend and annotations can be used simulaneously.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
mdrtr = FergusonBrannick2012$mod, annotate = TRUE,
main_lab = 'Moderator Legend and Annotation')

# Moderator legend position can be adjusted.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
mdrtr = FergusonBrannick2012$mod, mdrtr_lab_pos = c(0.8, 0.8),
main_lab = 'Moderator Legend Position Change')

# Dot size can be changed.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
mdrtr = FergusonBrannick2012$mod, pnt_size = 6,
main_lab = 'Bigger Dots')

# Size of labels can be changed.
crosshairs(FergusonBrannick2012$pub_z, FergusonBrannick2012$dis_z,
FergusonBrannick2012$pub_z_se, FergusonBrannick2012$dis_z_se,
mdrtr = FergusonBrannick2012$mod, lab_size = 20,
main_lab = 'Label Size Change')
}

}

