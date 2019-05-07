text <- "Werd van 9 maart 2017 tot 9 december 2018 als staatssecretaris in de federale regering-Michel I vervangen door Wim Van der Donckt."

texts <- wiki_table %>% 
  filter(!is.na(Opmerkingen)) %>% 
  select(Opmerkingen)

text[1]


y <- texts %>% 
  mutate(Opmerkingen = gsub("januari", 1, Opmerkingen),
         Opmerkingen = gsub("februari", 2, Opmerkingen),
         Opmerkingen = gsub("maart", 3, Opmerkingen),
         Opmerkingen = gsub("april", 4, Opmerkingen),
         Opmerkingen = gsub("mei", 5, Opmerkingen),
         Opmerkingen = gsub("juni", 6, Opmerkingen),
         Opmerkingen = gsub("juli", 7, Opmerkingen),
         Opmerkingen = gsub("augustus", 8, Opmerkingen),
         Opmerkingen = gsub("september", 9, Opmerkingen),
         Opmerkingen = gsub("oktober", 10, Opmerkingen),
         Opmerkingen = gsub("november", 11, Opmerkingen),
         Opmerkingen = gsub("december", 12, Opmerkingen))

z <- y %>% 
  mutate(digits = str_extract_all(Opmerkingen,"([0-9]+)")) %>% 
  mutate(unlist = unlist(digits))

d <- unlist(z$digits[2])

paste0("0",unlist(z$digits[2]))
