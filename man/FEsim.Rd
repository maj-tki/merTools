% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merExtract.R
\name{FEsim}
\alias{FEsim}
\title{Simulate fixed effects from merMod
\code{FEsim} simulates fixed effects from merMod object posterior distributions}
\usage{
FEsim(merMod, n.sims = 200, oddsRatio = FALSE, seed = NULL)
}
\arguments{
\item{merMod}{a merMod object from the lme4 package}

\item{n.sims}{number of simulations to use}

\item{oddsRatio}{logical, should parameters be converted to odds ratios?}

\item{seed}{numeric, optional argument to set seed for simulations}
}
\value{
a data frame with the following columns
\describe{
  \item{\code{term}}{Name of fixed term (intercept/coefficient)}
  \item{\code{mean}}{Mean of the simulations}
  \item{\code{median}}{Median of the simulations}
  \item{\code{sd}}{Standard deviation of the simulations, \code{NA} if \code{oddsRatio=TRUE}}
}
}
\description{
Simulate fixed effects from merMod
\code{FEsim} simulates fixed effects from merMod object posterior distributions
}
\details{
Use the Gelman sim technique to build fixed effect estimates and
confidence intervals. Uses the sim function in the arm package
}
\examples{
require(lme4)
m2 <- lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
fe2 <- FEsim(m2, 25)
head(fe2)
}
