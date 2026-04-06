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

def get_local_ip():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
    finally:
        s.close()
    return ip

if __name__ == "__main__":
    ip = get_local_ip()

    print("\n=======================================")
    print(f"Servidor NFC activo en:")
    print(f"http://{ip}:5000/apagar")
    print("=======================================\n")

    app.run(host="0.0.0.0", port=5000)