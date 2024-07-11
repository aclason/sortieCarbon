

#' read SORTIE
#'
#' @param outputs expecting a single csv for each site/plot with all timesteps or a vector of
#' filenames to read in
#' @importFrom data.table rbindlist
#' @importFrom data.table fread
#' @return
#' @export
#'
#' @examples
readSortie <- function(outputs) {

  if (is.data.table(outputs)) {
    message("The input is a data.table")

    # Perform operations specific to data.table
    return(outputs)

  } else if (is.character(outputs) && all(file.exists(outputs))) {
    message("The input is a vector of filenames")
    #sort_out <- readSortie(filenames = outputs)
    # Perform operations specific to vector of filenames
    soL <- lapple(outputs,fread)
    soDT <- rbindlist(soL,fill = TRUE)

    return(soDT)

  } else {
    stop("Input is neither a data.table nor a valid vector of filenames")
  }
}
