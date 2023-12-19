import pandas as pd
import pymysql
db_host = 'localhost'
db_user = 'root'
db_password = ''
db_name = 'krautundrueben'
file_path = './Zutaten.xlsx'
excel_data = pd.read_excel(file_path)
connection = pymysql.connect(host=db_host, user=db_user, password=db_password, db=db_name)
cursor = connection.cursor()
def insert_supplier_if_not_exists(cursor, supplier_data):
    cursor.execute("SELECT LiefNr FROM Lieferant WHERE LiefName = %s", (supplier_data['name'],))
    result = cursor.fetchone()
    if result:
        return result[0]
    insert_sql = "INSERT INTO Lieferant (Ort, Strasse, LiefName, PLZ, HausNr) VALUES (%s, %s, %s, %s, %s)"
    cursor.execute(insert_sql, (supplier_data['stadt'], supplier_data['strasse'], supplier_data['name'], supplier_data['plz'], supplier_data['hausnr']))
    cursor.execute("SELECT LAST_INSERT_ID();")
    new_id = cursor.fetchone()
    return new_id[0]
for index, row in excel_data.iterrows():
    try:
        address_parts = row['Anschrift'].split(',')
        strasse, hausnr = address_parts[0].split(' ')
        plz = address_parts[1].split()[0]
        stadt = ' '.join(address_parts[1].split()[1:])
        supplier_data = {
            'name': row['LIEFERANT'],
            'stadt': stadt,
            'strasse': strasse,
            'plz': plz,
            'hausnr': hausnr
        }
    except Exception as e:
        print(f"Error in address parsing: {e}")
        continue
    lief_nr = insert_supplier_if_not_exists(cursor, supplier_data)
    print(lief_nr)
    sql = f"""INSERT INTO zutat (ZutatName, Einheit, Nettopreis, Bestand, LiefNr, Kalorien, Kohlenhydrate, Proteine)
              VALUES ('{row['BEZEICHNUNG']}', '{row[' EINHEIT'].strip()}', {row[' NETTOPREIS']}, {row[' BESTAND']}, {lief_nr}, {row[' KALORIEN']}, {row[' KOHLENHYDRATE']}, {row[' PROTEIN']});"""
    try:
        cursor.execute(sql)
        connection.commit()
    except Exception as e:
        print(f"Error occurred: {e}")
        connection.rollback()
cursor.close()
connection.close()
