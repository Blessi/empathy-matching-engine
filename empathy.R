#package in stallation
install.packages("shiny")
install.packages("lavaan")

#Load the lavaan package

library(lavaan)

#join the tables

libray(shiny)
leb<-fluidPage(tableoutput('table1'),
               tableoutput('table2')
)
server<-function(input,output.session){
  output$table1<-rendeTable(requests)
  output$table2<-rendeTable(inventory)
}

loc<-leb$location1==leb$location2
ava<-leb$products[leb$item]

#model
best.model<-'best=~loc+ava'

#fit
modelfit<-cfa(best.model,data=leb)

#summary
summary(modelfit,standardized =TRUE,fit.measures =TRUE)

#result
subset(std.lv >= o.8)



