url <- "https://www.belgianfootball.be/nl/nationale-ploegen/rode-duivels/selectie-rode-duivels"
page <- url %>% 
  read_html() %>% 
  html_nodes(".player-card:nth-child(2) .image-container")

page
.player-card:nth-child(2) .image-container

<img _ngcontent-c25="" class="player-image" src="https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/men/5257.jpg" alt="Toby Alderweireld">
  
  body > app-root-bf > div > app-content-page > app-basic-page > div > div.contentpage-body > div > div > div.cell.small-12.medium-8 > div > div > div:nth-child(3) > app-paragraph-list > app-player-selection > div > div > div > div:nth-child(1) > a > div > img



for(i in (5257:10000)){
print(i)
url_pic <- glue("https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/men/{i}.jpg")
safely(download.file(url_pic, destfile = glue("./content/post/data/190417/{i}.jpg", mode = "wb")),otherwise = NULL)
}

url_pic <- glue("https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/men/5257.jpg")
url_pic
download.file(url_pic, destfile = ("./content/post/data/190417/test.jpg"))


url_pic <- glue("https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/men/{i}.jpg")
safely(download.file(url_pic, destfile = glue("./content/post/data/190417/{i}.jpg", mode = "wb"), otherwise = NULL)

download.file(url_pic, "test")
      
       
       url_pic <- glue("https://belgianfootball.s3.eu-central-1.amazonaws.com/s3fs-public/rbfa/img/players/internationals/football/men/{i}.jpg")
       safely(download.file(url_pic, destfile = glue("./content/post/data/190417/{i}.jpg", mode = "wb"), otherwise = NULL)