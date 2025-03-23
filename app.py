from flask import Flask

app = Flask(__name__)

happy = 40
pleaseHappy= 50

@app.route("/wish")
def pleaseHappyRegretadd():
    return "Hello, Jenkins"


if __name__ == "__main__":
    app.run(host = "0.0.0.0", port="5000")


# 0.0.0.0 ==> all traffic
# the default port no is always 5000