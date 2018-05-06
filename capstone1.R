longestline <- function(filename){
        conn <- file(filename, "r")
        s <- nchar(readLines(conn, 1))
        len <- readLines(conn)
        for (i in 1:length(len)){
                t <- nchar(len[i])
                if (t > s){
                        s <- t   
                }
        }
        close(conn)
        s
        
}

longestline("./data/Coursera-SwiftKey/final/en_US/en_US.news.txt")

twfilename <- "./data/Coursera-SwiftKey/final/en_US/en_US.twitter.txt"

conn <- file(twfilename, "r")
findExpressionFrequency <- function(filename, word){
        conn <- file(filename, "r")
        s = 0
        len <- readLines(conn)
        for(i in 1:length(len)){
                if(grepl(word, len[i])){
                        s = s + 1
                }
        }
        close(conn)
        s
        
}

findExpressionFrequency(twfilename, "matter closed")

conn <- file(twfilename,"r")
len <- readLines(conn)
s <- 0
for(i in 1:length(len)){
        if(grepl("molly", len[i])){
                s = s+1
                print(len[i])
        }
}
close(conn)
t <- 0
for(i in 1:length(len)){
        if(grepl("A computer once beat me at chess, but it was no match for me at kickboxing", len[i])){
                t <- t+1
        }
}
t
close(conn)
