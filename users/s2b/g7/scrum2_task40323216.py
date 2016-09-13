#各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum2_task40323216 = Blueprint('scrum2_task40323216', __name__, url_prefix='/bg7', template_folder='templates')

# scrum1_task1 為完整可以單獨執行的繪圖程式
@scrum2_task40323216.route('/scrum2_16_ABCD')
def scrum2_16_ABCD():
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
    basic2.rotate(-14.48)
    basic2.translate(0, 40)
    
    basic9 = cmbr.dup()
    basic9.rotate(-14.48)
    basic9.translate(20*math.cos(75.52*deg), 40+20*math.sin(75.52*deg))
    
    basic3 = cmbr.dup()
    basic3.rotate(-90)
    basic3.translate(10, 60+20*math.sin(75.52*deg))
    
    basic4 = cmbr.dup()
    basic4.rotate(14.48)
    basic4.translate(40, 40)
    
    basic10 = cmbr.dup()
    basic10.rotate(14.48)
    basic10.translate(40-20*math.cos(75.52*deg), 40+20*math.sin(75.52*deg))
    
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
    cmbr.appendPath(basic9)
    cmbr.appendPath(basic10)
    
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "yellow", True, 4)
</script>

<script type="text/python" src="/bg7/scrum2_16_B"></script>
<script type="text/python" src="/bg7/scrum2_16_C"></script>
<script type="text/python" src="/bg7/scrum2_16_D"></script>

</body>
</html>
'''
    return outstring


@scrum2_task40323216.route('/scrum2_16_B')
def scrum2_16_B():
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
    
    
    
@scrum2_task40323216.route('/scrum2_16_C')
def scrum2_16_C():
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
    cgoChamber = window.svgToCgoSVG(chamber, 120, 50)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
            
    
    basic1 = cmbr.dup()
    basic1.translate(-120, -50)
    basic1.rotate(15)
    basic1.translate(120, 30)
    
    basic2 = cmbr.dup()
    basic2.translate(-120, -50)
    basic2.rotate(57.72)
    basic2.translate(120+20*math.sin(15*deg), 30-20*math.cos(15*deg))
    
    basic3 = cmbr.dup()
    basic3.translate(-120, -50)
    basic3.rotate(90)
    basic3.translate(120+20*math.sin(15*deg)+20*math.sin(57.72*deg), 30-20*math.cos(15*deg)-20*math.cos(57.72*deg))
    
    basic4 = cmbr.dup()
    basic4.translate(-120, -50)
    basic4.rotate(165)
    basic4.translate(120, 50)
    
    basic5 = cmbr.dup()
    basic5.translate(-120, -50)
    basic5.rotate(122.28)
    basic5.translate(120+20*math.sin(15*deg), 50+20*math.cos(15*deg))
    
    basic6 = cmbr.dup()
    basic6.translate(-120, -50)
    basic6.rotate(90)
    basic6.translate(120+20*math.sin(15*deg)+20*math.sin(57.72*deg), 50+20*math.cos(15*deg)+20*math.cos(57.72*deg))
   
   
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "PURPLE", True, 4)



'''
    return outstring


@scrum2_task40323216.route('/scrum2_16_D')
def scrum2_16_D():
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
    cgoChamber = window.svgToCgoSVG(chamber, 180, 20)
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
    basic3.translate(0, 60)
    
    basic4 = cmbr.dup()
    basic4.translate(-180, 0)
    basic4.rotate(-90)
    basic4.translate(180, 80)
    
    basic5 = cmbr.dup()
    basic5.translate(-180, 0)
    basic5.rotate(-90)
    basic5.translate(180, 0)
    
    basic6 = cmbr.dup()
    basic6.translate(-180, 0)
    basic6.rotate(-45)
    basic6.translate(200, 0)
    
    basic7 = cmbr.dup()
    basic7.translate(-180, 0)
    basic7.rotate(-135)
    basic7.translate(200, 80)
    
    basic8 = cmbr.dup()
    basic8.translate(-180, 0)
    basic8.rotate(-142.46)
    basic8.translate(200+20*math.cos(45*deg), 80-20*math.sin(45*deg))
    
    basic9 = cmbr.dup()
    basic9.translate(-180, 0)
    basic9.rotate(-37.54)
    basic9.translate(200+20*math.cos(45*deg), 20*math.sin(45*deg))
    
    basic10 = cmbr.dup()
    basic10.translate(20+20*math.cos(45*deg)+20*math.cos(52.46*deg), 20*math.sin(45*deg)+20*math.sin(52.46*deg))
    
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
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "GREEN", True, 4)


'''
    return outstring