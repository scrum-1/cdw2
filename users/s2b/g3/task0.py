# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
bg3 = Blueprint('bg3', __name__, url_prefix='/bg3', template_folder='templates')

@bg3.route('/task0')
def task0():
    return "bg3 task0"
    
@bg3.route('/task1')
def task1():
    #return "bg3 task1"
    return render_template('task1.html', var1="來自 bg3 的 task1 變數")

# 展示傳回 Brython 程式
@bg3.route('/task2')
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
        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })

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

    # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    # basic1 轉 120 度
    basic1.rotate(120)
    basic2 = cmbr.dup()
    basic2.rotate(60)
    basic2.translate(0, -20)
    
    basic3 = cmbr.dup()
    basic3.rotate(60)
    basic3.translate(20*math.cos(30*deg), 20*math.sin(30*deg))
    
    basic4 = cmbr.dup()
    basic4.rotate(120)
    basic4.translate(20*math.cos(30*deg), -20*math.sin(30*deg)-20)
    
    basic5 = cmbr.dup()
    basic5.translate(2*20*math.cos(30*deg), 0)
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
</script>
<!-- 以協同方式加上 ag100 的 task3 程式碼 -->
<script type="text/python" src="/ag100/task3"></script>
<!-- 以協同方式加上 bg99 的 task3 程式碼 -->
<script type="text/python" src="/bg99/task3"></script>
</body>
</html>
'''
    return outstring
    
# 展示傳回 Brython 程式
@bg3.route('/task3')
def task3():
    outstring = '''
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
        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })

deg = math.pi/180  

def task3(x, y, rx, ry, rot, color, border, linewidth):
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

    # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    # basic1 轉 -60 度
    basic1.rotate(-60)

    cmbr.appendPath(basic1)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

task3(0, 0, 0, 0, 0, "red", True, 4)
'''
    return outstring
    #A的程式
@bg3.route('/ss1')
def solvespace1():
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

cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })

deg = math.pi/180  

def ss1(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M31.964 78.744 A7.000,7.000 0 0,0 39.250,75.828 A7.000,7.000 0 0,0 39.250,67.981 A7.000,7.000 0 0,0 31.964,65.065 A40.000,40.000 0 0,1 14.942,65.065 A7.000,7.000 0 0,0 7.656,67.981 A7.000,7.000 0 0,0 7.656,75.828 A7.000,7.000 0 0,0 14.942,78.744 A40.000,40.000 0 0,1 31.964,78.744 M20.293 73.394 A40.000,40.000 0 0,0 20.293,90.415 A7.000,7.000 0 0,1 17.377,97.701 A7.000,7.000 0 0,1 9.529,97.701 A7.000,7.000 0 0,1 6.613,90.415 A40.000,40.000 0 0,0 6.613,73.394 A7.000,7.000 0 0,1 9.529,66.108 A7.000,7.000 0 0,1 17.377,66.108 A7.000,7.000 0 0,1 20.293,73.394 M20.293 53.394 A7.000,7.000 0 0,0 17.377,46.108 A7.000,7.000 0 0,0 9.529,46.108 A7.000,7.000 0 0,0 6.613,53.394 A40.000,40.000 0 0,1 6.613,70.415 A7.000,7.000 0 0,0 9.529,77.701 A7.000,7.000 0 0,0 17.377,77.701 A7.000,7.000 0 0,0 20.293,70.415 A40.000,40.000 0 0,1 20.293,53.394M24.731 35.711 A7.000,7.000 0 0,0 23.743,27.926 A7.000,7.000 0 0,0 16.147,25.950 A7.000,7.000 0 0,0 11.492,32.268 A40.000,40.000 0 0,1 7.208,48.742 A7.000,7.000 0 0,0 8.196,56.527 A7.000,7.000 0 0,0 15.792,58.502 A7.000,7.000 0 0,0 20.447,52.184 A40.000,40.000 0 0,1 24.731,35.711M29.713 16.389 A7.000,7.000 0 0,0 28.764,8.582 A7.000,7.000 0 0,0 21.159,6.584 A7.000,7.000 0 0,0 16.495,12.915 A40.000,40.000 0 0,1 12.237,29.395 A7.000,7.000 0 0,0 13.542,37.503 A7.000,7.000 0 0,0 21.652,38.791 A7.000,7.000 0 0,0 25.405,31.487 A40.000,40.000 0 0,1 29.713,16.389M55.381 32.347 A7.000,7.000 0 0,0 50.768,25.967 A7.000,7.000 0 0,0 43.138,27.913 A7.000,7.000 0 0,0 42.145,35.723 A41.009,41.009 0 0,1 46.554,52.252 A6.872,6.872 0 0,0 51.164,58.396 A6.872,6.872 0 0,0 58.589,56.429 A6.872,6.872 0 0,0 59.551,48.807 A39.004,39.004 0 0,1 55.381,32.347M50.375 12.915 A7.000,7.000 0 0,0 45.729,6.590 A7.000,7.000 0 0,0 38.131,8.553 A7.000,7.000 0 0,0 37.131,16.337 A40.000,40.000 0 0,1 41.389,32.817 A7.000,7.000 0 0,0 46.035,39.142 A7.000,7.000 0 0,0 53.633,37.179 A7.000,7.000 0 0,0 54.633,29.395 A40.000,40.000 0 0,1 50.375,12.915M51.931 78.740 A6.995,6.995 0 0,0 59.210,75.826M59.210 75.826 A6.995,6.995 0 0,0 59.211,67.985M59.211 67.985 A6.995,6.995 0 0,0 51.933,65.069M51.933 65.069 A40.033,40.033 0 0,1 34.938,65.068M34.938 65.068 A6.996,6.996 0 0,0 27.658,67.984M27.658 67.984 A6.996,6.996 0 0,0 27.659,75.827M27.659 75.827 A6.996,6.996 0 0,0 34.940,78.741M34.940 78.741 A39.977,39.977 0 0,1 51.931,78.740M60.452 73.730 A7.268,7.268 0 0,0 57.209,65.704M57.209 65.704 A7.268,7.268 0 0,0 48.587,66.473M48.587 66.473 A7.268,7.268 0 0,0 46.816,74.946M46.816 74.946 A41.262,41.262 0 0,1 46.528,91.093M46.528 91.093 A6.936,6.936 0 0,0 49.806,97.827M49.806 97.827 A6.936,6.936 0 0,0 57.293,97.657M57.293 97.657 A6.936,6.936 0 0,0 60.262,90.781M60.262 90.781 A38.689,38.689 0 0,1 60.452,73.730M46.577 70.415 A7.000,7.000 0 0,0 49.493,77.701M49.493 77.701 A7.000,7.000 0 0,0 57.341,77.701M57.341 77.701 A7.000,7.000 0 0,0 60.257,70.415M60.257 70.415 A40.000,40.000 0 0,1 60.257,53.394M60.257 53.394 A7.000,7.000 0 0,0 57.341,46.108M57.341 46.108 A7.000,7.000 0 0,0 49.493,46.108M49.493 46.108 A7.000,7.000 0 0,0 46.577,53.394M46.577 53.394 A40.000,40.000 0 0,1 46.577,70.415M41.968 20.020 A39.977,39.977 0 0,0 24.977,20.021M24.977 20.021 A6.996,6.996 0 0,1 17.696,17.106M17.696 17.106 A6.996,6.996 0 0,1 17.695,9.264M17.695 9.264 A6.996,6.996 0 0,1 24.975,6.347M24.975 6.347 A40.033,40.033 0 0,0 41.969,6.348M41.969 6.348 A6.995,6.995 0 0,1 49.247,9.265M49.247 9.265 A6.995,6.995 0 0,1 49.246,17.105M49.246 17.105 A6.995,6.995 0 0,1 41.968,20.020"
    #cgoChamber = window.svgToCgoSVG(chamber)
    # -centerx 為 x 座標的 offset 值, 也就是新原點位於 (centerx, centery)
    #cgoChamber = window.svgToCgoSVG(chamber, -centerx, -centery)
    cgoChamber = window.svgToCgoRHC(chamber, -107.373, -91.26)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 2 倍
    cgo.render(cmbr, x, y, 2, rot)

ss1(0, 0, 0, 0, 0, "red", True, 4)
</script>
</body>
</html>
'''
    return outstring
    #B
@bg3.route('/ss2')
def solvespace2():
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

cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })

deg = math.pi/180  

def ss1(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M20.293 54.942 A7.000,7.000 0 0,0 17.377,47.656 A7.000,7.000 0 0,0 9.529,47.656 A7.000,7.000 0 0,0 6.613,54.942 A40.000,40.000 0 0,1 6.613,71.964 A7.000,7.000 0 0,0 9.529,79.250 A7.000,7.000 0 0,0 17.377,79.250 A7.000,7.000 0 0,0 20.293,71.964 A40.000,40.000 0 0,1 20.293,54.942M31.323 86.785 A7.000,7.000 0 0,0 26.471,92.953 A7.000,7.000 0 0,0 30.395,99.750 A7.000,7.000 0 0,0 38.163,98.632 A40.000,40.000 0 0,1 52.904,90.121 A7.000,7.000 0 0,0 57.756,83.953 A7.000,7.000 0 0,0 53.832,77.156 A7.000,7.000 0 0,0 46.064,78.274 A40.000,40.000 0 0,1 31.323,86.785M57.613 64.942 A7.000,7.000 0 0,0 54.697,57.656 A7.000,7.000 0 0,0 46.850,57.656 A7.000,7.000 0 0,0 43.934,64.942 A40.000,40.000 0 0,1 43.934,81.964 A7.000,7.000 0 0,0 46.850,89.250 A7.000,7.000 0 0,0 54.697,89.250 A7.000,7.000 0 0,0 57.613,81.964 A40.000,40.000 0 0,1 57.613,64.942M31.323 46.785 A7.000,7.000 0 0,0 26.471,52.953 A7.000,7.000 0 0,0 30.395,59.750 A7.000,7.000 0 0,0 38.163,58.632 A40.000,40.000 0 0,1 52.904,50.121 A7.000,7.000 0 0,0 57.756,43.953 A7.000,7.000 0 0,0 53.832,37.156 A7.000,7.000 0 0,0 46.064,38.274 A40.000,40.000 0 0,1 31.323,46.785 M38.163 48.274 A40.000,40.000 0 0,0 52.904,56.785 A7.000,7.000 0 0,1 57.756,62.953 A7.000,7.000 0 0,1 53.832,69.750 A7.000,7.000 0 0,1 46.064,68.632 A40.000,40.000 0 0,0 31.323,60.121 A7.000,7.000 0 0,1 26.471,53.953 A7.000,7.000 0 0,1 30.395,47.156 A7.000,7.000 0 0,1 38.163,48.274M57.613 24.942 A7.000,7.000 0 0,0 54.697,17.656 A7.000,7.000 0 0,0 46.850,17.656 A7.000,7.000 0 0,0 43.934,24.942 A40.000,40.000 0 0,1 43.934,41.964 A7.000,7.000 0 0,0 46.850,49.250 A7.000,7.000 0 0,0 54.697,49.250 A7.000,7.000 0 0,0 57.613,41.964 A40.000,40.000 0 0,1 57.613,24.942M31.964 20.293 A7.000,7.000 0 0,0 39.250,17.377M39.250 17.377 A7.000,7.000 0 0,0 39.250,9.529M39.250 9.529 A7.000,7.000 0 0,0 31.964,6.613M31.964 6.613 A40.000,40.000 0 0,1 14.942,6.613M14.942 6.613 A7.000,7.000 0 0,0 7.656,9.529M7.656 9.529 A7.000,7.000 0 0,0 7.656,17.377M7.656 17.377 A7.000,7.000 0 0,0 14.942,20.293M14.942 20.293 A40.000,40.000 0 0,1 31.964,20.293M6.613 31.964 A40.000,40.000 0 0,0 6.613,14.942M6.613 14.942 A7.000,7.000 0 0,1 9.529,7.656M9.529 7.656 A7.000,7.000 0 0,1 17.377,7.656M17.377 7.656 A7.000,7.000 0 0,1 20.293,14.942M20.293 14.942 A40.000,40.000 0 0,0 20.293,31.964M20.293 31.964 A7.000,7.000 0 0,1 17.377,39.250M17.377 39.250 A7.000,7.000 0 0,1 9.529,39.250M9.529 39.250 A7.000,7.000 0 0,1 6.613,31.964M38.163 8.274 A7.000,7.000 0 0,0 30.395,7.156M30.395 7.156 A7.000,7.000 0 0,0 26.471,13.953M26.471 13.953 A7.000,7.000 0 0,0 31.323,20.121M31.323 20.121 A40.000,40.000 0 0,1 46.064,28.632M46.064 28.632 A7.000,7.000 0 0,0 53.832,29.750M53.832 29.750 A7.000,7.000 0 0,0 57.756,22.953M57.756 22.953 A7.000,7.000 0 0,0 52.904,16.785M52.904 16.785 A40.000,40.000 0 0,1 38.163,8.274M20.293 34.942 A40.000,40.000 0 0,0 20.293,51.964M20.293 51.964 A7.000,7.000 0 0,1 17.377,59.250M17.377 59.250 A7.000,7.000 0 0,1 9.529,59.250M9.529 59.250 A7.000,7.000 0 0,1 6.613,51.964M6.613 51.964 A40.000,40.000 0 0,0 6.613,34.942M6.613 34.942 A7.000,7.000 0 0,1 9.529,27.656M9.529 27.656 A7.000,7.000 0 0,1 17.377,27.656M17.377 27.656 A7.000,7.000 0 0,1 20.293,34.942M20.293 74.942 A40.000,40.000 0 0,0 20.293,91.964M20.293 91.964 A7.000,7.000 0 0,1 17.377,99.250M17.377 99.250 A7.000,7.000 0 0,1 9.529,99.250M9.529 99.250 A7.000,7.000 0 0,1 6.613,91.964M6.613 91.964 A40.000,40.000 0 0,0 6.613,74.942M6.613 74.942 A7.000,7.000 0 0,1 9.529,67.656M9.529 67.656 A7.000,7.000 0 0,1 17.377,67.656M17.377 67.656 A7.000,7.000 0 0,1 20.293,74.942M31.964 100.293 A40.000,40.000 0 0,0 14.942,100.293M14.942 100.293 A7.000,7.000 0 0,1 7.656,97.377M7.656 97.377 A7.000,7.000 0 0,1 7.656,89.529M7.656 89.529 A7.000,7.000 0 0,1 14.942,86.613M14.942 86.613 A40.000,40.000 0 0,0 31.964,86.613M31.964 86.613 A7.000,7.000 0 0,1 39.250,89.529M39.250 89.529 A7.000,7.000 0 0,1 39.250,97.377M39.250 97.377 A7.000,7.000 0 0,1 31.964,100.293M14.942 46.613 A40.000,40.000 0 0,0 31.964,46.613M31.964 46.613 A7.000,7.000 0 0,1 39.250,49.529M39.250 49.529 A7.000,7.000 0 0,1 39.250,57.377M39.250 57.377 A7.000,7.000 0 0,1 31.964,60.293M31.964 60.293 A40.000,40.000 0 0,0 14.942,60.293M14.942 60.293 A7.000,7.000 0 0,1 7.656,57.377M7.656 57.377 A7.000,7.000 0 0,1 7.656,49.529M7.656 49.529 A7.000,7.000 0 0,1 14.942,46.613"
    #cgoChamber = window.svgToCgoSVG(chamber)
    # -centerx 為 x 座標的 offset 值, 也就是新原點位於 (centerx, centery)
    #cgoChamber = window.svgToCgoSVG(chamber, -centerx, -centery)
    cgoChamber = window.svgToCgoRHC(chamber, -107.373, -91.26)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 2 倍
    cgo.render(cmbr, x, y, 2, rot)

ss1(0, 0, 0, 0, 0, "red", True, 4)
</script>
</body>
</html>
'''
    return outstring
    #C
@bg3.route('/ss3')
def solvespace3():
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

cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })

deg = math.pi/180  

def ss1(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M53.706 25.129 A7.000,7.000 0 0,0 61.514,24.340 A7.000,7.000 0 0,0 63.682,16.797 A7.000,7.000 0 0,0 57.485,11.982 A40.000,40.000 0 0,1 41.126,7.280 A7.000,7.000 0 0,0 33.318,8.070 A7.000,7.000 0 0,0 31.150,15.612 A7.000,7.000 0 0,0 37.347,20.427 A40.000,40.000 0 0,1 53.706,25.129M57.485 89.648 A7.000,7.000 0 0,0 63.683,84.831 A7.000,7.000 0 0,0 61.511,77.288 A7.000,7.000 0 0,0 53.701,76.503 A39.832,39.832 0 0,1 37.353,81.202 A7.000,7.000 0 0,0 31.151,86.014 A7.000,7.000 0 0,0 33.317,93.559 A7.000,7.000 0 0,0 41.126,94.350 A40.000,40.000 0 0,1 57.485,89.648M26.338 81.848 A7.000,7.000 0 0,0 23.813,74.212M23.813 74.212 A7.000,7.000 0 0,0 15.774,73.991M15.774 73.991 A7.000,7.000 0 0,0 12.832,81.476M20.275 42.304 A40.000,40.000 0 0,0 20.275,59.326M20.275 59.326 A7.000,7.000 0 0,1 17.359,66.612M17.359 66.612 A7.000,7.000 0 0,1 9.511,66.612M9.511 66.612 A7.000,7.000 0 0,1 6.595,59.326M6.595 59.326 A40.000,40.000 0 0,0 6.595,42.304M6.595 42.304 A7.000,7.000 0 0,1 9.511,35.018M9.511 35.018 A7.000,7.000 0 0,1 17.359,35.018M17.359 35.018 A7.000,7.000 0 0,1 20.275,42.304M25.677 25.337 A40.000,40.000 0 0,0 20.399,41.520M20.399 41.520 A7.000,7.000 0 0,1 15.368,47.543M15.368 47.543 A7.000,7.000 0 0,1 7.907,45.110M7.907 45.110 A7.000,7.000 0 0,1 7.394,37.279M7.394 37.279 A40.000,40.000 0 0,0 12.671,21.096M12.671 21.096 A7.000,7.000 0 0,1 17.702,15.073M17.702 15.073 A7.000,7.000 0 0,1 25.164,17.506M25.164 17.506 A7.000,7.000 0 0,1 25.677,25.337M20.399 60.110 A40.000,40.000 0 0,0 25.677,76.293M25.677 76.293 A7.000,7.000 0 0,1 25.163,84.124M25.163 84.124 A7.000,7.000 0 0,1 17.702,86.557M17.702 86.557 A7.000,7.000 0 0,1 12.671,80.534M12.671 80.534 A40.000,40.000 0 0,0 7.394,64.351M7.394 64.351 A7.000,7.000 0 0,1 7.907,56.520M7.907 56.520 A7.000,7.000 0 0,1 15.368,54.087M15.368 54.087 A7.000,7.000 0 0,1 20.399,60.110M39.311 20.278 A40.000,40.000 0 0,0 23.847,27.392M23.847 27.392 A7.000,7.000 0 0,1 16.009,27.788M16.009 27.788 A7.000,7.000 0 0,1 12.729,20.658M12.729 20.658 A7.000,7.000 0 0,1 18.130,14.964M18.130 14.964 A40.000,40.000 0 0,0 33.594,7.851M33.594 7.851 A7.000,7.000 0 0,1 41.432,7.455M41.432 7.455 A7.000,7.000 0 0,1 44.711,14.585M44.711 14.585 A7.000,7.000 0 0,1 39.311,20.278M33.594 93.779 A40.000,40.000 0 0,0 18.130,86.666M18.130 86.666 A7.000,7.000 0 0,1 12.729,80.972M12.729 80.972 A7.000,7.000 0 0,1 16.009,73.842M16.009 73.842 A7.000,7.000 0 0,1 23.847,74.238M23.847 74.238 A40.000,40.000 0 0,0 39.311,81.351M39.311 81.351 A7.000,7.000 0 0,1 44.711,87.045M44.711 87.045 A7.000,7.000 0 0,1 41.432,94.175M41.432 94.175 A7.000,7.000 0 0,1 33.594,93.779"
    #cgoChamber = window.svgToCgoSVG(chamber)
    # -centerx 為 x 座標的 offset 值, 也就是新原點位於 (centerx, centery)
    #cgoChamber = window.svgToCgoSVG(chamber, -centerx, -centery)
    cgoChamber = window.svgToCgoRHC(chamber, -107.373, -91.26)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 2 倍
    cgo.render(cmbr, x, y, 2, rot)

ss1(0, 0, 0, 0, 0, "red", True, 4)
</script>
</body>
</html>
'''
    return outstring
    #D
@bg3.route('/ss4')
def solvespace4():
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

cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })

deg = math.pi/180  

def ss1(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M30.732 87.004 A7.000,7.000 0 0,0 26.454,93.583 A7.000,7.000 0 0,0 30.973,99.999 A7.000,7.000 0 0,0 38.609,98.187 A40.000,40.000 0 0,1 52.525,88.385 A7.000,7.000 0 0,0 56.803,81.806 A7.000,7.000 0 0,0 52.283,75.390 A7.000,7.000 0 0,0 44.648,77.202 A40.000,40.000 0 0,1 30.732,87.004M63.434 67.665 A7.000,7.000 0 0,0 63.652,59.820 A7.000,7.000 0 0,0 56.450,56.703 A7.000,7.000 0 0,0 50.880,62.231 A40.000,40.000 0 0,1 44.119,77.852 A7.000,7.000 0 0,0 43.900,85.697 A7.000,7.000 0 0,0 51.102,88.814 A7.000,7.000 0 0,0 56.673,83.286 A40.000,40.000 0 0,1 63.434,67.665M64.588 45.071 A7.000,7.000 0 0,0 61.672,37.785 A7.000,7.000 0 0,0 53.824,37.785 A7.000,7.000 0 0,0 50.909,45.071 A40.000,40.000 0 0,1 50.909,62.092 A7.000,7.000 0 0,0 53.824,69.378 A7.000,7.000 0 0,0 61.672,69.378 A7.000,7.000 0 0,0 64.588,62.092 A40.000,40.000 0 0,1 64.588,45.071M56.380 23.895 A7.000,7.000 0 0,0 50.728,18.450 A7.000,7.000 0 0,0 43.573,21.674 A7.000,7.000 0 0,0 43.908,29.515 A40.000,40.000 0 0,1 50.901,45.033 A7.000,7.000 0 0,0 56.552,50.478 A7.000,7.000 0 0,0 63.707,47.254 A7.000,7.000 0 0,0 63.372,39.414 A40.000,40.000 0 0,1 56.380,23.895M31.964 20.293 A7.000,7.000 0 0,0 39.250,17.377M39.250 17.377 A7.000,7.000 0 0,0 39.250,9.529M39.250 9.529 A7.000,7.000 0 0,0 31.964,6.613M31.964 6.613 A40.000,40.000 0 0,1 14.942,6.613M14.942 6.613 A7.000,7.000 0 0,0 7.656,9.529M7.656 9.529 A7.000,7.000 0 0,0 7.656,17.377M7.656 17.377 A7.000,7.000 0 0,0 14.942,20.293M14.942 20.293 A40.000,40.000 0 0,1 31.964,20.293M6.613 31.964 A40.000,40.000 0 0,0 6.613,14.942M6.613 14.942 A7.000,7.000 0 0,1 9.529,7.656M9.529 7.656 A7.000,7.000 0 0,1 17.377,7.656M17.377 7.656 A7.000,7.000 0 0,1 20.293,14.942M20.293 14.942 A40.000,40.000 0 0,0 20.293,31.964M20.293 31.964 A7.000,7.000 0 0,1 17.377,39.250M17.377 39.250 A7.000,7.000 0 0,1 9.529,39.250M9.529 39.250 A7.000,7.000 0 0,1 6.613,31.964M38.718 8.840 A7.000,7.000 0 0,0 31.126,6.851M31.126 6.851 A7.000,7.000 0 0,0 26.459,13.160M26.459 13.160 A7.000,7.000 0 0,0 30.583,19.837M30.583 19.837 A40.000,40.000 0 0,1 44.267,29.960M44.267 29.960 A7.000,7.000 0 0,0 51.859,31.949M51.859 31.949 A7.000,7.000 0 0,0 56.526,25.640M56.526 25.640 A7.000,7.000 0 0,0 52.402,18.962M52.402 18.962 A40.000,40.000 0 0,1 38.718,8.840M20.293 34.942 A40.000,40.000 0 0,0 20.293,51.964M20.293 51.964 A7.000,7.000 0 0,1 17.377,59.250M17.377 59.250 A7.000,7.000 0 0,1 9.529,59.250M9.529 59.250 A7.000,7.000 0 0,1 6.613,51.964M6.613 51.964 A40.000,40.000 0 0,0 6.613,34.942M6.613 34.942 A7.000,7.000 0 0,1 9.529,27.656M9.529 27.656 A7.000,7.000 0 0,1 17.377,27.656M17.377 27.656 A7.000,7.000 0 0,1 20.293,34.942M20.293 54.942 A40.000,40.000 0 0,0 20.293,71.964M20.293 71.964 A7.000,7.000 0 0,1 17.377,79.250M17.377 79.250 A7.000,7.000 0 0,1 9.529,79.250M9.529 79.250 A7.000,7.000 0 0,1 6.613,71.964M6.613 71.964 A40.000,40.000 0 0,0 6.613,54.942M6.613 54.942 A7.000,7.000 0 0,1 9.529,47.656M9.529 47.656 A7.000,7.000 0 0,1 17.377,47.656M17.377 47.656 A7.000,7.000 0 0,1 20.293,54.942M20.293 74.942 A40.000,40.000 0 0,0 20.293,91.964M20.293 91.964 A7.000,7.000 0 0,1 17.377,99.250M17.377 99.250 A7.000,7.000 0 0,1 9.529,99.250M9.529 99.250 A7.000,7.000 0 0,1 6.613,91.964M6.613 91.964 A40.000,40.000 0 0,0 6.613,74.942M6.613 74.942 A7.000,7.000 0 0,1 9.529,67.656M9.529 67.656 A7.000,7.000 0 0,1 17.377,67.656M17.377 67.656 A7.000,7.000 0 0,1 20.293,74.942M31.964 100.293 A40.000,40.000 0 0,0 14.942,100.293M14.942 100.293 A7.000,7.000 0 0,1 7.656,97.377M7.656 97.377 A7.000,7.000 0 0,1 7.656,89.529M7.656 89.529 A7.000,7.000 0 0,1 14.942,86.613M14.942 86.613 A40.000,40.000 0 0,0 31.964,86.613M31.964 86.613 A7.000,7.000 0 0,1 39.250,89.529M39.250 89.529 A7.000,7.000 0 0,1 39.250,97.377M39.250 97.377 A7.000,7.000 0 0,1 31.964,100.293"
    #cgoChamber = window.svgToCgoSVG(chamber)
    # -centerx 為 x 座標的 offset 值, 也就是新原點位於 (centerx, centery)
    #cgoChamber = window.svgToCgoSVG(chamber, -centerx, -centery)
    cgoChamber = window.svgToCgoRHC(chamber, -107.373, -91.26)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 放大 2 倍
    cgo.render(cmbr, x, y, 2, rot)

ss1(0, 0, 0, 0, 0, "red", True, 4)
</script>
</body>
</html>
'''
    return outstring