%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file was automatically generated by Rdoc on 2001-04-20 20:18:34.
% Do NOT modify this file, instead modify the source (sma/R/Rspatial.R).
% Rdoc is copyright (C) 2001, Henrik Bengtsson, henrikb@braju.com.
% Download the Rdoc compiler at http://www.braju.com/R/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{plot.spatial}

\alias{plot.spatial}
\alias{draw.image.func}
\alias{spatial.func}

\title{Spatial Representation of Microarray Spot Statistics}


\description{Creates an image of shades
of gray or colors, that represents the values of a statistic for each
spot on the array. The statistic can be a log intensity ratio, quality
information such as spot size or shape, or a t-statistic. This function
can be used to explore whether there are any spatial effects in the data.
}

\usage{
plot.spatial(x, layout, crit1=0.05, crit2=crit1, ...)
}

\arguments{
\item{x}{a numerical vector. This vector can contain any spot 
statistics, such
as log intensity ratios, spot sizes or shapes, or t-statistics.} 

\item{layout}{a list specifying the dimensions of the spot matrix
and the grid matrix. This can be generated by calling 
\code{\link{init.grid}}.}

\item{crit1}{the number of values from x to be displayed on the image. 
If crit1 < 1, the crit1*100\% spots with the largest x values are displayed.
If crit1 >= 1, the crit1 spots with the largest x values are displayed.}    

\item{crit2}{the number of values from x to be displayed on the
image. If crit2 < 1, the crit2*100\% spots with the largest x values
are displayed. If crit2 >= 1, the crit2 spots with the largest x
values are displayed.}    

\item{\dots}{graphical parameters may also be supplied as arguments 
to the function (see \code{\link{par}}).} 
}

\value{
An image is created on the current graphics device.
}

\details{The values that didn't meet the criteria are not shown on the image.
The image follows the layout of an actual microarray slide with the
top left corner representing the spot (1,1,1,1).}



\note{\code{\link{draw.image.func}} and \code{\link{spatial.func}}
 are called by \code{\link{plot.spatial}} and are not typically 
used on their own.}

\author{
 Yee Hwa Yang, \email{yeehwa@stat.berkeley.edu} \cr
 Sandrine Dudoit, \email{sandrine@stat.berkeley.edu}}

\seealso{\code{\link{draw.image.func}}, \code{\link{init.grid}}, 
\code{\link{spatial.func}}, \code{\link{image}}.} 

\examples{
data(MouseArray)
# mouse.setup <- init.grid()
# mouse.data <- init.data() ## see \emph{init.data}

mouse.lratio <- stat.ma(mouse.data, mouse.setup)
plot.spatial(mouse.lratio$M[,1], mouse.setup) ## default 85% cutoff

# Looking for areas where the spots are not quite circular
plot.spatial(mouse1[,"shape"], mouse.setup, crit1=0.1)
}   

\keyword{hplot}

%\keyword{microarray, spatial.}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of File
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
