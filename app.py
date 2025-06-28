from flask import Flask
import psycopg2
app = Flask(__name__)

@app.route('/')
def home():
    try:
        #Connect to the postgreSQL database (service name =db)
        conn=psycopg2.connect(
                host="db",
                port="5432",
                user="postgres",
                password="postgres",
                dbname="mydb"
                )
        return "✅ Connected to PostgreSQL!"
    except Exception as e:
        return f"❌ Failed to connect: {e}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)


#print("Inside docker, Hello")
