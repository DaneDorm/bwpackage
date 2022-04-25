#' adds number to another number
#'
#' @param num is the first number to add
#' @param x is the second number to add
#'
#' @return a string
#'
#' @export

addition<-function(x,num){
  return(x + num)
}

#'Adds number as string
#'
#' @param x is the string to be added to; must be a character
#' @param num the number added to the string (numeric value will be changed to word form)
#' @param delim the separator, default is ""
#'
#' @return a string string
#'
#' @importFrom english as.english
#'
#' @export
#'
addToStr<-function(x,num,delim=""){
  if ((is.numeric(num)==T)&(is.character(x)==T)){
  paste(x,as.english(num),sep=delim)
  }else{
    warning("num must be a numeric value and x must be charcter")
  }
}

#' Adds things together strings or simple addition
#'
#' @param x is the first string or number
#' @param num is the number to add (should be numeric)
#' @param type should be string or numeric, determines output
#' @param delim if type is string, this separates the x and num
#'
#' @return a string or numeric value
#'
#' @export
#'
addnum<-function(x,num,type="string",delim=""){
  if (type=="string"){
    addToStr(x,num,delim)
  }else if(type=="numeric"){
    addition(x,num)
  }
}
