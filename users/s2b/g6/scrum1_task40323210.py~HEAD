#各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template, make_response

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum1_task40323210 = Blueprint('scrum1_task40323210', __name__, url_prefix='/bg6', template_folder='templates')

# scrum1_task1 為完整可以單獨執行的繪圖程式
@scrum1_task40323210.route('/scrum1_40323210_A')
def scrum1_40323210_A():
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
            
  # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    
    basic2 = cmbr.dup()
    basic2.rotate(-14.48)
    basic2.translate(0, 40)
    
 
    basic3 = cmbr.dup()
    basic3.rotate(14.48)
    basic3.translate(40-20*math.cos(75.52*deg), 40+20*math.sin(75.52*deg))
    
 
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "yellow", True, 4)


'''
    response = make_response(outstring)
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    response.headers['Access-Control-Allow-Origin'] = 'http://2016spring-bjli0148.rhcloud.com'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE'
    response.headers['Access-Control-Max-Age'] = '86400'
    return response
    
@scrum1_task40323210.route('/scrum1_40323210_B')
def scrum1_40323210_B():
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
    cgoChamber = window.svgToCgoSVG(chamber, 60, 20)
    cmbr = cobj(cgoChamber, "SHAPE", {
            "fillColor": color,
            "border": border,
            "strokeColor": "tan",
            "lineWidth": linewidth })
            
    
    basic1 = cmbr.dup()
    basic1.translate(0, 20)
    

    basic3 = cmbr.dup()
    basic3.translate(0, 40)
    

    basic5 = cmbr.dup()
    basic5.translate(-60, 0)
    basic5.rotate(-90)
    basic5.translate(60, 80)

    
    
    basic8 = cmbr.dup()
    basic8.translate(-60, 0)
    basic8.rotate(-120)
    basic8.translate(80, 80)
    

    
    basic13 = cmbr.dup()
    basic13.translate(20+20*math.cos(30*deg), 40+20*math.sin(30*deg))
    
    cmbr.appendPath(basic1)
   
    cmbr.appendPath(basic3)

    cmbr.appendPath(basic5)
  
    cmbr.appendPath(basic8)
 
    cmbr.appendPath(basic13)
    
    # hole 為原點位置
    #hole = cobj(shapedefs.circle(4), "PATH") 
    #cmbr.appendPath(hole) 

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "RED", True, 4)

'''
    response = make_response(outstring)
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    response.headers['Access-Control-Allow-Origin'] = 'http://2016spring-bjli0148.rhcloud.com'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE'
    response.headers['Access-Control-Max-Age'] = '86400'
    return response
    
    
    
@scrum1_task40323210.route('/scrum1_40323210_C')
def scrum1_40323210_C():
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
    

    
    basic6 = cmbr.dup()
    basic6.translate(-120, -50)
    basic6.rotate(90)
    basic6.translate(120+20*math.sin(15*deg)+20*math.sin(57.72*deg), 50+20*math.cos(15*deg)+20*math.cos(57.72*deg))
   
   
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    
    cmbr.appendPath(basic6)
    


  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "PURPLE", True, 4)



'''
    response = make_response(outstring)
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    response.headers['Access-Control-Allow-Origin'] = 'http://2016spring-bjli0148.rhcloud.com'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE'
    response.headers['Access-Control-Max-Age'] = '86400'
    return response


@scrum1_task40323210.route('/scrum1_40323210_D')
def scrum1_40323210_D():
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
 
    
    basic9 = cmbr.dup()
    basic9.translate(-180, 0)
    basic9.rotate(-37.54)
    basic9.translate(200+20*math.cos(45*deg), 20*math.sin(45*deg))
    
    basic10 = cmbr.dup()
    basic10.translate(20+20*math.cos(45*deg)+20*math.cos(52.46*deg), 20*math.sin(45*deg)+20*math.sin(52.46*deg))
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)

    cmbr.appendPath(basic9)
    cmbr.appendPath(basic10)
  

  
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
    
O(0, 0, 0, 0, 0, "GREEN", True, 4)


'''
    response = make_response(outstring)
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    response.headers['Access-Control-Allow-Origin'] = 'http://2016spring-bjli0148.rhcloud.com'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE'
    response.headers['Access-Control-Max-Age'] = '86400'
    return response
    
    
@scrum1_task40323210.route('/scrum1_task40323210_head')
def scrum1_task40323210_head():
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
    
    
@scrum1_task40323210.route('/scrum1_task40323210_tail')
def scrum1_task40323210_tail():
    return "</body></html>"


@scrum1_task40323210.route('/scrum1_task40323210_abcd')
def scrum1_task40323210_abcd():
    outstring = scrum1_task40323210_head()
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_A'></script>"
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_B'></script>"
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_C'></script>"
    outstring += "<script type='text/python' src='http://2016spring-bjli0148.rhcloud.com/bg6/scrum1_40323210_D'></script>"
    outstring += scrum1_task40323210_tail()
    return outstring