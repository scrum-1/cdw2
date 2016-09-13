# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
ag6 = Blueprint('ag6', __name__, url_prefix='/ag6', template_folder='templates')

# 展示傳回 Brython 程式
@ag6.route('/task1')
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

<canvas id="plotarea" width="3000" height="3000"></canvas>

<script type="text/python">
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")

cgo.setWorldCoords(-250, -4500, 5000, 5000) 

# 決定要不要畫座標軸線
#cgo.drawAxes(0, 5000, 0, 5000, {
#    "strokeColor":"#aaaaaa",
#   "fillColor": "#aaaaaa",
#    "xTickInterval": 20,
#    "xLabelInterval": 20,
#    "yTickInterval": 20,
#    "yLabelInterval": 20})
        
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

    
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
</script>
<!-- 以協同方式加上 40323112 的 A 程式碼 -->
<script type="text/python" src="/ag6_40323112/A"></script>

<!-- 以協同方式加上 40323133 的 A 程式碼 -->
<script type="text/python" src="/ag6_40323133/A"></script>

<!-- 以協同方式加上 40323147 的 A 程式碼 -->
<script type="text/python" src="/ag6_40323147/A"></script>

<!-- 以協同方式加上 40323152 的 A 程式碼 -->
<script type="text/python" src="/ag6_40323152/A"></script>

<!-- 以協同方式加上 40323155 的 A 程式碼 -->
<script type="text/python" src="/ag6_40323155/A"></script>

<!-- 以協同方式加上 40323156 的 A 程式碼 -->
<script type="text/python" src="/ag6_40323156/A"></script>

<!-- 以協同方式加上 40323112 的 B 程式碼 -->
<script type="text/python" src="/ag6_40323112/B"></script>

<!-- 以協同方式加上 40323133 的 B 程式碼 -->
<script type="text/python" src="/ag6_40323133/B"></script>

<!-- 以協同方式加上 40323147 的 B 程式碼 -->
<script type="text/python" src="/ag6_40323147/B"></script>

<!-- 以協同方式加上 40323152 的 B 程式碼 -->
<script type="text/python" src="/ag6_40323152/B"></script>

<!-- 以協同方式加上 40323155 的 B 程式碼 -->
<script type="text/python" src="/ag6_40323155/B"></script>

<!-- 以協同方式加上 40323156 的 B 程式碼 -->
<script type="text/python" src="/ag6_40323156/B"></script>

<!-- 以協同方式加上 40323112 的 C 程式碼 -->
<script type="text/python" src="/ag6_40323112/C"></script>

<!-- 以協同方式加上 40323133 的 C 程式碼 -->
<script type="text/python" src="/ag6_40323133/C"></script>

<!-- 以協同方式加上 40323147 的 C 程式碼 -->
<script type="text/python" src="/ag6_40323147/C"></script>

<!-- 以協同方式加上 40323152 的 C 程式碼 -->
<script type="text/python" src="/ag6_40323152/C"></script>

<!-- 以協同方式加上 40323155 的 C 程式碼 -->
<script type="text/python" src="/ag6_40323155/C"></script>

<!-- 以協同方式加上 40323156 的 C 程式碼 -->
<script type="text/python" src="/ag6_40323156/C"></script>

<!-- 以協同方式加上 40323112 的 D 程式碼 -->
<script type="text/python" src="/ag6_40323112/D"></script>

<!-- 以協同方式加上 40323133 的 D 程式碼 -->
<script type="text/python" src="/ag6_40323133/D"></script>

<!-- 以協同方式加上 40323147 的 D 程式碼 -->
<script type="text/python" src="/ag6_40323147/D"></script>

<!-- 以協同方式加上 40323152 的 D 程式碼 -->
<script type="text/python" src="/ag6_40323152/D"></script>

<!-- 以協同方式加上 40323155 的 D 程式碼 -->
<script type="text/python" src="/ag6_40323155/D"></script>

<!-- 以協同方式加上 40323156 的 D 程式碼 -->
<script type="text/python" src="/ag6_40323156/D"></script>

</body>
</html>
'''
    return outstring