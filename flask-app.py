# flask-app.py
from flask import Flask,render_template,request
import json
import os

app = Flask(__name__)

@app.route('/hello', methods=['GET'])
def hello_world():
    content = os.environ.get('ALT_GREETING')
    return render_template('index.html', cmap=content)

if __name__ == "__main__":
	# for debugging locally
	#app.run(debug=True, host='0.0.0.0',port=5004)
	
	# for production
	app.run(host='0.0.0.0', port=5005)
