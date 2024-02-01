
"""
A simple web application; return the number of time it has been visited and also the amount of time that took to
run the difficult function.
"""

from flask import Flask, request
import subprocess

app = Flask(__name__)

@app.route('/scaleup', methods=['POST'])
def scale():
    subprocess.run(["./scale.sh", "app_name_web", "scaleup"])
    return '', 200

@app.route('/scaledown', methods=['POST'])
def scale_down():
    subprocess.run(["./scale.sh", "app_name_web", "scaledown"])
    return '', 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
