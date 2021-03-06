% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{extract_sampler_params}
\alias{extract_sampler_params}
\title{Extract sampler parameters from a fit.}
\usage{
extract_sampler_params(fit, inc_warmup = FALSE)
}
\arguments{
\item{fit}{A list returned by \code{sample_admb}.}

\item{inc_warmup}{Whether to extract the warmup samples or not
(default). Warmup samples should never be used for inference, but may
be useful for diagnostics.}
}
\value{
An invisible data.frame containing samples (rows) of each
  parameter (columns). If multiple chains exist they will be rbinded
  together.
}
\description{
Extract information about NUTS trajectories, such as acceptance ratio
and treedepth, from a fitted object.
}
\details{
Each trajectory (iteration) in NUTS has associated information
  about the trajectory: stepsize, acceptance ratio, treedepth, and number of
  leapfrog steps. This function extracts these into a data.frame, which
  may be useful for diagnosing issues in certain cases. In general, the
  user should not need to examine them, or preferably should via
  \code{\link{plot_sampler_params}} or  \code{\link{launch_shinyadmb}}.
}
\examples{
fit <- readRDS(system.file('examples', 'fit.RDS', package='adnuts'))
sp <- extract_sampler_params(fit, inc_warmup=TRUE)
str(sp)

}
\seealso{
\code{\link{launch_shinyadmb}}.
}
