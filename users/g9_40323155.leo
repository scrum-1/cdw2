<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<<<<<<< HEAD:users/s2b/g1/40123144.leo
<v t="leo.20160310101514.2" a="E"><vh>@path ./../../</vh>
<v t="leo.20160421191652.1"><vh>scrum40123144_task1.py</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160310101514.2"></t>
<t tx="leo.20160421191652.1"># 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 scrum40123144_task1, 並且 url 前綴為 /bg1, 並設定 template 存放目錄
scrum40123144_task1 = Blueprint('scrum40123144_task1', __name__, url_prefix='/bg1', template_folder='templates')

# scrum40123144_task1 為完整可以單獨執行的繪圖程式
@scrum40123144_task1.route('/scrum40123144_task1')
def task1():
    outstring = '''
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;網際 2D 繪圖&lt;/title&gt;
    &lt;!-- IE 9: display inline SVG --&gt;
    &lt;meta http-equiv="X-UA-Compatible" content="IE=9"&gt;
&lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;script&gt;
window.onload=function(){
brython(1);
}
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
&lt;script type="text/python"&gt;
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
    # basic1 轉 120 度
    basic1.rotate(120)
    basic2 = cmbr.dup()
    basic2.rotate(60)
    basic2.translate(0, -20)
    
    basic3 = cmbr.dup()
    basic3.rotate(60)
    basic3.translate(20*math.cos(30*deg), 20*math.sin(30*deg))
    
    basic4 = cmbr.dup()
    basic4.rotate(120)
    basic4.translate(20*math.cos(30*deg), -20*math.sin(30*deg)-20)
    
    basic5 = cmbr.dup()
    basic5.translate(2*20*math.cos(30*deg), 0)
    
    cmbr.appendPath(basic1)
    cmbr.appendPath(basic2)
    cmbr.appendPath(basic3)
    cmbr.appendPath(basic4)
    cmbr.appendPath(basic5)
    
    # hole 為原點位置
    hole = cobj(shapedefs.circle(4), "PATH")
    cmbr.appendPath(hole)
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)
O(0, 0, 0, 0, 0, "lightyellow", True, 4)
&lt;/script&gt;
&lt;!-- 以協同方式加上 ag100 的 scrum-2 組員所寫的 task1 程式碼 --&gt;
&lt;!-- &lt;script type="text/python" src="/ag100/scrum2_task1"&gt;&lt;/script&gt; --&gt;
&lt;!-- 以協同方式加上 ag100 的  scrum-3 組員所寫的 task1 程式碼 --&gt;
&lt;!-- &lt;script type="text/python" src="/ag100/scrum3_task1"&gt;&lt;/script&gt; --&gt;
&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring
    
</t>
=======
<v t="leo.20160307113123.2" a="E"><vh>@path ./../</vh>
<v t="leo.20160307113127.1"><vh>@edit cdw2_1.py</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160307113123.2"></t>
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8:users/g9_40323155.leo
</tnodes>
</leo_file>
