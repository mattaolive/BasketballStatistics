#install.packages("leaps")
library(leaps)

################ Win Shares ################ 

leap.cp <- leaps(x = cbind(df$college_GS, df$college_MP, df$college_FG, df$college_FGA, df$college_FG., df$college_2P, df$college_2PA, df$college_2P., df$college_3P,
                           df$college_3PA, df$college_3P., df$college_FT, df$college_FTA, df$college_FT., df$college_ORB, df$college_DRB, df$college_TRB, df$college_AST, 
                           df$college_STL, df$college_BLK, df$college_TOV, df$college_PF, df$college_PTS), 
                 y = df$nba_WS, 
                 method = "Cp")

combine.cp <- cbind(leap.cp$which,leap.cp$size, leap.cp$Cp)

options(max.print=1000000)
round(combine.cp)





################ Value Over Replacement Player ################ 

leap.cp <- leaps(x = cbind(df$college_GS, df$college_MP, df$college_FG, df$college_FGA, df$college_FG., df$college_2P, df$college_2PA, df$college_2P., df$college_3P,
                           df$college_3PA, df$college_3P., df$college_FT, df$college_FTA, df$college_FT., df$college_ORB, df$college_DRB, df$college_TRB, df$college_AST, 
                           df$college_STL, df$college_BLK, df$college_TOV, df$college_PF, df$college_PTS), 
                 y = df$nba_VORP, 
                 method = "Cp")

combine.cp <- cbind(leap.cp$which,leap.cp$size, leap.cp$Cp)

options(max.print=1000000)
round(combine.cp)

