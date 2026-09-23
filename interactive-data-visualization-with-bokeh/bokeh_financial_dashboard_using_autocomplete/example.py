import pandas as pd
import yfinance as yf

df = pd.read_csv('sp500_data.csv')

print(df)

print(df.index)

tickers = df.columns

START, END = '2018-01-01', '2022-01-01'

df = yf.download(tickers, start=START, end=END)

df = df['Close'].dropna()