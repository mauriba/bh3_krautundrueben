import tkinter as tk
from tkinter import messagebox, ttk
import sqlite3

# Database Connection Setup
def connect_to_db():
    return sqlite3.connect('YourDatabaseName.db')

# Login Function
def login():
    vorname = vorname_entry.get()
    name = name_entry.get()
    with connect_to_db() as conn:
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM Kunde WHERE Vorname = ? AND Name = ?", (vorname, name))
        if cursor.fetchone():
            root.destroy()
            open_main_app_window()
        else:
            messagebox.showerror("Login Failed", "No User found")

# Open Main Application Window
def open_main_app_window():
    main_app = tk.Tk()
    main_app.title("BH3 - Kraut und Rüben")
    tab_control = ttk.Notebook(main_app)

    rezepte_tab = ttk.Frame(tab_control)
    bestellungen_tab = ttk.Frame(tab_control)
    daten_tab = ttk.Frame(tab_control)

    tab_control.add(rezepte_tab, text='Rezepte')
    tab_control.add(bestellungen_tab, text='Bestellungen')
    tab_control.add(daten_tab, text='Daten')

    setup_rezepte_tab(rezepte_tab)
    setup_bestellungen_tab(bestellungen_tab)
    setup_daten_tab(daten_tab)

    tab_control.pack(expand=1, fill="both")
    main_app.mainloop()

# Setup Rezepte Tab
def setup_rezepte_tab(tab):
    # Dropdown for Ernaehrungskategorie
    def update_rezepte_list():
        selected_category = category_combobox.get()
        # Implement the database query to filter recipes by the selected category
        # For now, this is a placeholder list
        rezepte_list = ["Rezept 1", "Rezept 2"]  # Replace with actual database query result
        rezepte_listbox.delete(0, tk.END)
        for rezept in rezepte_list:
            rezepte_listbox.insert(tk.END, rezept)

    category_combobox = ttk.Combobox(tab, values=["Kategorie 1", "Kategorie 2"])  # Replace with actual categories from the database
    category_combobox.pack(pady=10)
    category_combobox.bind("<<ComboboxSelected>>", lambda e: update_rezepte_list())

    rezepte_listbox = tk.Listbox(tab)
    rezepte_listbox.pack(fill=tk.BOTH, expand=True)

# Setup Bestellungen Tab
def setup_bestellungen_tab(tab):
    # Displaying BestellNr, Datum, Gesamtpreis
    # For now, this is a placeholder list
    orders = [("1", "2023-01-01", "100.50"), ("2", "2023-01-02", "200.75")]
    total = sum(float(order[2]) for order in orders)

    orders_label = tk.Label(tab, text="Orders")
    orders_label.pack()

    for order in orders:
        tk.Label(tab, text=f"BestellNr: {order[0]}, Datum: {order[1]}, Gesamtpreis: {order[2]}").pack()

    total_label = tk.Label(tab, text=f"Total: {total}")
    total_label.pack(side=tk.RIGHT)

# Setup Daten Tab
def setup_daten_tab(tab):
    tk.Label(tab, text="Vorname, Nachname, Adresse etc.").pack()

    delete_account_button = tk.Button(tab, text="Account Löschen")
    delete_account_button.pack(side=tk.RIGHT)

# Create the main login window
root = tk.Tk()
root.title("Login")

vorname_label = tk.Label(root, text="Vorname")
vorname_label.pack()
vorname_entry = tk.Entry(root)
vorname_entry.pack()

name_label = tk.Label(root, text="Name")
name_label.pack()
name_entry = tk.Entry(root)
name_entry.pack()

login_button = tk.Button(root, text="Login", command=login)
login_button.pack()

root.mainloop()
