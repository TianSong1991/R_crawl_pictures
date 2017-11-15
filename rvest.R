rm(list = ls())
library(rvest)
library(downloader)
web<-read_html("http://artand.cn/works",encoding="UTF-8")
position1 <-web %>% html_nodes("div.img>a") %>% html_nodes("img") %>% html_attr("src")
position2 <-web %>% html_nodes("div.img>a") %>% html_nodes("img") %>% html_attr("data-src")


for(i in 1:10) 
{
  download(position1[i],paste("F:/test/test",i,".jpg",sep = ""), mode = "wb")
} 


for(i in 11:120) 
{
  download(position2[i],paste("F:/test/test",i,".jpg",sep = ""), mode = "wb")
} 