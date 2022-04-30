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
#' @param num A vector to string together (numeric value will be changed to word form)
#' @param delim the separator, default is ""
#'
#' @return a string string
#'
#' @importFrom english as.english
#'
#' @export
#'
addToStrs<-function(num,delim=""){

  all_char <- ifelse(!is.na(as.numeric(num)),  # convert numbers to string, leave characters
                                      as.character(as.english(as.numeric(num))), # convert numbers to a number form, change to name, change back to character
                                      num)

  result <- paste(all_char, collapse = delim)
  return(result)

}

#' Adds things together strings or simple addition
#'
#' @param num The vector we want to change
#' @param type should be string or numeric, determines output
#' @param delim if type is string, this separates the x and num
#'
#' @return a string or numeric value
#'
#' @export
#'
addnums<-function(num,type="string",delim=""){
  if (type=="string" & is.character(num)){
    addToStrs(num,delim)
  }else if(type=="numeric" & is.numeric(num)){
    additions(num)
  }else {
    return("ERROR!! Please Check Your Inputs")
  }
}
