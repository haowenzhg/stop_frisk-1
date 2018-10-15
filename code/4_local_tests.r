#############################
###### 4. Local Tests #######
#############################



# I. Clothing
## A. Rook Weighting
set.seed(2090)
nbs <- poly2nb(race_merged2, queen = F)
lws <- nb2listw(nbs, zero.policy = T)

moran.loc.rook <-localmoran(rates$stop.clothing,lws,p.adjust.method="fdr", zero.policy = T) 
shades <- shading(c(0.05),cols=c(2,8))
choropleth(race_merged2,moran.loc.rook[,"Pr(z > 0)"],shades)

## B. Queen Weighting
nbs <- poly2nb(race_merged2, queen = T)
lws <- nb2listw(nbs, zero.policy = T)

moran.loc.queen <-localmoran(rates$stop.clothing,lws,p.adjust.method="fdr", zero.policy = T) 
shades <- shading(c(0.05),cols=c(2,8))
choropleth(race_merged2,moran.loc.queen[,"Pr(z > 0)"],shades)

# II. Furtive Movements
## A. Rook Weighting
set.seed(2090)
nbs <- poly2nb(race_merged2, queen = F)
lws <- nb2listw(nbs, zero.policy = T)

moran.loc.rook <-localmoran(rates$stop.furtive,lws,p.adjust.method="fdr", zero.policy = T) 
shades <- shading(c(0.05),cols=c(2,8))
choropleth(race_merged2,moran.loc.rook[,"Pr(z > 0)"],shades)

## B. Queen Weighting
nbs <- poly2nb(race_merged2, queen = T)
lws <- nb2listw(nbs, zero.policy = T)

moran.loc.queen <-localmoran(rates$stop.furtive,lws,p.adjust.method="fdr", zero.policy = T) 
shades <- shading(c(0.05),cols=c(2,8))
choropleth(race_merged2,moran.loc.queen[,"Pr(z > 0)"],shades)