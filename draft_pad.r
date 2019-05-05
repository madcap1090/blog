test <- tweets$text
unique(Encoding(test))

unknown <- test[Encoding(test) == "unknown"] 
Encoding(test) <- "UTF-8"  

names(test)
