#各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum2_task40323252 = Blueprint('scrum2_task40323252', __name__, url_prefix='/bg11', template_folder='templates')

# scrum1_task1 為完整可以單獨執行的繪圖程式
@scrum2_task40323252.route('/scrum2_52_ABCD')
def scrum2_52_ABCD():
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
            
            
            
    cmbr.translate(0, 20)    
            
  # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.rotate(-30)
    basic2.translate(0, 40)
    
    basic3 = cmbr.dup()
    basic3.rotate(-90)
    basic3.translate(10, 40+20*math.cos(30*deg))
    
    basic4 = cmbr.dup()
    basic4.rotate(30)
    basic4.translate(40, 40)
    
    basic5 = cmbr.dup()
    basic5.translate(40, 20)
    
    basic6 = cmbr.dup()
    basic6.translate(40, 0)
    
    basic7 = cmbr.dup()
    basic7.rotate(-90)
    basic7.translate(0, 20)
    
    basic8 = cmbr.dup()
    basic8.rotate(-90)
    basic8.translate(20, 20)
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    cmbr.appendPath(basic7)
    cmbr.appendPath(basic8)
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "yellow", True, 4)
</script>

<script type="text/python" src="/bg9/scrum1_50_B"></script>
<script type="text/python" src="/bg9/scrum1_50_C"></script>
<script type="text/python" src="/bg9/scrum1_50_D"></script>

</body>
</html>
'''
    return outstring


@scrum2_task40323252.route('/scrum2_52_B')
def scrum2_52_B():
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
def O(x, y, rx, ry, rot, color, border, linewidth):
    # 旋轉必須要針對相對中心 rot not working yet
    chamber = "M -6.8397, -1.4894 \
                     A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
                     A 40, 40, 0, 0, 1, 6.8397, -18.511 \
                     A 7, 7, 0, 1, 0, -6.8397, -18.511 \
                     A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber, 60, 20)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
            
    
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.translate(0, 40)
    
    basic3 = cmbr.dup()
    basic3.translate(0, 40)
    
    basic4 = cmbr.dup()
    basic4.translate(0, 60)
    
    basic5 = cmbr.dup()
    basic5.translate(-60, 0)
    basic5.rotate(-90)
    basic5.translate(60, 80)

    basic6 = cmbr.dup()
    basic6.translate(-60, 0)
    basic6.rotate(-90)
    basic6.translate(60, 0)
    
    basic7 = cmbr.dup()
    basic7.translate(-60, 0)
    basic7.rotate(-60)
    basic7.translate(80, 0)
    
    
    basic8 = cmbr.dup()
    basic8.translate(-60, 0)
    basic8.rotate(-120)
    basic8.translate(80, 80)
    
    basic9 = cmbr.dup()
    basic9.translate(-60, 0)
    basic9.rotate(-90)
    basic9.translate(60, 40)
    
    basic10 = cmbr.dup()
    basic10.translate(-60, 0)
    basic10.rotate(-60)
    basic10.translate(80, 40)
    
    basic11 = cmbr.dup()
    basic11.translate(-60, 0)
    basic11.rotate(-120)
    basic11.translate(80, 40)
    
    basic12 = cmbr.dup()
    basic12.translate(20+20*math.cos(30*deg), 20*math.sin(30*deg))
    
    basic13 = cmbr.dup()
    basic13.translate(20+20*math.cos(30*deg), 40+20*math.sin(30*deg))
    
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
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "RED", True, 4)

'''
    return outstring


@scrum2_task40323252.route('/scrum2_52')
def scrum2_52():
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
    cgoChamber = window.svgToCgoSVG(chamber)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
            
            
            
    cmbr.translate(0, 20)    
            
 
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.rotate(-30)
    basic2.translate(0, 40)
    
    basic3 = cmbr.dup()
    basic3.translate(60, 0)
    
    
    basic4 = cmbr.dup()
    basic4.translate(60, 20)
    
    basic5 = cmbr.dup()
    basic5.rotate(-90)
    basic5.translate(0, 120)
   
    basic6 = cmbr.dup()
    basic6.translate(20, 120)
    
    basic7 = cmbr.dup()
    basic7.rotate(-90)
    basic7.translate(0, 140)
    
    basic8 = cmbr.dup()
    basic8.translate(0, 140)
    
    
    basic9 = cmbr.dup()
    basic9.rotate(-90)
    basic9.translate(0, 160)
    
    basic10 = cmbr.dup()
    basic10.translate(40, 120)
    
    basic11 = cmbr.dup()
    basic11.translate(40, 140)
    
    basic12 = cmbr.dup()
    basic12.rotate(-90)
    basic12.translate(40, 160)
    
    basic13 = cmbr.dup()
    basic13.translate(60, 140)
    
    basic14 = cmbr.dup()
    basic14.translate(60, 120)
    
    basic15 = cmbr.dup()
    basic15.rotate(-90)
    basic15.translate(40, 120)
    
    
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
    
O(0, 0, 0, 0, 0, "red", True, 4)



'''
    return outstring
    
@scrum2_task40323252.route('/scrum2_test')
def scrum2_test():
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
            
    
            
            
            
    cmbr.translate(0, 20)    
            
 
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.rotate(-30)
    basic2.translate(0, 40)
    
    basic3 = cmbr.dup()
    basic3.translate(60, 0)
    
    
    basic4 = cmbr.dup()
    basic4.translate(60, 20)
    
    basic5 = cmbr.dup()
    basic5.rotate(-90)
    basic5.translate(0, 120)
   
    basic6 = cmbr.dup()
    basic6.translate(20, 120)
    
    basic7 = cmbr.dup()
    basic7.rotate(-90)
    basic7.translate(0, 140)
    
    basic8 = cmbr.dup()
    basic8.translate(0, 140)
    
    
    basic9 = cmbr.dup()
    basic9.rotate(-90)
    basic9.translate(0, 160)
    
    basic10 = cmbr.dup()
    basic10.translate(40, 120)
    
    basic11 = cmbr.dup()
    basic11.translate(40, 140)
    
    basic12 = cmbr.dup()
    basic12.rotate(-90)
    basic12.translate(40, 160)
    
    basic13 = cmbr.dup()
    basic13.translate(60, 140)
    
    basic14 = cmbr.dup()
    basic14.translate(60, 120)
    
    basic15 = cmbr.dup()
    basic15.rotate(-90)
    basic15.translate(40, 120)
    
   
    
    
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
    
O(0, 0, 0, 0, 0, "red", True, 4)

</script>

'''
    return outstring
    
@scrum2_task40323252.route('/scrum2_class')
def scrum2_class():
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
            
    
            
            
            
    cmbr.translate(0, 220)    
    
    basic1 = cmbr.dup()
    basic1.translate(0, 20)  
    
    basic2 = cmbr.dup()
    basic2.translate(60, 20)  
    
    basic3 = cmbr.dup()
    basic3.translate(60, 0)    
    
    basic4 = cmbr.dup()
    basic4.translate(0, -220) 
    basic4.rotate(-90)
    basic4.translate(20, 240)
 
    basic5 = cmbr.dup()
    basic5.translate(0, -220) 
    basic5.rotate(-90)
    basic5.translate(40, 240)
    
    basic6 = cmbr.dup()
    basic6.translate(0, -220) 
    basic6.rotate(-90)
    basic6.translate(60, 240)
    
    basic7 = cmbr.dup()
    basic7.translate(0, -220) 
    basic7.rotate(-90)
    basic7.translate(60, 220)
    
    basic8 = cmbr.dup()
    basic8.translate(0, -220) 
    basic8.rotate(-90)
    basic8.translate(60, 200)
    
    basic9 = cmbr.dup()
    basic9.translate(0, -220) 
    basic9.rotate(-90)
    basic9.translate(20, 200)
    
    basic10 = cmbr.dup()
    basic10.translate(0, -220) 
    basic10.rotate(-90)
    basic10.translate(40, 200)
    
    basic11 = cmbr.dup()
    basic11.translate(0, -220) 
    basic11.rotate(-90)
    basic11.translate(20, 220)
    
    basic12 = cmbr.dup()
    basic12.translate(20, 20)
    
    basic13 = cmbr.dup()
    basic13.translate(40, 20)
    
    basic14 = cmbr.dup()
    basic14.translate(0, -220) 
    basic14.rotate(-90)
    basic14.translate(120, 220)
    
    basic15 = cmbr.dup()
    basic15.translate(0, -220) 
    basic15.rotate(-90)
    basic15.translate(120, 205)
    
    basic16 = cmbr.dup()
    basic16.translate(0, -220) 
    basic16.rotate(-90)
    basic16.translate(120, 235)
    
    basic17 = cmbr.dup()
    basic17.translate(0, -220) 
    basic17.rotate(45)
    basic17.translate(95, 265)
    
    basic18 = cmbr.dup()
    basic18.translate(0, -220) 
    basic18.rotate(-90)
    basic18.translate(120, 190)
    
    basic19 = cmbr.dup()
    basic19.translate(0, -220) 
    basic19.rotate(-90)
    basic19.translate(120, 170)
    
    basic20 = cmbr.dup()
    basic20.translate(100, -30) 
    
    basic21 = cmbr.dup()
    basic21.translate(120, -30) 
    
    basic22 = cmbr.dup()
    basic22.translate(140, 25) 
    
    basic23 = cmbr.dup()
    basic23.translate(160, 25) 
    
    basic24 = cmbr.dup()
    basic24.translate(0, -220) 
    basic24.rotate(-90)
    basic24.translate(160, 245)
    
    basic25 = cmbr.dup()
    basic25.translate(0, -220) 
    basic25.rotate(-90)
    basic25.translate(170, 205)
    
    basic26 = cmbr.dup()
    basic26.translate(0, -220) 
    basic26.rotate(-45)
    basic26.translate(170, 205)
    
    basic27 = cmbr.dup()
    basic27.translate(0, -220) 
    basic27.rotate(-45)
    basic27.translate(170-20*math.sin(45*deg), 175+20*math.cos(45*deg))
    
    basic28 = cmbr.dup()
    basic28.translate(0, -220) 
    basic28.rotate(45)
    basic28.translate(170-20*math.sin(45*deg), 175+20*math.cos(45*deg))
    
    basic29 = cmbr.dup()
    basic29.translate(0, -220) 
    basic29.rotate(225)
    basic29.translate(170-20*math.sin(45*deg), 175+20*math.cos(45*deg))
    
    basic30 = cmbr.dup()
    basic30.translate(0, -220) 
    basic30.rotate(-90)
    basic30.translate(230, 205)
    
    basic31 = cmbr.dup()
    basic31.translate(0, -220) 
    basic31.rotate(-90)
    basic31.translate(250, 205)
    
    basic32 = cmbr.dup()
    basic32.translate(0, -220) 
    basic32.rotate(-90)
    basic32.translate(230, 185)
    
    
    
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
    cmbr.appendPath(basic16)
    cmbr.appendPath(basic17)
    cmbr.appendPath(basic18)
    cmbr.appendPath(basic19)
    cmbr.appendPath(basic20)
    cmbr.appendPath(basic21)
    cmbr.appendPath(basic22)
    cmbr.appendPath(basic23)
    cmbr.appendPath(basic24)
    cmbr.appendPath(basic25)
    cmbr.appendPath(basic26)
    cmbr.appendPath(basic27)
    cmbr.appendPath(basic28)
    cmbr.appendPath(basic29)
    cmbr.appendPath(basic30)
    cmbr.appendPath(basic31)
    cmbr.appendPath(basic32)
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "brown", True, 4)

</script>

'''
    return outstring