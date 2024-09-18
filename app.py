#membuat API dengan database mysql
from flask import Flask,request,jsonify
from datetime import datetime
import pymysql
# import mysql.connector

# Fungsi untuk koneksi ke database


# Membuat Object app
app = Flask(__name__)

# KONFIGURASI DB MYSQL 

# connection = None
try:
    connection = pymysql.connect(
        host = 'localhost', #alamat server database
        user = 'root',
        password = 'ITsurabaya@)20',
        database = 'router_monitoring'
    )
except pymysql.MySQLError as e:
    print ("Tidak dapat terhubung ke database MySQL" + str(e))
except Exception as e:
    print (f"kesalahan umum : {e}")
finally:
    if connection:
        print("Berhasil terhubung ke database MySQL")
    else:
        print("Gagal terhubung ke database MySQL")

# FUNGSI UNTUK MENCATAT STATUS KE DATABASE MYSQL
try:
    def log_status (router_id,status):
        # Mendapatkan waktu saat ini untuk disimpan sebagai timestamp
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        #Membuat cursor untuk querry ke database
        with connection.cursor() as cursor:
            #Memasukan data kedatabase
            sql = 'INSERT INTO router_log (router_id,timestamp,status) VALUES (%s,%s,%s)'
            cursor.execute(sql,(router_id,timestamp,status))
            connection.commit()
            print(f"Data log status router {router_id} disimpan ke database")
except pymysql.MySQLError as err:
    print (f"terjadi kesalahan sintaks : {err}")

#Membuat route GET all data
@app.route('/route-data', methods=['GET'])

def get_router_data():
    #membuat router id agar menjadi parameter tambahan saat akan mensortir data by router id
    router_id = request.args.get('router_id')

    #Membuka koneksi dengan cursor
    with connection.cursor(pymysql.cursors.DictCursor) as cursor:
        #jika router id di isi, maka ?
        if router_id :
            sql = f"select * from router_log where router_id = {router_id} order by timestamp desc"
            cursor.execute(sql)
            print(f"data router_id = {router_id} berhasil ditampilkan")
        else :
            sql = f"select rm.router_name, rl.timestamp,rl.status from router_log rl JOIN router_master rm ON rl.router_id = rm.router_id order by timestamp desc"
            cursor.execute(sql)
            print(f"berhasil menampilkan semua data")
        #menampung hasil query
        result_log = cursor.fetchall()
        return jsonify(result_log),200

    # with connection.cursor(pymysql.cursors.DictCursor) as cursor:
    #     sql = 'select * from router_log'
    #     cursor.execute(sql)
    #     result = cursor.fetchall()
    #     return jsonify(result),200
    
#Mebuat route post data POST
@app.route('/route-status', methods=['POST'])
def route_status():
    #Mendapatkan data JSON yang dikirimkan oleh the dude
    data = request.get_json()
    
    #Mendapatkan data nilai router id dan status
    router_id = data.get('router_id')
    status = data.get('status')
    log_status(router_id,status)
    return jsonify({'message': 'Status router berhasil disimpan'}),200
    
if __name__== '__main__':
    app.run(host='0.0.0.0',port =5000 ,debug=True) #Menjalankan server di port 5000


    


    




        





