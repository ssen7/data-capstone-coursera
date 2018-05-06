findAllandPrint <- function(filename, word){
        conn <- file(filename, "r")
        s = 0
        len <- readLines(conn)
        for(i in 1:length(len)){
                if(grepl(word, len[i])){
                        print(len[i])
                }
        }
        close(conn)
}