### Name: [郭冠廷]
### Student ID: [105304027]

args = commandArgs(trailingOnly=TRUE)

if (sum(c('--input','--output') %in% args)!=2) {
  stop("USAGE: Rscript hw1 input", call.=FALSE)
} else {
  if(args[1]=='--input'){
    data1 <- read.csv(args[2])
    data1 <- data1[,1:3]
    names(data1)[1] <- 'set'
    data1[[1]] <- c(gsub('.csv','',strsplit(args[2],'/')[[1]][length(strsplit(args[2],'/')[[1]])]))
    data1[[2]] <- round(max(data1[[2]]),digits = 2)
    data1[[3]] <- round(max(data1[[3]]),digits = 2)
    write.csv(data1[1,],args[4])
  }else
  {
    data1 <- read.csv(args[4])
    data1 <- data1[,1:3]
    names(data1)[1] <- 'set'
    data1[[1]] <- c(gsub('.csv','',strsplit(args[4],'/')[[1]][length(strsplit(args[4],'/')[[1]])]))
    data1[[2]] <- round(max(data1[[2]]),digits = 2)
    data1[[3]] <- round(max(data1[[3]]),digits = 2)
    write.csv(data1[1,],args[2])
  }
}
