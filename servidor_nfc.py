from flask import Flask, render_template
import os
import socket
hostname = socket.gethostname()
print(hostname)

app = Flask(__name__)

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

@app.route('/apagar')
def apagar():
    script = os.path.join(BASE_DIR, "apagar_nfc.vbs")
    os.startfile(script)
    return render_template("apagar.html")

if __name__ == "__main__":
    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)

    print("\n=======================================")
    print(f"Servidor NFC activo en:")
    print(f"http://{ip}:5000/apagar")
    print("=======================================\n")

    app.run(host="0.0.0.0", port=5000)