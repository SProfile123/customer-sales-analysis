import pandas as pd

# Load data
df = pd.read_csv("../data/merged_customer_sales.csv")

# Drop missing values
df.dropna(inplace=True)

# Convert date and add Month column
df['Order Date'] = pd.to_datetime(df['Order Date'])
df['Month'] = df['Order Date'].dt.to_period("M")

# Export cleaned data
df.to_csv("../data/sales_cleaned.csv", index=False)
