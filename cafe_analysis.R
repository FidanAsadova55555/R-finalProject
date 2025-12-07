library(dplyr)

customer_data <- read.csv("customer_data.csv")
loyalty_data <- read.csv("loyalty_data.csv")

print("Customer Data:")
print(customer_data)

print("Loyalty Data:")
print(loyalty_data)

print(str(customer_data))
print(str(loyalty_data))
library(dplyr)

Above_30 <- customer_data %>% filter(Age > 30)
print(Above_30)

df_filtered <- customer_data %>% filter(Product == "Smoothie" & Gender == "Female")
print(df_filtered)

df_selected <- df_filtered %>% select(Age, Product)
print(df_selected)

loyalty_data <- loyalty_data %>%
  mutate(Tier = case_when(
    LoyaltyPoints >= 500 ~ "Gold",
    LoyaltyPoints >= 200 & LoyaltyPoints < 500 ~ "Silver",
    LoyaltyPoints < 200 ~ "Bronze",
    TRUE ~ "Unknown"
  ))

print(loyalty_data)
write.csv(df_selected, "revised_customer_data.csv", row.names = FALSE)
write.csv(loyalty_data, "revised_loyalty_data.csv", row.names = FALSE)