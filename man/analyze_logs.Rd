% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log_analysis.R
\name{analyze_logs}
\alias{analyze_logs}
\title{Analyze ShinyProxy Log Files in a Directory}
\usage{
analyze_logs(path_container_logs, path_shinylogs = NULL)
}
\arguments{
\item{path_container_logs}{Character. The path to the directory containing the container logs files.}

\item{path_shinylogs}{Character. The path to the directory containing ShinyProxy identity logs.}
}
\value{
A list containing two data frames:
\describe{
\item{file_info}{Detailed information for each file.}
\item{summary}{Summary information grouped by container (based on \code{specId}, \code{proxyId}, and \code{startupTime}).}
}
}
\description{
This function scans a specified directory, extracts metadata from the log file names,
reads their content, and computes some statistics (total number of lines and the number of lines
containing "error" or "exception"). Additionally, it retrieves ShinyProxy user information from a
separate directory of logs.
}
\examples{
\dontrun{
  result <- analyze_logs("path/to/containersLogs", "path/to/shinylogs")
  print(result$summary)
}
}
