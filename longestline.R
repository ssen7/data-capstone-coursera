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