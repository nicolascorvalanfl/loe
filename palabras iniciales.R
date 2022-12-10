
loe <- loe1

#pase a numeric
loe$craft_inm_t_z <- as.numeric(loe$craft_story_in_z)
loe$craft_inm_p_z <- as.numeric(loe$craft_story_in_p_z)
loe$craft_dif_t_z <- as.numeric(loe$craft_story_dif_z)
loe$craft_dif_p_z <- as.numeric(loe$craft_story_dif_p_z)
loe$lista_rey_z <- as.numeric(loe$lista_rey_z)
loe$lista_rey_dif_z <- as.numeric(loe$lista_rey_dif_z)
loe$rey_dif_z <- as.numeric(loe$rey_dif_z)
loe$boston_z <- as.numeric(loe$boston_z)
loe$fluencia_an_z <- as.numeric(loe$fluencia_an_z)
loe$fluencia_p_z <- as.numeric(loe$fluencia_p_z)
loe$digitos_d_z <- as.numeric(loe$digitos_d_z)
loe$digitos_i_z <- as.numeric(loe$digitos_i_z)
loe$tmt_a_z <- as.numeric(loe$tmt_a_z)
loe$tmt_b_z <- as.numeric(loe$tmt_b_z)
loe$stroop_pc_z <- as.numeric(loe$stroop_pc_z)
loe$stroop_int_z <- as.numeric(loe$stroop_int_z)
loe$wcst_cat_z <- as.numeric(loe$wcst_cat_z)
loe$wcst_per_z <- as.numeric(loe$wcst_per_z)
loe$rey_copia_z <- as.numeric(loe$rey_copia_z)
loe$miradas_pz <- as.numeric(loe$miradas_pz)
loe$reloj <- as.numeric(loe$reloj)
loe$dx <- as.numeric(loe$dx)





#composites de funciones cognitivas

loe$memoria <- (loe$craft_inm_t_z+
                  loe$craft_inm_p_z+
                  loe$craft_dif_t_z+
                  loe$craft_dif_p_z+
                  loe$lista_rey_z+
                  loe$lista_rey_dif_z+
                  loe$rey_copia_z)/7



loe$lenguaje <- (loe$boston_z+
                  loe$fluencia_an_z+
                  loe$fluencia_p_z)/3

loe$atencion <- (loe$digitos_d_z+
                   loe$digitos_i_z+
                   loe$tmt_a_z)/3

loe$funciones_ejecutivas <- (loe$tmt_b_z+
               loe$stroop_pc_z+
               loe$wcst_cat_z)/3




loe$craft <- (loe$craft_inm_t_z+
                loe$craft_inm_p_z+
                loe$craft_dif_t_z+
                loe$craft_dif_p_z)/4

loe$ravlt <- (loe$lista_rey_z+
                 loe$lista_rey_dif_z)/2

loe$wcst <- (loe$wcst_cat_z+
                loe$wcst_per_z)/2

loe$craft_i <- loe$craft<(-1)
loe$ravlt_i <- loe$ravlt<(-1)
loe$tmt_a_z_i <- loe$tmt_a_z<(-1)
loe$tmt_b_z_i <- loe$tmt_b_z<(-1)
loe$boston_z_i <- loe$boston_z<(-1)
loe$miradas_i <- loe$craft<(-1)
loe$wcst_i <- loe$wcst<(-1)
loe$digitos_d_z_i <- loe$digitos_d_z<(-1)
loe$digitos_i_z_i <- loe$digitos_i_z<(-1)






loe$memoria_i<-loe$memoria<(-1.5)
loe$atencion_i<-loe$atencion<(-1.5)
loe$lenguaje_i<-loe$lenguaje<(-1.5)
loe$ffee_i<-loe$funciones_ejecutivas<(-1.5)

View(loe)





