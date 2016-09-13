# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 scrum40123131_task1, 並且 url 前綴為 /bg1, 並設定 template 存放目錄
scrum40123131_task1 = Blueprint('scrum40123131_task1', __name__, url_prefix='/bg1', template_folder='templates')

# scrum40123131_task1 為完整可以單獨執行的繪圖程式
@scrum40123131_task1.route('/scrum40123131_task1')
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
    # 複製 cmbr, 然後命名為 basic1
    basic1 = cmbr.dup()
    basic1.rotate(90)
    basic1.translate(-80, -20)
    
    basic2 = cmbr.dup()
    basic2.rotate(172.68)
    basic2.translate(-80, 0)

    basic3 = cmbr.dup()
    basic3.rotate(60)
    basic3.translate(20, 40)
    
    basic4 = cmbr.dup()
    basic4.rotate(90)
    basic4.translate(0, -40)
     
    basic5 = cmbr.dup()
    basic5.rotate(90)
    basic5.translate(99.95, -40)
    
    basic6 = cmbr.dup()
    basic6.rotate(24.71)
    basic6.translate(196.13, 28.17)
    


    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    cmbr.appendPath(basic6)
 


    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 1, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 1, rot)
O(0, 0, 0, 0, 0, "yellow", True, 4)
'''
    return outstring
    