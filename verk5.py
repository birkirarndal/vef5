from sys import argv

import bottle
from bottle import *
# templates
@route("/")
def index():
    return template('form.tpl')

@post('/data')
def gogn():
    n = request.forms.get('nafn')
    h = request.forms.get('heimili')
    e = request.forms.get('email')
    s = request.forms.get('simi')
    m = request.forms.get('matur')
    nam = request.forms.getall('namsk')

    sum = 0
    for i in nam:
        sum += 3000
    sum = sum
    sumMVsk = 1.25 * sum

    return template('namskeid.tpl', n=n, h=h, e=e, s=s, m=m, nam=nam, sub=sum,total=sumMVsk)

@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root='./static')

######################################################
@error(404)
def villa(error):
    return "<h2 style='color:red'>Þessi síða finnst ekki</h2>"

#run(host='localhost', port=8080, reloader=True, debug=True)

bottle.run(host='0.0.0.0', port=argv[1])