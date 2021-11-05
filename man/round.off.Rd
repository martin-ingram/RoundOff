\name{round.off}
\alias{round.off}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{RoundOff
%%  ~~function to do ... ~~
}
\description{Fixes problem with Base R's round() function, which rounds to the nearest even number automatically, instead of rounding up when dealing with values ≥ 5
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
round.off(x, n = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Number(s) to round.
%%     ~~Describe \code{x} here~~
}
  \item{n}{ Precision of decimals to round to.
%%     ~~Describe \code{n} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{https://stackoverflow.com/questions/12688717/round-up-from-5
%% ~put references to the literature/web site here ~
}
\author{Martin Ingram
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, n = 0) 
{
    posneg = sign(x)
    z = abs(x) * 10^n
    z = z + 0.5 + sqrt(.Machine$double.eps)
    z = trunc(z)
    z = z/10^n
    z * posneg
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
