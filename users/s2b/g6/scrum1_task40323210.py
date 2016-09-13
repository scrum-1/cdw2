#各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template, make_response

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum1_task40323210 = Blueprint('scrum1_task40323210', __name__, url_prefix='/bg6', template_folder='templates')

# scrum1_task1 為完整可以單獨執行的繪圖程式
<<<<<<< HEAD:users/s2b/g9/scrum2_task40323218.py
@scrum2_task40323218.route('/scrum2_18_1')
def scrum2_18_1():
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

        
#cgo.drawText("使用 Cango 繪圖程式庫!", 0, 0, {"fontSize":60, "fontWeight": 1200, "lorg":5 })
deg = math.pi/180  
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber,60 ,60)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
            
            
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.translate(-60, -60)    
    basic2.rotate(90)
    basic2.translate(2*20*math.cos(75.52*deg), 40+2*20*math.sin(75.52*deg))
    
    basic3 = cmbr.dup()
    basic3.translate(20, 80)
    
    basic4 = cmbr.dup()
    basic4.translate(20, 100)
   
    basic5 = cmbr.dup()
    basic5.translate(40, 100)
    
    basic6 = cmbr.dup()
    basic6.translate(40, 80)
    
    basic7 = cmbr.dup()
    basic7.translate(60, 100)
    
    basic8 = cmbr.dup()
    basic8.translate(60, 80)
    
    basic9 = cmbr.dup()
    basic9.translate(-60, -60)    
    basic9.rotate(-90)
    basic9.translate(120, 160)
    
    basic10 = cmbr.dup()
    basic10.translate(-60, -60)    
    basic10.rotate(-90)
    basic10.translate(120, 120)
    
    basic11 = cmbr.dup()
    basic11.translate(-60, -60)    
    basic11.rotate(-90)
    basic11.translate(120, 140)
    
    
    basic12 = cmbr.dup()
    basic12.translate(-60, -60)    
    basic12.rotate(165.52)
    basic12.translate(20*math.cos(75.52*deg), 40+20*math.sin(75.52*deg))
    
    basic13 = cmbr.dup()
    basic13.translate(-60, -60) 
    basic13.rotate(15)
    basic13.translate(120, 30)
    
    basic14 = cmbr.dup()
    basic14.translate(-60, -60) 
    basic14.rotate(57.72)
    basic14.translate(120+20*math.sin(15*deg), 30-20*math.cos(15*deg))
    
    basic15 = cmbr.dup()
    basic15.translate(120, 20)
      
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    cmbr.appendPath(basic7)
    cmbr.appendPath(basic8)
    cmbr.appendPath(basic9)
    cmbr.appendPath(basic10)
    cmbr.appendPath(basic11)
    cmbr.appendPath(basic12)
    cmbr.appendPath(basic13)
    cmbr.appendPath(basic14)
    cmbr.appendPath(basic15)
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "blue", True, 4)



'''
    response = make_response(outstring)
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    response.headers['Access-Control-Allow-Origin'] = 'http://2016spring-40323250.rhcloud.com'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE'
    response.headers['Access-Control-Max-Age'] = '86400'
    return response

    
    
@scrum2_task40323218.route('/scrum2_18_2')
def scrum2_18_2():
=======
@scrum1_task40323210.route('/scrum1_task40323210')
def task1():
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8:users/s2b/g6/scrum1_task40323210.py
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

<canvas id="plotarea2" width="800" height="800"></canvas>

<script type="text/python">
from javascript import JSConstructor
from browser import window
import math
cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea2")
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
    cgoChamber = window.svgToCgoSVG(chamber,0 ,0)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
            
            
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.translate(-60, -60)    
    basic2.rotate(90)
    basic2.translate(2*20*math.cos(75.52*deg), 40+2*20*math.sin(75.52*deg))
    
    basic3 = cmbr.dup()
    basic3.translate(20, 80)
    
    basic4 = cmbr.dup()
    basic4.translate(20, 100)
   
    basic5 = cmbr.dup()
    basic5.translate(40, 100)
    
    basic6 = cmbr.dup()
    basic6.translate(40, 80)
    
    basic7 = cmbr.dup()
    basic7.translate(60, 100)
    
    basic8 = cmbr.dup()
    basic8.translate(60, 80)
    
    basic9 = cmbr.dup()
    basic9.translate(-60, -60)    
    basic9.rotate(-90)
    basic9.translate(120, 160)
    
    basic10 = cmbr.dup()
    basic10.translate(-60, -60)    
    basic10.rotate(-90)
    basic10.translate(120, 120)
    
    basic11 = cmbr.dup()
    basic11.translate(-60, -60)    
    basic11.rotate(-90)
    basic11.translate(120, 140)
    
    
    basic12 = cmbr.dup()
    basic12.translate(-60, -60)    
    basic12.rotate(165.52)
    basic12.translate(20*math.cos(75.52*deg), 40+20*math.sin(75.52*deg))
    
    basic13 = cmbr.dup()
    basic13.translate(-60, -60) 
    basic13.rotate(15)
    basic13.translate(120, 30)
    
    basic14 = cmbr.dup()
    basic14.translate(-60, -60) 
    basic14.rotate(57.72)
    basic14.translate(120+20*math.sin(15*deg), 30-20*math.cos(15*deg))
    
    basic15 = cmbr.dup()
    basic15.translate(120, 20)
      
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    cmbr.appendPath(basic7)
    cmbr.appendPath(basic8)
    cmbr.appendPath(basic9)
    cmbr.appendPath(basic10)
    cmbr.appendPath(basic11)
    cmbr.appendPath(basic12)
    cmbr.appendPath(basic13)
    cmbr.appendPath(basic14)
    cmbr.appendPath(basic15)   
    
    
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "blue", True, 4)

</script>


'''
    return outstring