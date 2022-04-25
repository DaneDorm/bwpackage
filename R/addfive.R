#' Adds 5 to a numeric value
#'
#' @param x is a numeric value
#'
#' @return a numeric value
#'
#' @export
#'
plusfive <- function(x){

  return(x+5)

}


#' Add the word five to the string
#'
#' @param str is a vector
#' @param delim is deliminator, default is " "
#'
#' @return returns a string
#'
#' @export
#'
strfive<-function(str,delim = " "){
  paste(str,"five",sep=delim)
}


#'Adds five or 5 to the str/num
#'
#' @param x is string or numeric value
#' @param delim is the deliminator if string, default is " "
#'
#' @returns returns a string if x is a string, returns a numeric value if x is numeric
#'
#' @export
#'
addfive<-function(x,delim=" "){
  ifelse( is.numeric(x)==T, plusfive(x),
          ifelse( is.character(x)==T,strfive(x,delim),
                  warning("x must be a string or character")
  ) )
}
