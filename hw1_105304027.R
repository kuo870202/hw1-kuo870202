### Name: [郭冠廷]
### Student ID: [105304027]

args = commandArgs(trailingOnly=TRUE)

if (sum(c('--input','--output') %in% args) != 2) {
  stop("USAGE: Rscript hw1 input", call.=FALSE)
} else {
  if(args[1]=='--input'){
    df <- data.frame(set=character(1),
                    weight = double(1),
                    height = double(1),
                    stringsAsFactors = F)
    data1 <- read.csv(args[2])
    df$set <- c(gsub('.csv','',strsplit(args[2],'/')[[1]][length(strsplit(args[2],'/')[[1]])]))
    df$weight <- round(max(data1$weight),digits = 2)
    df$height <- round(max(data1$height),digits = 2)
    write.csv(df,args[4],row.names = F,quote = F)
  }else{
    df <- data.frame(set=character(1),
                     weight = double(1),
                     height = double(1),
                     stringsAsFactors = F)
    data1 <- read.csv(args[4])
    df$set <- c(gsub('.csv','',strsplit(args[4],'/')[[1]][length(strsplit(args[4],'/')[[1]])]))
    df$weight <- round(max(data1$weight),digits = 2)
    df$height <- round(max(data1$height),digits = 2)
    write.csv(df,args[2],row.names = F,quote = F)
  }
}
