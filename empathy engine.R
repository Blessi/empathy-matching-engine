#matching engine

leb<-read.csv("leb1.csv")
NGO<-read.csv("NGO.csv")
head(leb)
head(NGO)

#matchingbeneficry item with Ngos

match(leb$item,NGO$products)
NGO$ngo_id[match(leb$item,NGO$products)]
matchingngo<-NGO$ngo_id[match(leb$item,NGO$products)]

#matching beneficiary loaction with Ngos

match(leb$location1,NGO$location)
NGO$ngo_id[match(leb$location1,NGO$location)]
matchingloc<-NGO$ngo_id[match(leb$location1,NGO$location)]

#perfect match NGO
match(matchingngo,matchingloc)
best_match_ngo<-NGO$ngo_id[match(matchingngo,matchingloc)]
best_match_ngo



