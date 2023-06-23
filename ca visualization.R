months <- c("May", "June", "July", "August", "September", "October")
 x <- c(4200, 5300, 6800, 8100, 10500, 4500)
 y<- c(5800, 6200, 6700, 7100, 7400, 6000)
 my_data <- data.frame(months, x, y)
library(ggplot2)

ggplot(data = my_data, aes(x = x, y = y)) +
  geom_function(fun=function(x) 4838.3+0.2581*x, color="red") +
  geom_point(color = "blue") +
  labs(x = "Distance in KM", y = "Operating and maintenance costs", title = "High-Low method") +
  theme_minimal() +
  xlim(0, 12000) +
  ylim(0, 8000) +
  scale_x_continuous(breaks = seq(0, 12000, by = 500)) +
  scale_y_continuous(breaks = seq(3500, 8000, by = 500)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 8)) +
  theme(axis.text.y = element_text(angle = 45, hjust = 1, size = 8)) +
  annotate("text", x = 8000, y = 6000, label = "Relevant Range", color = "black", size = 4)
 

