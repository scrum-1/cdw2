# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template, make_response

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
ag8_40323123 = Blueprint('ag8_40323123', __name__, url_prefix='/ag8_40323123', template_folder='templates')

# scrum1_task1 為完整可以單獨執行的繪圖程式
@ag8_40323123.route('/task1')
def task1():
    outstring = '''

from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")

cgo.setWorldCoords(-250, -400, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    
    basic4 = cmbr.dup()
    basic4.rotate(20)
    basic4.translate(31, 39)
    
    
    cmbr.appendPath(basic4)

    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)


cgo.setWorldCoords(-325
, -400, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    
    basic2 = cmbr.dup()
    basic2.rotate(90)
    basic2.translate(0, -20)
    
    basic3 = basic2.dup()
    basic3.rotate(90)
    basic3.translate(-20, 0)
    
    basic4 = cmbr.dup()
    basic4.rotate(120)
    basic4.translate(24*math.cos(30*deg), -13.25*math.sin(30*deg)-13.25)
    
    

    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)

    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)



cgo.setWorldCoords(-400, -415, 500, 500) 

deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    basic2 = cmbr.dup()
    basic2.rotate(30)
    basic2.translate(0, -20)
    
    
    cmbr.appendPath(basic2)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y,  0.85, rot)

O(0, 0, 0, 0, 0, "black", True, 4)



cgo.setWorldCoords(-250, -250, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    basic2 = cmbr.dup()
    basic2.rotate(0)
    basic2.translate(0, -20)
    
    
    basic5 = basic2.dup()
    basic5.rotate(90)
    basic5.translate(-20,-40)
    
    basic6 = basic5.dup()
    basic6.rotate(30)
    basic6.translate(0,-5)

    
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)

cgo.setWorldCoords(-325, -250, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    basic2 = cmbr.dup()
    basic2.rotate(0)
    basic2.translate(0, -20)

    
    basic5 = basic2.dup()
    basic5.rotate(90)
    basic5.translate(-20,-40)
    
    basic6 = basic5.dup()
    basic6.rotate(0)
    basic6.translate(20,0)
    
    
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)


cgo.setWorldCoords(-500, -250, 600, 500) 



deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth  })

    # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    # basic1 轉 120 度
    basic1.rotate(180)

    basic3 = basic1.dup()
    basic3.rotate(180)
    basic3.translate(0,40)
    
    basic4 = basic3.dup()
    basic4.rotate(-90)
    basic4.translate(-20,40)
    
    
    cmbr.appendPath(basic4)

    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)


    # 放大 5 倍
    cgo.render(cmbr, x, y, 1.25, rot)

O(0, 0, 0, 0, 0, "black", True, 4)
'''

    response = make_response(outstring)
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    response.headers['Access-Control-Allow-Origin'] = 'http://0426-2014w11.rhcloud.com'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE'
    response.headers['Access-Control-Max-Age'] = '86400'
    return response



    

@ag8_40323123.route('/task1_23')
def task1_23():
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

cgo.setWorldCoords(-250, -400, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    
    basic4 = cmbr.dup()
    basic4.rotate(20)
    basic4.translate(31, 39)
    
    
    cmbr.appendPath(basic4)

    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)


cgo.setWorldCoords(-325
, -400, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    
    basic2 = cmbr.dup()
    basic2.rotate(90)
    basic2.translate(0, -20)
    
    basic3 = basic2.dup()
    basic3.rotate(90)
    basic3.translate(-20, 0)
    
    basic4 = cmbr.dup()
    basic4.rotate(120)
    basic4.translate(24*math.cos(30*deg), -13.25*math.sin(30*deg)-13.25)
    
    

    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)

    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)



cgo.setWorldCoords(-400, -415, 500, 500) 

deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    basic2 = cmbr.dup()
    basic2.rotate(30)
    basic2.translate(0, -20)
    
    
    cmbr.appendPath(basic2)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y,  0.85, rot)

O(0, 0, 0, 0, 0, "black", True, 4)



cgo.setWorldCoords(-250, -250, 500, 500) 


# 決定要不要畫座標軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})

deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    basic2 = cmbr.dup()
    basic2.rotate(0)
    basic2.translate(0, -20)
    
    
    basic5 = basic2.dup()
    basic5.rotate(90)
    basic5.translate(-20,-40)
    
    basic6 = basic5.dup()
    basic6.rotate(30)
    basic6.translate(0,-5)

    
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)

cgo.setWorldCoords(-325, -250, 500, 500) 


deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })

    basic2 = cmbr.dup()
    basic2.rotate(0)
    basic2.translate(0, -20)

    
    basic5 = basic2.dup()
    basic5.rotate(90)
    basic5.translate(-20,-40)
    
    basic6 = basic5.dup()
    basic6.rotate(0)
    basic6.translate(20,0)
    
    
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "black", True, 4)


cgo.setWorldCoords(-500, -250, 600, 500) 



deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth  })

    # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    # basic1 轉 120 度
    basic1.rotate(180)

    basic3 = basic1.dup()
    basic3.rotate(180)
    basic3.translate(0,40)
    
    basic4 = basic3.dup()
    basic4.rotate(-90)
    basic4.translate(-20,40)
    
    
    cmbr.appendPath(basic4)

    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)


    # 放大 5 倍
    cgo.render(cmbr, x, y, 1.25, rot)

O(0, 0, 0, 0, 0, "black", True, 4)

</script>

'''
    return outstring

