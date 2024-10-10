echo "from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return f'serveur {os.environ.get('HOSTNAME')}'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')" > TP_LB/tp-C/appli/app.py
