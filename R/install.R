# This code can only run as part of a CI run
# nocov start

verify_install <- function(pkg_names, pkgType = NULL) { # nolint
  # set "type" to platform default
  pkgType <- update_type(pkgType) # nolint
  lapply(pkg_names, function(x) verify_install_one(x, pkgType = pkgType))
}

verify_install_one <- function(pkg_name, pkgType) { # nolint
  withr::with_options(
    c(pkgType = pkgType),
    remotes::install_cran(pkg_name, upgrade = TRUE)
  )
  if (!package_installed(pkg_name)) {
    stopc(
      "Error installing package ", pkg_name, " or one of its dependencies."
    )
  }
}

package_installed <- function(pkg_name) {
  path <- system.file("DESCRIPTION", package = pkg_name)
  file.exists(path)
}

# This code can only run as part of a CI run
# nocov end
