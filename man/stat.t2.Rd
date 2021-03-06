%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file was automatically generated by Rdoc on 2001-04-20 20:18:09.
% Do NOT modify this file, instead modify the source (sma/R/RTtest.R).
% Rdoc is copyright (C) 2001, Henrik Bengtsson, henrikb@braju.com.
% Download the Rdoc compiler at http://www.braju.com/R/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{stat.t2}

\alias{stat.t2}
\alias{t2stat.func}

\title{Two-sample t-statistics}

\description{
Computes two-sample t-statistics for each gene in a multi-slide
microarray experiment. 
}

\usage{
stat.t2(X, cl, x.ratio=FALSE, var.equal=TRUE, ...)
}

\arguments{
 \item{X}{if x.ratio=F, X is a list containing two components.  The
 first component is a matrix of log intensity ratios
 \eqn{M=\log_2 (R/G)} and the second component is the 
  average log intensities \eqn{A = log_2 \sqrt{RG}}{A =
  log_2(R*G)/2}, such as the output 
  from \code{\link{stat.ma}}. If x.ratio=T, X is a matrix of log
  expression ratios only.   The rows of X correspond to genes and 
  columns correspond to different hybridizations, that is different
  slides.}  

 \item{cl}{vector of class labels. Must consist of integers 1 and 2.}

 \item{x.ratio}{logical flag: if TRUE, the matrix X contains only
 log intensity ratios, if FALSE, X is a list containing two
 components.  The first component is a matrix of log expression
 ratios and the second component contains average log
 intensities A.}

 \item{var.equal}{logical flag: if TRUE, the variances of the class
 1 and class 2 parent populations are assumed equal.} 

 \item{\dots}{other parameters used in \code{\link{t.test}}. }
}

\value{
List containing the following components

  \item{t}{the two-sample t-statistic for each gene;}

  \item{Num }{the numerator of the t-statistic for each gene, with
names attribute "Num";}

  \item{Denominator}{the denominator of the t-statistic for each gene, with
names attribute "Den";}

  \item{n1}{number of class 1 observations used to calculate the
  t-statistic for each gene;}

  \item{n2}{number of class 2 observations used to calculate the
    t-statistics for each gene;}   

    \item{Average A}{if x.ratio=F, the average across all
    hybridizations of \eqn{A = log_2 \sqrt{RG}}{A = log_2(R*G)/2}, 
with names attribute "A.bar", if x.ratio=T, NULL is returned.}
}

\references{ D. Freedman, R. Pisani, and
R. Purves. (1998). Statistics, 3rd ed. NewYork: W.W. Norton.} 

 
\note{\code{\link{t2stat.func}} is called by \code{\link{stat.t2}}
and is not typically used on its own.}         

\author{
  Sandrine Dudoit, \email{sandrine@stat.berkeley.edu} \cr
  Yee Hwa Yang, \email{yeehwa@stat.berkeley.edu} 
}
  
\seealso{\code{\link{t2stat.func}}, \code{\link{plot.t2}},
\code{\link{plot.qq}}, \code{\link{t.test}}.} 

\examples{
data(MouseArray)
## mouse.setup <- init.grid()
## mouse.data <- init.data() ## see \emph{init.data}
## mouse.lratio <- stat.ma(mouse.data, mouse.setup)
cl <- c(rep(1,3), rep(2,3))
mouse.t2 <- stat.t2(mouse.lratio, cl)
}


\keyword{htest}
%\keyword{T-test.}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of File
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
