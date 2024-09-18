import streamlit as st
import requests
import pandas as pd

# URL API GET request
API_URL = "http://192.168.88.223:5000/route-data"

# Fungsi untuk mendapatkan data dari API
def get_router_data ():
    try:
        response = requests.get(API_URL)
        if response.status_code == 200:
            return response.json()
        else:
            st.error(f"API Error: {response.status_code}")
            return []
    except Exception as e:
        st.error(f"Error fetching data from API: {str(e)}")
        return []
    
# JUDUL APLIKASI 
st.title("Monitoring data routers")

# MENGAMBIL DATA API 
data = get_router_data()

# JIKA DATA TIDAK KOSONG
if data:
    # MEMBUAT DATAFRAME DARI DATA API
    df = pd.DataFrame(data)

    #menampilkan data
    st.write("data dari log router")
    st.dataframe(df)
else:
    st.write("data tidak ditemukan ")
