# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 scrum40123133_task1, 並且 url 前綴為 /bg1, 並設定 template 存放目錄
<<<<<<< HEAD
bg1_task1 = Blueprint('bg1_task1', __name__, url_prefix='/bg1', template_folder='templates')

# scrum40123133_task1 為完整可以單獨執行的繪圖程式
@bg1_task1.route('/bg1_task1')
=======
scrum40123133_task1 = Blueprint('scrum40123133_task1', __name__, url_prefix='/bg1', template_folder='templates')

# scrum40123133_task1 為完整可以單獨執行的繪圖程式
@scrum40123133_task1.route('/scrum40123133_task1')
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8
def task1():
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

</script>
<<<<<<< HEAD

<!-- 以協同方式加上 bg1 的 scrum40123156 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123134_task1"></script>
<script type="text/python" src="/bg1/scrum40123129_task1"></script>
<script type="text/python" src="/bg1/scrum40123133_task1"></script>
<script type="text/python" src="/bg1/scrum40123126_task1"></script>
<script type="text/python" src="/bg1/scrum40123144_task1"></script>
<script type="text/python" src="/bg1/scrum40123126_task1"></script>
<script type="text/python" src="/bg1/scrum40123131_task1"></script>
<script type="text/python" src="/bg1/scrum40123156_task1"></script>
=======
<!-- 以協同方式加上 bg1 的 scrum40123126 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123126_task1/"></script>
<!-- 以協同方式加上 bg1 的 scrum40123129 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123129_task1/"></script>
<!-- 以協同方式加上 bg1 的 scrum40123131 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123131_task1/"></script>
<!-- 以協同方式加上 bg1 的 scrum40123133 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123133_task1/"></script>
<!-- 以協同方式加上 bg1 的 scrum40123134 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123134_task1/"></script>
<!-- 以協同方式加上 bg1 的 scrum40123144 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123144_task1/"></script>
<!-- 以協同方式加上 bg1 的 scrum40123156 組員所寫的 task1 程式碼 -->
<script type="text/python" src="/bg1/scrum40123156_task1/"></script>
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8
</body>
</html>
'''
    return outstring