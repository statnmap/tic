% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/steps-ssh.R
\name{step_test_ssh}
\alias{step_test_ssh}
\title{Step: Test SSH connection}
\usage{
step_test_ssh(
  url = "git@github.com",
  verbose = "-v",
  name = "TRAVIS_DEPLOY_KEY"
)
}
\arguments{
\item{url}{\verb{[string]}\cr
URL to establish SSH connection with, by default \code{git@github.com}}

\item{verbose}{\verb{[string]}\cr
Verbosity, by default \code{"-v"}. Use \code{"-vvv"} for more verbosity.}

\item{name}{\verb{[string]}\cr
Name of the environment variable and the target file, default:
\code{"TRAVIS_DEPLOY_KEY"}.}
}
\description{
Establishes an SSH connection.
This step doesn't fail if the connection cannot be established,
but prints verbose output by default.
It is useful for troubleshooting deployment problems.
}
\examples{
dsl_init()

get_stage("script") \%>\%
  add_step(step_test_ssh(verbose = "-vvv"))

dsl_get()
}
\seealso{
Other steps: 
\code{\link{step_add_to_drat}()},
\code{\link{step_add_to_known_hosts}()},
\code{\link{step_build_pkgdown}()},
\code{\link{step_do_push_deploy}()},
\code{\link{step_hello_world}()},
\code{\link{step_install_pkg}},
\code{\link{step_install_ssh_keys}()},
\code{\link{step_push_deploy}()},
\code{\link{step_run_code}()},
\code{\link{step_setup_push_deploy}()},
\code{\link{step_setup_ssh}()},
\code{\link{step_write_text_file}()}
}
\concept{steps}
