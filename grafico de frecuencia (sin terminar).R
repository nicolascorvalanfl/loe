

frecuencia <- loe %>% select(nhc, craft_i,ravlt_i,tmt_a_z_i,tmt_b_z_i,
                             digitos_d_z_i,digitos_i_z_i,boston_z_i,wcst_i)



frecuencia1 <- melt(frecuencia, id.var = "nhc")

frecuencia2 <- as.data.frame(table(frecuencia1$variable, frecuencia1$value))

View(frecuencia2)

ggplot(frecuencia2, aes(fill = Var2, y = Freq, x = Var1 )) +
  geom_col(position = "fill")+
  theme_minimal()+
  coord_flip()
