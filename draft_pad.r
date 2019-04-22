


for(i in (6570:10000)){
  
  url_pic <-glue("https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/men/{i}.jpg")
  
  res <- try(download.file(url_pic, destfile = glue("./content/post/data/190417down_1/{i}.jpg"), mode = "wb"))
  if(inherits(res, "try-error"))
  {
    
    next
  }
  download.file(url_pic, destfile = glue("./content/post/data/190417down_1/{i}.jpg"), mode = "wb")
  
  }



for(i in (1:10000)){
  
  url_pic <-glue("https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/women/{i}.jpg")
  
  res <- try(download.file(url_pic, destfile = glue("./content/post/data/190417down_2/{i}.jpg"), mode = "wb"))
  if(inherits(res, "try-error"))
  {
    
    next
  }
  download.file(url_pic, destfile = glue("./content/post/data/190417down_2/{i}.jpg"), mode = "wb")
  
}
