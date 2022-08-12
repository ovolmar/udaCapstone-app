from flask import Flask
import time 

startTime = time.time()

app = Flask(__name__)

@app.route("/")
def home():
    html = f"<h3>** Project UdaCapstone: AKA Operation Treadstone  ** </h3>"
    return html.format(format)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80
    print ('The script took {0} seconds !'.format(time.time() - startTime))

