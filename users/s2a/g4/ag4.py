# 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
ag4 = Blueprint('ag4', __name__, url_prefix='/ag4', template_folder='templates')

# 展示傳回 Brython 程式
@ag4.route('/task1')
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
cgo.drawAxes(0, 5000, 0, 5000, {
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

    
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)

    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
</script>
<!-- 以協同方式加上 40323109 的 A 程式碼 -->
<script type="text/python" src="/ag4_40323109/A"></script>

<!-- 以協同方式加上 40323130 的 A 程式碼 -->
<script type="text/python" src="/ag4_40323130/A"></script>

<!-- 以協同方式加上 40323135 的 A 程式碼 -->
<script type="text/python" src="/ag4_40323135/A"></script>

<!-- 以協同方式加上 40323136 的 A 程式碼 -->
<script type="text/python" src="/ag4_40323136/A"></script>

<!-- 以協同方式加上 40323138 的 A 程式碼 -->
<script type="text/python" src="/ag4_40323138/A"></script>

<!-- 以協同方式加上 40323144 的 A 程式碼 -->
<script type="text/python" src="/ag4_40323144/A"></script>

<!-- 以協同方式加上 40323109 的 B 程式碼 -->
<script type="text/python" src="/ag4_40323109/B"></script>

<!-- 以協同方式加上 40323130 的 B 程式碼 -->
<script type="text/python" src="/ag4_40323130/B"></script>

<!-- 以協同方式加上 40323135 的 B 程式碼 -->
<script type="text/python" src="/ag4_40323135/B"></script>

<!-- 以協同方式加上 40323136 的 B 程式碼 -->
<script type="text/python" src="/ag4_40323136/B"></script>

<!-- 以協同方式加上 40323138 的 B 程式碼 -->
<script type="text/python" src="/ag4_40323138/B"></script>

<!-- 以協同方式加上 40323144 的 B 程式碼 -->
<script type="text/python" src="/ag4_40323144/B"></script>

<!-- 以協同方式加上 40323109 的 C 程式碼 -->
<script type="text/python" src="/ag4_40323109/C"></script>

<!-- 以協同方式加上 40323130 的 C 程式碼 -->
<script type="text/python" src="/ag4_40323130/C"></script>

<!-- 以協同方式加上 40323135 的 C 程式碼 -->
<script type="text/python" src="/ag4_40323135/C"></script>

<!-- 以協同方式加上 40323136 的 C 程式碼 -->
<script type="text/python" src="/ag4_40323136/C"></script>

<!-- 以協同方式加上 40323138 的 C 程式碼 -->
<script type="text/python" src="/ag4_40323138/C"></script>

<!-- 以協同方式加上 40323144 的 C 程式碼 -->
<script type="text/python" src="/ag4_40323144/C"></script>

<!-- 以協同方式加上 40323109 的 D 程式碼 -->
<script type="text/python" src="/ag4_40323109/D"></script>

<!-- 以協同方式加上 40323130 的 D 程式碼 -->
<script type="text/python" src="/ag4_40323130/D"></script>

<!-- 以協同方式加上 40323135 的 D 程式碼 -->
<script type="text/python" src="/ag4_40323135/D"></script>

<!-- 以協同方式加上 40323136 的 D 程式碼 -->
<script type="text/python" src="/ag4_40323136/D"></script>

<!-- 以協同方式加上 40323138 的 D 程式碼 -->
<script type="text/python" src="/ag4_40323138/D"></script>

<!-- 以協同方式加上 40323144 的 D 程式碼 -->
<script type="text/python" src="/ag4_40323144/D"></script>

</body>
</html>
'''
    return outstring