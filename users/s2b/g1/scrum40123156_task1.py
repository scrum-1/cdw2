# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 scrum40123156_task1, 並且 url 前綴為 /bg1, 並設定 template 存放目錄
scrum40123156_task1 = Blueprint('scrum40123156_task1', __name__, url_prefix='/bg1', template_folder='templates')

# scrum40123156_task1 為完整可以單獨執行的繪圖程式
@scrum40123156_task1.route('/scrum40123156_task1')
def task1():
    outstring = '''
<<<<<<< HEAD
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
    basic40123156_A_1 = cmbr.dup()
    basic40123156_A_1.rotate(187.07)
    basic40123156_A_1.translate(-40, 0)

    basic40123156_B_1 = cmbr.dup()
    basic40123156_B_1.rotate(60)
    basic40123156_B_1.translate(20, 0)

    basic40123156_B_2 = cmbr.dup()
    basic40123156_B_2.rotate(0)
    basic40123156_B_2.translate(0, 0)

    basic40123156_C_1 = cmbr.dup()
    basic40123156_C_1.rotate(180)
    basic40123156_C_1.translate(80, -10)

    basic40123156_D_1 = cmbr.dup()
    basic40123156_D_1.rotate(90)
    basic40123156_D_1.translate(160, -40)

    basic40123156_D_2 = cmbr.dup()
    basic40123156_D_2.rotate(180)
    basic40123156_D_2.translate(160, -40)
=======
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
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8

    cmbr.appendPath(basic40123156_A_1)
    cmbr.appendPath(basic40123156_B_1)
    cmbr.appendPath(basic40123156_B_2)
    cmbr.appendPath(basic40123156_C_1)
    cmbr.appendPath(basic40123156_D_1)
    cmbr.appendPath(basic40123156_D_2)
<<<<<<< HEAD

    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)
    # 表示放大 1 倍
    #cgo.render(cmbr, x, y, 1, rot)
    # 放大 1 倍
    cgo.render(cmbr, x, y, 1, rot)
O(0, 0, 0, 0, 0, "purple", True, 4)
=======
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8
'''
    return outstring
    
