
#' Read SORTIE outputs
#'
#' @param filenames
#'
#' @importFrom purrr map
#' @importFrom data.table rbindlist
#' @importFrom data.table fread
#' @return
#' @export
#'
#' @examples
readSORTIE <- function(filenames){
  soDT <- map(filenames,~ fread(.x))
  rbindlist

}
