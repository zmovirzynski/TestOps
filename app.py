from flask import Flask, render_template
from parsers.junit_parser import parse_junit

app = Flask(__name__)

@app.route('/')
def dashboard():
    data = parse_junit('test_results/results.xml')
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
