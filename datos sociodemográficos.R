


#datos demográficos
with(loe,tapply(loe$edad,loe$sex,mean))
with(loe,tapply(loe$edad,loe$sex,sd))
wilcox.test(loe$edad~loe$sex, data = loe)
t.test(loe$edad~loe$sex)

with(loe,tapply(loe$escolaridad,loe$sex,mean))
with(loe,tapply(loe$escolaridad,loe$sex,sd))
wilcox.test(loe$escolaridad~loe$sex, data = loe)
t.test(loe$escolaridad~loe$sex)