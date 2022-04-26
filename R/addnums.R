#' adds number to another number
#'
#' @param x Numbers to add
#'
#' @return a string
#'
#' @export

additions<-function(x){

  run_sum <- 0
  max_i <- length(x)

  for (i in c(1:max_i)) {
    run_sum <- run_sum + x[i]
  }
  return(run_sum)
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
addToStrs<-function(x,num,delim=""){
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
addnums<-function(x,num,type="string",delim=""){
  if (type=="string"){
    addToStrs(x,num,delim)
  }else if(type=="numeric"){
    additions(x,num)
  }
}
