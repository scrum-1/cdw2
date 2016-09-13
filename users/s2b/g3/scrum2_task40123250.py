# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum2_task40123250 = Blueprint('scrum2_task40123250', __name__, url_prefix='/g3', template_folder='templates')

# scrum1_task40123250 為完整可以單獨執行的繪圖程式
@scrum2_task40123250.route('/scrum2_task40123250')
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

    A2 = cmbr.dup()
    A2.rotate(0)
    A2.translate(0, -20)
    A9 = cmbr.dup()
    A9.translate(0,-40)
    B9 = cmbr.dup()
    B9.rotate(0)
    B9.translate(60,-40)
    B13 = cmbr.dup()
    B13.rotate(90)
    B13.translate(60,-60)
    C4 = cmbr.dup()
    C4.rotate(90)
    C4.translate(20*math.sin(10*deg)+120+20*math.sin(45*deg),-20*math.cos(10*deg)-20-20*math.cos(45*deg))
    D2 = cmbr.dup()
    D2.translate(180, 20)
    D10 = cmbr.dup()
    D10.rotate(120)
    D10.translate(200, -60)
    cmbr.appendPath(A2)
    cmbr.appendPath(A9)
    cmbr.appendPath(B9)
    cmbr.appendPath(B13)
    cmbr.appendPath(C4)
    cmbr.appendPath(D2)
    cmbr.appendPath(D10)
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)

O(0, 0, 0, 0, 0, "yellow", True, 4)
'''
    return outstring
    

    
    
