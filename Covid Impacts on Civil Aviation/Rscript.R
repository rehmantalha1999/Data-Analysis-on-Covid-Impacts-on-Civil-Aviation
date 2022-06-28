library("readxl")
library("ggplot2")
#Japan's Ticket sales vs exchanges vs refunds during 2020 Covid Pandemic
japan<- read_excel("japanTicket.xlsx")
ggplot(data=japan, mapping = aes(x=Dates))+
  geom_line(mapping = aes(y=Sales, color="Sales", group =1 ))+
  geom_point(mapping = aes(y=Sales, color="Sales"))+
  geom_line(mapping = aes(y=Exchanges, color="Exchanges",group =1 ))+
  geom_point(mapping = aes(y=Exchanges, color="Exchanges"))+
  geom_line(mapping = aes(y=Refunds, color="Refunds",group =1 ))+
  geom_point(mapping = aes(y=Refunds, color="Refunds"))+
  theme(axis.text.x = element_text(angle = 45))+
  xlab("Dates (2020)")+
  ylab("Percentages")

#Net Revenue loss for each continent
revenue_loss <- read_excel("revenue.xlsx")
colnames(revenue_loss) <- c("region", "revenLoss")
ggplot(revenue_loss, aes(x=revenLoss, y=region)) + 
  geom_bar(stat = "identity", color = 'red')+
  xlab("Revenue Loss in billion U.S. Dollars")+
  ylab("Regions")



  