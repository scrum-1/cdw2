# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum2_task40123224 = Blueprint('scrum2_task40123224', __name__, url_prefix='/g3', template_folder='templates')

# scrum1_task40123224 為完整可以單獨執行的繪圖程式
@scrum2_task40123224.route('/scrum2_task40123224')
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

    A1 = cmbr.dup()
    A1.rotate(150)
    A8 = cmbr.dup()
    A8.rotate(90)
    A8.translate(20,-20)
    B5 = cmbr.dup()
    B5.rotate(90)
    B5.translate(60,-20)
    B12 = cmbr.dup()
    B12.rotate(0)
    B12.translate(20*math.cos(30*deg)+80,-30)
    C3 = cmbr.dup()
    C3.rotate(45)
    C3.translate(20*math.sin(10*deg)+120, -20*math.cos(10*deg)-20)
    D1 = cmbr.dup()
    D1.translate(180, 0)
    D9 = cmbr.dup()
    D9.rotate(90)
    D9.translate(180, -60)
    cmbr.appendPath(A1)
    cmbr.appendPath(A8)
    cmbr.appendPath(B5)
    cmbr.appendPath(B12)
    cmbr.appendPath(C3)
    cmbr.appendPath(D1)
    cmbr.appendPath(D9)
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
    

    
    
