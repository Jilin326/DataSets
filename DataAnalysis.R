library(tidyverse)
Cab_Data <- as_tibble(read.csv("Cab_Data.csv", header = TRUE))
City <- as_tibble(read.csv("City.csv", header = TRUE))
Customer_ID <- as_tibble(read.csv("Customer_ID.csv", header = TRUE))
Transaction_ID <- as_tibble(read.csv(
  "Transaction_ID.csv",
  header = TRUE)
)
table(Cab_Data$Company)
Merged_Data <- left_join(
  Cab_Data,
  Transaction_ID, 
  by = "Transaction.ID")
Merged_Data <- left_join(
  Merged_Data,
  Customer_ID,
  by = "Customer.ID"
)
Merged_Data <- left_join(
  Merged_Data,
  City,
  by = "City"
)
scale_x_discrete(guide = guide_axis(n.dodge=7))
