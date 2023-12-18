import pandas as pd
from sqlalchemy import create_engine

file_path = 'Zutaten.xlsx'
df = pd.read_excel(file_path)

df.rename(columns={
    'BEZEICHNUNG': 'ZutatName',
    'EINHEIT': 'Einheit',
    'BESTAND': 'Bestand',
    'KALORIEN': 'Kalorien',
    'KOHLENHYDRATE': 'Kohlenhydrate',
    'PROTEIN': 'Proteine',
    'NETTOPREIS': 'Nettopreis'
}, inplace=True)

df.drop(['LIEFERANT', 'Anschrift'], axis=1, inplace=True)

engine = create_engine('sqlite:///YourDatabase.db')
df.to_sql('zutat', con=engine, if_exists='append', index=False)
