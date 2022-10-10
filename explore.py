import pandas as pd

df = pd.read_parquet("data/yellow_tripdata_2022-01.parquet")

print(df.columns)
print(df.dtypes)

print(df.head)

print(df.tpep_pickup_datetime.min)