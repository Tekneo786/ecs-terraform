from flask import Flask, jsonify
import socket
import os

app = Flask(__name__)

@app.route("/")
def index():
    return jsonify({
        "message": "ECS application running successfully",
        "hostname": socket.gethostname(),
        "environment": os.getenv("ENVIRONMENT", "not-set")
    })

@app.route("/health")
def health():
    return jsonify(status="healthy"), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
