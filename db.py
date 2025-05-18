# db.py
import mysql.connector

def get_connection():
    return mysql.connector.connect(
        host='localhost',
        user='root',     # e.g., 'root'
        password='mysql',
        database='cleaning_platform'    # your MySQL database name
    )
