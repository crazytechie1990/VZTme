import kivy
from kivy.lang import Builder
from kivymd.app import MDApp
import mysql.connector
from mysql.connector import errorcode


class VZTmeApp(MDApp):

    def build(self):
        self.theme_cls.theme_style = "Dark"
        self.theme_cls.primary_palette = "Green"

        # Define Database connection
        try:
            cnx = mysql.connector.connect(user='root',
                                          password='password')
        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print("Something is wrong with your user name or password")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print("Database does not exist")
            else:
                print(err)
        else:
            cnx.close()

        # Cursor
        cur = cnx.cursor()
        return Builder.load_file('login.kv')

        # Create database
        cur.execute("CREATE DATABASE IF NOT EXISTS home_db")

        # Check if database is created
        cur.execute("SHOW DATABASES")
        for db in cur:
            print(db)

    def logger(self):
        return None

    def clear(self):
        return None


if __name__ == '__main__':
    VZTmeApp().run()
