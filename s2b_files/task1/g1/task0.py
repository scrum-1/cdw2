# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
bg1 = Blueprint('bg1', __name__, url_prefix='/bg1', template_folder='templates')

@bg1.route('/task0')
def task0():
    return "bg1 task0"
    
@bg1.route('/task1')
def task1():
    #return "bg1 task1"
    return render_template('task1.html', var1="來自 bg1 的 task1 變數")

# 展示傳回 Brython 程式
@bg1.route('/task2')
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
<canvas id="plotarea" width="1000" height="1000"></canvas>
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

    # 複製 cmbr, 然後命名
    basic1A = cmbr.dup()
    # 轉角度
    basic1A.rotate(0)
    # 定位
    basic1A.translate(-70, 30)
    basic2A = cmbr.dup()
    basic2A.rotate(0)
    basic2A.translate(-30, 0)
    basic1B = cmbr.dup()
    basic1B.rotate(90)
    basic1B.translate(0, 80)
    basic2B = cmbr.dup()
    basic2B.rotate(120)
    basic2B.translate(20, 0)
    basic1C = cmbr.dup()
    basic1C.rotate(-120)
    basic1C.translate(100, 0)
    basic1D = cmbr.dup()
    basic1D.rotate(-300)
    basic1D.translate(180, 80)

    basic40123144_1 = cmbr.dup()
    basic40123144_1.rotate(194.49)
    basic40123144_1.translate(-40, 40)
    basic40123144_2 = cmbr.dup()
    basic40123144_2.rotate(180)
    basic40123144_2.translate(0, 20)
    basic40123144_3 = cmbr.dup()
    basic40123144_3.rotate(240)
    basic40123144_3.translate(37.32, 30)
    basic40123144_4 = cmbr.dup()
    basic40123144_4.rotate(180)
    basic40123144_4.translate(80, 14.14)
    basic40123144_5 = cmbr.dup()
    basic40123144_5.rotate(180)
    basic40123144_5.translate(160, 0)
    basic40123144_6 = cmbr.dup()
    basic40123144_6.rotate(90)
    basic40123144_6.translate(160, 0)

    basic40123156_A_1 = cmbr.dup()
    basic40123156_A_1.rotate(30)
    basic40123156_A_1.translate(-40, 40)
    basic40123156_B_1 = cmbr.dup()
    basic40123156_B_1.rotate(0)
    basic40123156_B_1.translate(0, 40)
    basic40123156_B_2 = cmbr.dup()
    basic40123156_B_2.rotate(60)
    basic40123156_B_2.translate(20, 40)
    basic40123156_C_1 = cmbr.dup()
    basic40123156_C_1.rotate(0)
    basic40123156_C_1.translate(80, 60)
    basic40123156_D_1 = cmbr.dup()
    basic40123156_D_1.rotate(0)
    basic40123156_D_1.translate(160, 20)
    basic40123156_D_2 = cmbr.dup()
    basic40123156_D_2.rotate(90)
    basic40123156_D_2.translate(160, 0)

    basic40123131_A_1 = cmbr.dup()
    basic40123131_A_1.rotate(90)
    basic40123131_A_1.translate(-60, 20)
    basic40123131_A_2 = cmbr.dup()
    basic40123131_A_2.rotate(150)
    basic40123131_A_2.translate(-60, 40)
    basic40123131_B_1 = cmbr.dup()
    basic40123131_B_1.rotate(90)
    basic40123131_B_1.translate(0, 0)
    basic40123131_B_2 = cmbr.dup()
    basic40123131_B_2.rotate(60)
    basic40123131_B_2.translate(20, 80)
    basic40123131_C_1 = cmbr.dup()
    basic40123131_C_1.rotate(90)
    basic40123131_C_1.translate(100, 0)
    basic40123131_D_1 = cmbr.dup()
    basic40123131_D_1.rotate(15)
    basic40123131_D_1.translate(180, 90)

    basic40123126_A_1 = cmbr.dup()
    basic40123126_A_1.rotate(0)
    basic40123126_A_1.translate(-80, 20)
    basic40123126_A_2 = cmbr.dup()
    basic40123126_A_2.rotate(0)
    basic40123126_A_2.translate(-40, 40)
    basic40123126_B_1 = cmbr.dup()
    basic40123126_B_1.rotate(0)
    basic40123126_B_1.translate(0, 20)
    basic40123126_B_2 = cmbr.dup()
    basic40123126_B_2.rotate(0)
    basic40123126_B_2.translate(40, 33)
    basic40123126_C_1 = cmbr.dup()
    basic40123126_C_1.rotate(30)
    basic40123126_C_1.translate(-40, 20)
    basic40123126_D_1 = cmbr.dup()
    basic40123126_D_1.rotate(90)
    basic40123126_D_1.translate(160, 80)

    basic5 = cmbr.dup()
    basic5.rotate(90)
    basic5.translate(-86.9458, 80)
    basic12 = cmbr.dup()
    basic12.rotate(0)
    basic12.translate(0, 80)
    basic19 = cmbr.dup()
    basic19.rotate(120)
    basic19.translate( 20, 40)
    basic26 = cmbr.dup()
    basic26.rotate(120)
    basic26.translate( 80, 70)
    basic33 = cmbr.dup()
    basic33.rotate(0)
    basic33.translate( 160, 60)
    basic40 = cmbr.dup()
    basic40.rotate(120)
    basic40.translate( 197.3, 10)

    basic40123133_A_1 = cmbr.dup()
    basic40123133_A_1.rotate(90)
    basic40123133_A_1.translate(-60, 20)
    basic40123133_A_2 = cmbr.dup()
    basic40123133_A_2.rotate(170)
    basic40123133_A_2.translate(-80, 60)
    basic40123133_B_1 = cmbr.dup()
    basic40123133_B_1.rotate(180)
    basic40123133_B_1.translate(40, 50)
    basic40123133_C_1 = cmbr.dup()
    basic40123133_C_1.rotate(90)
    basic40123133_C_1.translate(100, 80)
    basic40123133_D_1 = cmbr.dup()
    basic40123133_D_1.rotate(180)
    basic40123133_D_1.translate(160, 80)
    basic40123133_D_2 = cmbr.dup()
    basic40123133_D_2.rotate(180)
    basic40123133_D_2.translate(200, 30)

    cmbr.appendPath(basic1A)
    cmbr.appendPath(basic2A)
    cmbr.appendPath(basic1B)
    cmbr.appendPath(basic2B)
    cmbr.appendPath(basic1C)
    cmbr.appendPath(basic1D)
    cmbr.appendPath(basic40123144_1)
    cmbr.appendPath(basic40123144_2)
    cmbr.appendPath(basic40123144_3)
    cmbr.appendPath(basic40123144_4)
    cmbr.appendPath(basic40123144_5)
    cmbr.appendPath(basic40123144_6)
    cmbr.appendPath(basic40123156_A_1)
    cmbr.appendPath(basic40123156_B_1)
    cmbr.appendPath(basic40123156_B_2)
    cmbr.appendPath(basic40123156_C_1)
    cmbr.appendPath(basic40123156_D_1)
    cmbr.appendPath(basic40123156_D_2)
    cmbr.appendPath(basic40123131_A_1)
    cmbr.appendPath(basic40123131_A_2)
    cmbr.appendPath(basic40123131_B_1)
    cmbr.appendPath(basic40123131_B_2)
    cmbr.appendPath(basic40123131_C_1)
    cmbr.appendPath(basic40123131_D_1)
    cmbr.appendPath(basic40123126_A_1)
    cmbr.appendPath(basic40123126_A_2)
    cmbr.appendPath(basic40123126_B_1)
    cmbr.appendPath(basic40123126_B_2)
    cmbr.appendPath(basic40123126_C_1)
    cmbr.appendPath(basic40123126_D_1)
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic12)
    cmbr.appendPath(basic19)
    cmbr.appendPath(basic26)
    cmbr.appendPath(basic33)
    cmbr.appendPath(basic40)
    cmbr.appendPath(basic40123133_A_1)
    cmbr.appendPath(basic40123133_A_2)
    cmbr.appendPath(basic40123133_B_1)
    cmbr.appendPath(basic40123133_C_1)
    cmbr.appendPath(basic40123133_D_1)
    cmbr.appendPath(basic40123133_D_2)

    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "orange", True, 4)

</script>
<!-- 以協同方式加上 bg1 的 task3 程式碼 -->
<script type="text/python" src="/bg1/task3"></script>
<!-- 以協同方式加上 bg99 的 task3 程式碼 -->
<script type="text/python" src="/bg99/task3"></script>
</body>
</html>
'''
    return outstring

# 展示傳回 Brython 程式
@bg1.route('/task3')
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
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)

'''
    return outstring
