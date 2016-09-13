<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20160421112304.1"><vh>@edit scrum2_task40323202.py</vh></v>
<v t="leo.20160421121120.1"><vh>@edit scrum2_40323202.html</vh></v>
<v t="amd.20160329211330.1"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh></v>
<v t="amd.20160329124554.2" a="E"><vh>@path ./../../../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160329174131.1"><vh>@path ag100</vh></v>
<v t="amd.20160329174139.1"><vh>@clean scrum2-20160414.md</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20160329124554.2"></t>
<t tx="amd.20160329124849.1"></t>
<t tx="amd.20160329124903.1"></t>
<t tx="amd.20160329163719.1"></t>
<t tx="amd.20160329163719.2">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="amd.20160329164739.1"></t>
<t tx="amd.20160329164739.2">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="amd.20160329174131.1"></t>
<t tx="amd.20160329174139.1">@language md
Title: 40323202-回報 bg4 初步繪圖主機與連結
Category: bg4
Tags: scrum2, task1, 40323202
Author: kmol
@others

bg4 組員 40323202 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://cdw2bg4-40323201.rhcloud.com/bg4/scrum1_task1"&gt;http://cdw2bg4-40323201.rhcloud.com/bg4/scrum1_task1&lt;/a&gt;

其中已經在主程式中導入 scrum2_task1.py 中的 scrum2_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.
</t>
<t tx="amd.20160329211330.1"></t>
<t tx="leo.20160421112304.1"> 各組分別在各自的 .py 程式中建立應用程式 (第1步/總共3步)
from flask import Blueprint, render_template

# 利用 Blueprint建立 ag1, 並且 url 前綴為 /ag1, 並設定 template 存放目錄
scrum2_task40323202 = Blueprint('scrum2_task40323202', __name__, url_prefix='/bg4', template_folder='templates')

# scrum2_task40323202 為完整可以單獨執行的繪圖程式
@scrum2_task40323202.route('/scrum2_B')
def scrum2_B():
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
# 畫軸線
cgo.drawAxes(0, 240, 0, 240, {
    "strokeColor":"#aaaaaa",
    "fillColor": "#aaaaaa",
    "xTickInterval": 20,
    "xLabelInterval": 20,
    "yTickInterval": 20,
    "yLabelInterval": 20})
 
deg = math.pi/180  
 
# 將繪製鏈條輪廓的內容寫成 class 物件
class chain():
    # 輪廓的外型設為成員變數
    chamber = "M -6.8397, -1.4894 \
            A 7, 7, 0, 1, 0, 6.8397, -1.4894 \
            A 40, 40, 0, 0, 1, 6.8397, -18.511 \
            A 7, 7, 0, 1, 0, -6.8397, -18.511 \
            A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"
    cgoChamber = window.svgToCgoSVG(chamber)
 
    # 利用鏈條起點與終點定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic(self, x1, y1, x2, y2, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(math.atan2(y2-y1, x2-x1)/deg+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
    # 利用鏈條起點與旋轉角度定義繪圖, 使用內定的 color, border 與 linewidth 變數
    def basic_rot(self, x1, y1, rot, color="green", border=True, linewidth=4, scale=1):
        self.x1 = x1
        self.y1 = y1
        self.rot = rot
        self.color = color
        self.border = border
        self.linewidth = linewidth
        self.scale = scale
        # 注意, cgo.Chamber 為成員變數
        cmbr = cobj(self.cgoChamber, "SHAPE", {
                "fillColor": color,
                "border": border,
                "strokeColor": "tan",
                "lineWidth": linewidth })
 
        # hole 為原點位置
        hole = cobj(shapedefs.circle(4), "PATH")
        cmbr.appendPath(hole)
        # 根據旋轉角度, 計算 x2 與 y2
        x2 = x1 + 20*math.cos(rot*deg)
        y2 = y1 + 20*math.sin(rot*deg)
 
        # 複製 cmbr, 然後命名為 basic1
        basic1 = cmbr.dup()
        # 因為鏈條的角度由原點向下垂直, 所以必須轉 90 度, 再考量 atan2 的轉角
        basic1.rotate(rot+90)
 
        # 放大 scale 倍
        cgo.render(basic1, x1, y1, scale, 0)
 
        return x2, y2
 
# 利用 chain class 建立案例, 對應到 mychain 變數
mychain = chain()


# 畫 B
# 左邊四個垂直單元
x1, y1 = mychain.basic_rot(0+ 65, 0, 90, color="yellow")
x2, y2 = mychain.basic_rot(x1, y1, 90, color="yellow")
x3, y3 = mychain.basic_rot(x2, y2, 90, color="yellow")
x4, y4 = mychain.basic_rot(x3, y3, 90, color="yellow")
# 上方一個水平單元
x5, y5 = mychain.basic_rot(x4, y4, 0, color="yellow")
# 右斜 -30 度
x6, y6 = mychain.basic_rot(x5, y5, -30, color="yellow")
# 右上垂直向下單元
x7, y7 = mychain.basic_rot(x6, y6, -90, color="yellow")
# 右斜 240 度
x8, y8 = mychain.basic_rot(x7, y7, 210, color="yellow")
# 中間水平
mychain.basic(x8, y8, x2, y2, color="yellow")
# 右下斜 -30 度
x10, y10 = mychain.basic_rot(x8, y8, -30, color="yellow")
# 右下垂直向下單元
x11, y11 = mychain.basic_rot(x10, y10, -90, color="yellow")
# 右下斜 240 度
x12, y12 = mychain.basic_rot(x11, y11, 210, color="yellow")
# 水平接回起點
mychain.basic(x12,y12, 0, 0, color="yellow")


&lt;/script&gt;
&lt;!-- 以協同方式加上 ag100 的 scrum-2 組員所寫的 task1 程式碼 --&gt;
&lt;!-- &lt;script type="text/python" src="/bg4/scrum2_task1"&gt;&lt;/script&gt;
&lt;!-- 以協同方式加上 ag100 的  scrum-3 組員所寫的 task1 程式碼 --&gt;
&lt;!-- &lt;script type="text/python" src="/bg4/scrum3_task1"&gt;&lt;/script&gt;

&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring</t>
</tnodes>
</leo_file>
