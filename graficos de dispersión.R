#grafico Ridgelineplot


install.packages("ggrides")
library(ggridges)
library(ggplot2)
library(dplyr)
library(reshape2)



#grafico greta (geompoint)




loe_graf <- loe%>% select(nhc,memoria,atencion,lenguaje,funciones_ejecutivas,rey_copia_z,miradas_pz)
install.packages("ggbeeswarm")
library(ggbeeswarm)


View(loe_graf1)
loe_graf1 <- melt(loe_graf, id.var = "nhc")

ggplot(loe_graf1, aes(x = value,y = variable, color = variable)) +
  geom_beeswarm(cex = 3, priority = "density")+
  coord_flip()+
  theme_minimal()


#otro
cols <- c("#F76D5E", "#FFFFBF", "#72D8FF", "#90EE90", "#FF82AB", "#836FFF")

ggplot(loe_graf1, aes(x = value, color = variable, fill = variable)) +
  geom_density(alpha = 0.7, color = NA)+
  scale_fill_manual(values = cols)


#grafico que me gusta a mí

ggplot(loe_graf1, aes(x = value, y = variable, fill = variable)) +
  geom_density_ridges(alpha = 0.7, color= NA) +
  theme_ridges() + 
  theme(legend.position = "none")
