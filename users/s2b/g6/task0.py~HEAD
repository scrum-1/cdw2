# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template, make_response

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
bg6 = Blueprint('bg6', __name__, url_prefix='/bg6', template_folder='templates')

    

# 展示傳回 Brython 程式
@bg6.route('/task2')
def task2():
    outstring = '''
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>網際 2D 繪圖</title>
    <!-- IE 9: display inline SVG -->
    <meta http-equiv="X-UA-Compatible" content="IE=9">
<script type="text/javascript" src="http://brython.info/src/brython_dist.js"></script>
<script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"></script>
<script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"></script>
<script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"></script>

</head>
<body>

<script>
window.onload=function(){
brython(1);
}
</script>

<canvas id="plotarea" width="800" height="800"></canvas>

<script type="text/python">
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")

cgo.setWorldCoords(-250, -250, 500, 500) 

# 決定要不要畫座標軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
        

</script>




'''
    return outstring
    

@bg6.route('/task2_tail')
def task2_tail():
    return "</body></html>"
    
   
 
@bg6.route('/task2_ABCD')
def task2_ABCD():
    outstring = task2()
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_A'></script>"
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_B'></script>"
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_C'></script>"
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_D'></script>"
    outstring += task2_tail()
    return outstring  

