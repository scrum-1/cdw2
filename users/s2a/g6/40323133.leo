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
<v t="leo.20160328091117.1"><vh>Task0 任務說明</vh></v>
<v t="leo.20160328091134.1"><vh>@edit index.html</vh></v>
<v t="leo.20160328094609.1" a="E"><vh>master 分支 flask 程式開發</vh>
<v t="leo.20160328094609.2"><vh>@edit ag6.py</vh></v>
<v t="leo.20160328114919.1"><vh>@edit ag6_40323133_task1.py</vh></v>
<v t="leo.20160328094609.3"><vh>@path templates</vh>
<v t="leo.20160328094609.4"><vh>@edit task1.html</vh></v>
</v>
<v t="leo.20160328094609.5"><vh>@path ./../../../</vh>
<v t="leo.20160328094609.6" a="E"><vh>@clean myflaskapp.py</vh>
<v t="leo.20160328094609.7"><vh>myflaskapp declarations</vh></v>
<v t="leo.20160328094609.8"><vh>index</vh></v>
<v t="leo.20160328094609.9"><vh>user</vh></v>
<v t="leo.20160328094609.10"><vh>red</vh></v>
<v t="leo.20160328094609.11"><vh>guessform</vh></v>
<v t="leo.20160328094609.12"><vh>docheck</vh></v>
<v t="leo.20160328094609.13"><vh>option</vh></v>
<v t="leo.20160328094609.14"><vh>optionaction</vh></v>
<v t="leo.20160328094609.15"><vh>fileaxupload</vh></v>
<v t="leo.20160328094609.16"><vh>fileuploadform</vh></v>
<v t="leo.20160328094609.17"><vh>download</vh></v>
</v>
<v t="leo.20160328094609.18"><vh>@path templates</vh></v>
</v>
</v>
<v t="leo.20160328091641.1"><vh>@path ./../../../2a_files/task0</vh>
<v t="leo.20160328091641.2"><vh>@edit 2016_cd_2a_1.txt</vh></v>
<v t="leo.20160328091641.3"><vh>@edit 2016_cd_2a_2.txt</vh></v>
<v t="leo.20160328091641.4"><vh>@edit 2016_cd_2a_3.txt</vh></v>
</v>
<v t="leo.20160411093002.2" a="E"><vh>Recovered Nodes</vh>
<v t="leo.20160411093002.3"><vh>Recovered node "myflaskapp declarations" from @clean myflaskapp.py</vh>
<v t="leo.20160411093002.4"><vh>old:myflaskapp declarations</vh></v>
<v t="leo.20160411093002.5"><vh>new:myflaskapp declarations</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160328091117.1">&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;!-- Created by Leo: http://leoeditor.com/leo_toc.html --&gt;
&lt;leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" &gt;
&lt;leo_header file_format="2"/&gt;
&lt;vnodes&gt;
&lt;v t="leo.20160328091134.1"&gt;&lt;vh&gt;@edit index.html&lt;/vh&gt;&lt;/v&gt;
&lt;/vnodes&gt;
&lt;tnodes&gt;
&lt;t tx="leo.20160328091134.1"&gt;@language html
&amp;lt;!DOCTYPE html&amp;gt;
&amp;lt;html&amp;gt;
&amp;lt;head&amp;gt;
    &amp;lt;meta charset="UTF-8"&amp;gt;
    &amp;lt;title&amp;gt;網際 2D 繪圖&amp;lt;/title&amp;gt;
    &amp;lt;!-- IE 9: display inline SVG --&amp;gt;
    &amp;lt;meta http-equiv="X-UA-Compatible" content="IE=9"&amp;gt;
&amp;lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&amp;gt;&amp;lt;/script&amp;gt;

&amp;lt;/head&amp;gt;
&amp;lt;body&amp;gt;

&amp;lt;script&amp;gt;
window.onload=function(){
brython(1);
}
&amp;lt;/script&amp;gt;

&amp;lt;canvas id="plotarea" width="800" height="800"&amp;gt;&amp;lt;/canvas&amp;gt;

&amp;lt;script type="text/python"&amp;gt;
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")


# 設定 SVG 繪圖的格點範圍, 原點位於 (0%, 100%), 也就是原點位於畫布的左上角落點, 而且長與寬的尺寸比例都是 100%
'''
cgo.setGridboxSVG(0, cgo.heightPW, 100, cgo.heightPW);
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
Calling 'cgo.setGridboxSVG()' with no parameters is equivalent to calling
cgo.setGridboxSVG(originX, originY, width_scale, height_scale)
cgo.setGridboxSVG(0, 100, cgo.widthPW, cgo.heightPW)
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
另一 Y 向上為正的設定 cgo.setGridboxRHC()
'''
#cgo.setGridboxSVG(0, 100, 100, 100)
# 當使用者沒有設定 cgo.setGridboxSVG() 或 cgo.setGridboxRHC(), 系統採用內定的 cgo.setGridboxRHC()
# 因為經由 cgo.setGridboxSVG(0, 100, 100, 100) 已經將格點範圍的原點設於畫布的左上角落點
# 以下的絕對座標設定, 即是將此原點標定為繪圖座標的(-50, -50), 而且畫布的有效座標範圍, 寬為 120, 高也是 120
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
    '''
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
    '''
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
&amp;lt;/script&amp;gt;
&amp;lt;/body&amp;gt;
&amp;lt;/html&amp;gt;
&lt;/t&gt;
&lt;/tnodes&gt;
&lt;/leo_file&gt;
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;!-- Created by Leo: http://leoeditor.com/leo_toc.html --&gt;
&lt;leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" &gt;
&lt;leo_header file_format="2"/&gt;
&lt;vnodes&gt;
&lt;v t="leo.20160328091134.1"&gt;&lt;vh&gt;@edit index.html&lt;/vh&gt;&lt;/v&gt;
&lt;/vnodes&gt;
&lt;tnodes&gt;
&lt;t tx="leo.20160328091134.1"&gt;@language html
&amp;lt;!DOCTYPE html&amp;gt;
&amp;lt;html&amp;gt;
&amp;lt;head&amp;gt;
    &amp;lt;meta charset="UTF-8"&amp;gt;
    &amp;lt;title&amp;gt;網際 2D 繪圖&amp;lt;/title&amp;gt;
    &amp;lt;!-- IE 9: display inline SVG --&amp;gt;
    &amp;lt;meta http-equiv="X-UA-Compatible" content="IE=9"&amp;gt;
&amp;lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&amp;gt;&amp;lt;/script&amp;gt;

&amp;lt;/head&amp;gt;
&amp;lt;body&amp;gt;

&amp;lt;script&amp;gt;
window.onload=function(){
brython(1);
}
&amp;lt;/script&amp;gt;

&amp;lt;canvas id="plotarea" width="800" height="800"&amp;gt;&amp;lt;/canvas&amp;gt;

&amp;lt;script type="text/python"&amp;gt;
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")


# 設定 SVG 繪圖的格點範圍, 原點位於 (0%, 100%), 也就是原點位於畫布的左上角落點, 而且長與寬的尺寸比例都是 100%
'''
cgo.setGridboxSVG(0, cgo.heightPW, 100, cgo.heightPW);
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
Calling 'cgo.setGridboxSVG()' with no parameters is equivalent to calling
cgo.setGridboxSVG(originX, originY, width_scale, height_scale)
cgo.setGridboxSVG(0, 100, cgo.widthPW, cgo.heightPW)
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
另一 Y 向上為正的設定 cgo.setGridboxRHC()
'''
#cgo.setGridboxSVG(0, 100, 100, 100)
# 當使用者沒有設定 cgo.setGridboxSVG() 或 cgo.setGridboxRHC(), 系統採用內定的 cgo.setGridboxRHC()
# 因為經由 cgo.setGridboxSVG(0, 100, 100, 100) 已經將格點範圍的原點設於畫布的左上角落點
# 以下的絕對座標設定, 即是將此原點標定為繪圖座標的(-50, -50), 而且畫布的有效座標範圍, 寬為 120, 高也是 120
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
    '''
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
    '''
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
&amp;lt;/script&amp;gt;
&amp;lt;/body&amp;gt;
&amp;lt;/html&amp;gt;
&lt;/t&gt;
&lt;/tnodes&gt;
&lt;/leo_file&gt;
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;!-- Created by Leo: http://leoeditor.com/leo_toc.html --&gt;
&lt;leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" &gt;
&lt;leo_header file_format="2"/&gt;
&lt;vnodes&gt;
&lt;v t="leo.20160328091134.1"&gt;&lt;vh&gt;@edit index.html&lt;/vh&gt;&lt;/v&gt;
&lt;/vnodes&gt;
&lt;tnodes&gt;
&lt;t tx="leo.20160328091134.1"&gt;@language html
&amp;lt;!DOCTYPE html&amp;gt;
&amp;lt;html&amp;gt;
&amp;lt;head&amp;gt;
    &amp;lt;meta charset="UTF-8"&amp;gt;
    &amp;lt;title&amp;gt;網際 2D 繪圖&amp;lt;/title&amp;gt;
    &amp;lt;!-- IE 9: display inline SVG --&amp;gt;
    &amp;lt;meta http-equiv="X-UA-Compatible" content="IE=9"&amp;gt;
&amp;lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&amp;gt;&amp;lt;/script&amp;gt;

&amp;lt;/head&amp;gt;
&amp;lt;body&amp;gt;

&amp;lt;script&amp;gt;
window.onload=function(){
brython(1);
}
&amp;lt;/script&amp;gt;

&amp;lt;canvas id="plotarea" width="800" height="800"&amp;gt;&amp;lt;/canvas&amp;gt;

&amp;lt;script type="text/python"&amp;gt;
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")


# 設定 SVG 繪圖的格點範圍, 原點位於 (0%, 100%), 也就是原點位於畫布的左上角落點, 而且長與寬的尺寸比例都是 100%
'''
cgo.setGridboxSVG(0, cgo.heightPW, 100, cgo.heightPW);
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
Calling 'cgo.setGridboxSVG()' with no parameters is equivalent to calling
cgo.setGridboxSVG(originX, originY, width_scale, height_scale)
cgo.setGridboxSVG(0, 100, cgo.widthPW, cgo.heightPW)
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
另一 Y 向上為正的設定 cgo.setGridboxRHC()
'''
#cgo.setGridboxSVG(0, 100, 100, 100)
# 當使用者沒有設定 cgo.setGridboxSVG() 或 cgo.setGridboxRHC(), 系統採用內定的 cgo.setGridboxRHC()
# 因為經由 cgo.setGridboxSVG(0, 100, 100, 100) 已經將格點範圍的原點設於畫布的左上角落點
# 以下的絕對座標設定, 即是將此原點標定為繪圖座標的(-50, -50), 而且畫布的有效座標範圍, 寬為 120, 高也是 120
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
    '''
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
    '''
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
&amp;lt;/script&amp;gt;
&amp;lt;/body&amp;gt;
&amp;lt;/html&amp;gt;
&lt;/t&gt;
&lt;/tnodes&gt;
&lt;/leo_file&gt;
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;!-- Created by Leo: http://leoeditor.com/leo_toc.html --&gt;
&lt;leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" &gt;
&lt;leo_header file_format="2"/&gt;
&lt;vnodes&gt;
&lt;v t="leo.20160328091134.1"&gt;&lt;vh&gt;@edit index.html&lt;/vh&gt;&lt;/v&gt;
&lt;/vnodes&gt;
&lt;tnodes&gt;
&lt;t tx="leo.20160328091134.1"&gt;@language html
&amp;lt;!DOCTYPE html&amp;gt;
&amp;lt;html&amp;gt;
&amp;lt;head&amp;gt;
    &amp;lt;meta charset="UTF-8"&amp;gt;
    &amp;lt;title&amp;gt;網際 2D 繪圖&amp;lt;/title&amp;gt;
    &amp;lt;!-- IE 9: display inline SVG --&amp;gt;
    &amp;lt;meta http-equiv="X-UA-Compatible" content="IE=9"&amp;gt;
&amp;lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&amp;gt;&amp;lt;/script&amp;gt;

&amp;lt;/head&amp;gt;
&amp;lt;body&amp;gt;

&amp;lt;script&amp;gt;
window.onload=function(){
brython(1);
}
&amp;lt;/script&amp;gt;

&amp;lt;canvas id="plotarea" width="800" height="800"&amp;gt;&amp;lt;/canvas&amp;gt;

&amp;lt;script type="text/python"&amp;gt;
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")


# 設定 SVG 繪圖的格點範圍, 原點位於 (0%, 100%), 也就是原點位於畫布的左上角落點, 而且長與寬的尺寸比例都是 100%
'''
cgo.setGridboxSVG(0, cgo.heightPW, 100, cgo.heightPW);
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
Calling 'cgo.setGridboxSVG()' with no parameters is equivalent to calling
cgo.setGridboxSVG(originX, originY, width_scale, height_scale)
cgo.setGridboxSVG(0, 100, cgo.widthPW, cgo.heightPW)
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
另一 Y 向上為正的設定 cgo.setGridboxRHC()
'''
#cgo.setGridboxSVG(0, 100, 100, 100)
# 當使用者沒有設定 cgo.setGridboxSVG() 或 cgo.setGridboxRHC(), 系統採用內定的 cgo.setGridboxRHC()
# 因為經由 cgo.setGridboxSVG(0, 100, 100, 100) 已經將格點範圍的原點設於畫布的左上角落點
# 以下的絕對座標設定, 即是將此原點標定為繪圖座標的(-50, -50), 而且畫布的有效座標範圍, 寬為 120, 高也是 120
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
    '''
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
    '''
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
&amp;lt;/script&amp;gt;
&amp;lt;/body&amp;gt;
&amp;lt;/html&amp;gt;
&lt;/t&gt;
&lt;/tnodes&gt;
&lt;/leo_file&gt;
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;!-- Created by Leo: http://leoeditor.com/leo_toc.html --&gt;
&lt;leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" &gt;
&lt;leo_header file_format="2"/&gt;
&lt;vnodes&gt;
&lt;v t="leo.20160328091134.1"&gt;&lt;vh&gt;@edit index.html&lt;/vh&gt;&lt;/v&gt;
&lt;/vnodes&gt;
&lt;tnodes&gt;
&lt;t tx="leo.20160328091134.1"&gt;@language html
&amp;lt;!DOCTYPE html&amp;gt;
&amp;lt;html&amp;gt;
&amp;lt;head&amp;gt;
    &amp;lt;meta charset="UTF-8"&amp;gt;
    &amp;lt;title&amp;gt;網際 2D 繪圖&amp;lt;/title&amp;gt;
    &amp;lt;!-- IE 9: display inline SVG --&amp;gt;
    &amp;lt;meta http-equiv="X-UA-Compatible" content="IE=9"&amp;gt;
&amp;lt;script type="text/javascript" src="http://brython.info/src/brython_dist.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango-8v03.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/Cango2D-6v13.js"&amp;gt;&amp;lt;/script&amp;gt;
&amp;lt;script type="text/javascript" src="http://cptocadp-2015fallhw.rhcloud.com/static/CangoAxes-1v33.js"&amp;gt;&amp;lt;/script&amp;gt;

&amp;lt;/head&amp;gt;
&amp;lt;body&amp;gt;

&amp;lt;script&amp;gt;
window.onload=function(){
brython(1);
}
&amp;lt;/script&amp;gt;

&amp;lt;canvas id="plotarea" width="800" height="800"&amp;gt;&amp;lt;/canvas&amp;gt;

&amp;lt;script type="text/python"&amp;gt;
from javascript import JSConstructor
from browser import window
import math

cango = JSConstructor(window.Cango)
cobj = JSConstructor(window.Cobj)
shapedefs = window.shapeDefs
obj2d = JSConstructor(window.Obj2D)
cgo = cango("plotarea")


# 設定 SVG 繪圖的格點範圍, 原點位於 (0%, 100%), 也就是原點位於畫布的左上角落點, 而且長與寬的尺寸比例都是 100%
'''
cgo.setGridboxSVG(0, cgo.heightPW, 100, cgo.heightPW);
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
Calling 'cgo.setGridboxSVG()' with no parameters is equivalent to calling
cgo.setGridboxSVG(originX, originY, width_scale, height_scale)
cgo.setGridboxSVG(0, 100, cgo.widthPW, cgo.heightPW)
which sets the grid origin at the UPPER LEFT corner of the canvas and the gridbox width and height equal to the full canvas width and height.
另一 Y 向上為正的設定 cgo.setGridboxRHC()
'''
#cgo.setGridboxSVG(0, 100, 100, 100)
# 當使用者沒有設定 cgo.setGridboxSVG() 或 cgo.setGridboxRHC(), 系統採用內定的 cgo.setGridboxRHC()
# 因為經由 cgo.setGridboxSVG(0, 100, 100, 100) 已經將格點範圍的原點設於畫布的左上角落點
# 以下的絕對座標設定, 即是將此原點標定為繪圖座標的(-50, -50), 而且畫布的有效座標範圍, 寬為 120, 高也是 120
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
    '''
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
    '''
    # 表示放大 3 倍
    #cgo.render(cmbr, x, y, 3, rot)
    # 放大 5 倍
    cgo.render(cmbr, x, y, 5, rot)

O(0, 0, 0, 0, 0, "lightyellow", True, 4)
&amp;lt;/script&amp;gt;
&amp;lt;/body&amp;gt;
&amp;lt;/html&amp;gt;
&lt;/t&gt;
&lt;/tnodes&gt;
&lt;/leo_file&gt;
先取得各組學員的學號

檔案讀取

排序選出各組組長

排序定出組序

列出各組分組名單

排座位

列出電腦教室的座位表</t>
<t tx="leo.20160328091641.1"></t>
<t tx="leo.20160328094609.1">目前新增的 Blueprint 方法有

/ag100/task0 在本地端執行: http://localhost:5000/ag100/task0

/ag100/task1 在本地端執行: http://localhost:5000/ag100/task1

task0 直接 return

task1 則利用 render_template 傳回資料</t>
<t tx="leo.20160328094609.10">@app.route('/red')
def red():
    # 重新導向 google
    return redirect("http://www.google.com")
</t>
<t tx="leo.20160328094609.11">@app.route('/guessform')
def guessform():
    session["count"] += 1
    guess = session.get("guess")
    theanswer = session.get("answer")
    count = session.get("count")
    return render_template("guessform.html", guess=guess, answer=theanswer, count=count)
</t>
<t tx="leo.20160328094609.12">@app.route('/docheck', methods=['POST'])
def docheck():
    # session[] 存資料
    # session.get() 取 session 資料
    # 利用 request.form[] 取得表單欄位資料, 然後送到 template
    guess = request.form["guess"]
    session["guess"] = guess
    # 假如使用者直接執行 doCheck, 則設法轉回根方法
    if guess is None:
        redirect("/")
    # 從 session 取出 answer 對應資料, 且處理直接執行 docheck 時無法取 session 值情況
    try:
        theanswer = int(session.get('answer'))
    except:
        redirect("/")
    # 經由表單所取得的 guess 資料型別為 string
    try:
        theguess = int(guess)
    except:
        return redirect("/guessform")
    # 每執行 doCheck 一次,次數增量一次
    session["count"] += 1
    count = session.get("count")
    # 答案與所猜數字進行比對
    if theanswer &lt; theguess:
        return render_template("toobig.html", guess=guess, answer=theanswer, count=count)
    elif theanswer &gt; theguess:
        return render_template("toosmall.html", guess=guess, answer=theanswer, count=count)
    else:
        # 已經猜對, 從 session 取出累計猜測次數
        thecount = session.get('count')
        return "猜了 "+str(thecount)+" 次, 終於猜對了, 正確答案為 "+str(theanswer)+": &lt;a href='/'&gt;再猜&lt;/a&gt;"
    return render_template("docheck.html", guess=guess)
 
</t>
<t tx="leo.20160328094609.13">@app.route('/option', methods=["GET", "POST"])
def option():
    # 各組選出組長的方式, 若採遞增, 則各組內學號最小者為組長
    option_list1 = ["遞增", "遞減"]
    # 各組組長間的排序定組序, 若採遞增, 則學號最小的組長為第1組
    option_list2 = ["遞增", "遞減"]
    # 電腦教室共有 9 排電腦
    column = 9
    # 加上班級選擇
    option_list3 = ["2a", "2b"]
    # 根據班級的總人數, 以 9 去除, 算出需要排幾列才能夠容納的下, 而且若列數超過 7
    # 表示這些學員必須與其他同組學員共用電腦

    return render_template('option.html', option_list1=option_list1, option_list2=option_list2, option_list3=option_list3, column=column)
</t>
<t tx="leo.20160328094609.14">@app.route('/optionaction', methods=['POST'])
def optionaction():
    # 最後傳回的字串為 out_string
    out_string = ""
    # 程式內需要暫時使用的 tmp_string
    tmp_string = ""
    # 傳回字串中, 用來說明排序原則的 desc_string
    desc_string = ""
    result = []
    group_sorted = []
    num_of_stud = 0
    # 每組至多 7 人
    max_num_in_one_group = 7
    # 電腦教室配置, 共有 9 排
    total_column = 9
    # 上面為相關變數的初始值設定, 以下開始取出 data_a 或 data_b 進行處理, 由 option3 傳回值決定
    if request.form["option3"]  == "2a":
        content = request.form["data_a"]
    else:
        content = request.form["data_b"]
    #result = content.splitlines()
    for line in content.splitlines():
        result.append(list(line.split(",")))
    # i 為行序
    for i in range(len(result)):
        # j 為組員序
        for j in range(len(result[i])):
            tmp_string += result[i][j] + ", "
        out_string += "第" + str(i+1) + "排資料:"+ tmp_string + "&lt;br /&gt;"
        tmp_string = ""
    for i in range(len(result)):
        # 開始進入組內排序, 根據 request.form["option1"]  的值決定遞增或遞減
        if request.form["option1"]  == "遞增":
            group_list = sorted(list(filter(None, result[i])))
        else:
            group_list = sorted(list(filter(None, result[i])), reverse=True)
        group_sorted.append(group_list)
    if request.form["option1"]  == "遞增":
        desc_string += "組內學號最小者為組長."
    else:
         desc_string += "組內學號最大者為組長."
    # 開始進入組間組長學號排序, 根據 request.form["option2"] 的值決定遞增或遞減
    if request.form["option2"]  == "遞增":
        desc_string += "各組長中學號最小者為第1組."
        final_result = sorted(group_sorted)
    else:
        desc_string += "各組長中學號最大者為第1組."
        final_result = sorted(group_sorted, reverse=True)
    out_string += "&lt;br /&gt;" + desc_string + "&lt;br /&gt;"
    # i 為行序
    for i in range(len(final_result)):
        # j 為組員序
        for j in range(len(final_result[i])):
            num_of_stud += 1
            tmp_string += final_result[i][j] + ","
        out_string += "第" + str(i+1) + "組:"+ tmp_string + "&lt;br /&gt;"
        tmp_string = ""
    #return "總共有" + str(i+) + "組"
    # group_num 為總組數
    group_num = i + 1
    # 截至這裡, 已經完成選組長, 以及定組序的工作 ,接下來要排座位, 並且印出座位表
    # 先算每班的總人數
    #return "總共有"+ str(num_of_stud) + "人"
    seat_by_column = []
    for row in range(max_num_in_one_group):
    # 每組最多 7 人
    #for row in range(7):
        # 這裡的 11 為總組數
        #for column in range(11):
        for column in range(group_num):
            # 因為各分組數列的長度並不相同, 但是最長的有 7 位組員, 因此若無法取得的資料 (因為索引超值), 就補上空字串
            try:
                seat_by_column.append(final_result[column][row])
            except:
                seat_by_column.append("")
    # seat_by_column 為去除空白字串前的座位數列
    # 然後利用 filter(None, seat_by_column) 去除空白字串, 就可以得到以 column 為主的座位排序
    seat_by_column = list(filter(None, seat_by_column))
    # 然後每 N 個取為 1 排, 即可得到以排為主的座位序列, 而 N 則視全班人數除以 9, 也就是 total_column 進位決定, 因為共有 9 排
    N = math.ceil(num_of_stud/total_column)
    # for debug
    #return str(num_of_stud) + ":" + str(total_column) + ":" + str(N)
    column_list = [seat_by_column[n:n+N] for n in range(0, len(seat_by_column), N)]
    # 列出每 N 個組員一排的數列 column_list
    # 接下來要納入以排為主的座位
    # 根據 column_list, 建立一個 dictionary, 其中學號為 index, 座位號為對應值
    seat_dict = {}
    for column in range(len(column_list)):
        for i in range(N):
            try:
                seat_dict.update({column_list[column][i]: (column, i)})
            except:
                seat_dict.update({"": ""})
                
    # 開始準備用順序列出學員座號
    # 根據學號, 排序 dictionary 的方法
    import operator
    seat_dict_sort = sorted(seat_dict.items(), key = operator.itemgetter(0), reverse = False)
    # 依照學號順序, 列出座位表
    out_string += "&lt;br /&gt;按照學號次序列出座位表:&lt;br /&gt;&lt;br /&gt;"
    for i in range(1, len(seat_dict_sort)):
        out_string +=  str(i) + ":"+ str(seat_dict_sort[i]) + "&lt;br /&gt;"
    # 結束準備用順序列出學員座號
    # dont know why .reverse() did not work, 只有 [::-1] 可以 reverse list elements
    #g.es(column_list[::-1])

    # 因為經由 zip 逐一重新 transpose 的列資料, 必須配合最大 (也就是總共有 7 列, 也就是 N 的值) 列數補上空白字串 (也就是空位)
    # 所以不能使用 zip, 而必須導入 zip_longest 模組方法
    from itertools import zip_longest
    final_seat = list(zip_longest(*column_list[::-1], fillvalue=""))
    # 列出最後的座位表
    #g.es(final_seat)
    # 最後轉成 html table 標註格式
    out_string += "&lt;br /&gt; &lt;br /&gt;"
    out_string += "&lt;table border='1' width='100%'&gt;"
    out_string += "&lt;tr&gt;&lt;td colspan='9' style='text-align:center'&gt;講台&lt;/td&gt;&lt;/tr&gt;"
    for row in range(len(final_seat)):
        out_string += "&lt;tr&gt;"
        # 因為每一 row 有 9, 也就是 total_column 個位子
        for i in range(total_column):
            try:
                if i%2 != 0:
                    out_string += "&lt;td style='text-align:center'  bgcolor='#FFD78C' height='30'&gt;" + str(final_seat[row][i]) + "&lt;/td&gt;"
                else:
                    out_string += "&lt;td style='text-align:center' height='30'&gt;" + str(final_seat[row][i]) + "&lt;/td&gt;"
            except:
                out_string += "&lt;td&gt;&amp;nbsp;&lt;/td&gt;"
        out_string += "&lt;/tr&gt;"
    out_string += "&lt;/table&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;"
    return out_string
    # 等運算或資料處理結束後, 再將相關值送到對應的 template 進行資料的展示
    #return render_template('optionaction.html', option_list1=option_list1, option_list2=option_list2)
    

</t>
<t tx="leo.20160328094609.15">@app.route('/fileaxupload', methods=['POST'])
# ajax jquery chunked file upload for flask
def fileaxupload():
    '''
    if not session.get('logged_in'):
        #abort(401)
        return redirect(url_for('login'))
    '''
    # need to consider if the uploaded filename already existed.
    # right now all existed files will be replaced with the new files
    filename = request.args.get("ax-file-name")
    flag = request.args.get("start")
    if flag == "0":
        file = open(data_dir+"downloads/"+filename, "wb")
    else:
        file = open(data_dir+"downloads/"+filename, "ab")
    file.write(request.stream.read())
    file.close()
    return "files uploaded!"

    
    
</t>
<t tx="leo.20160328094609.16">@app.route('/fileuploadform')
def fileuploadform():
    '''
    if not session.get('logged_in'):
        #abort(401)
        return redirect(url_for('login'))
    '''
    return "&lt;h1&gt;file upload&lt;/h1&gt;"+'''
  &lt;script src="/static/jquery.js" type="text/javascript"&gt;&lt;/script&gt;
  &lt;script src="/static/axuploader.js" type="text/javascript"&gt;&lt;/script&gt;
  &lt;script&gt;
  $(document).ready(function(){
  $('.prova').axuploader({url:'fileaxupload', allowExt:['jpg','png','gif','7z','pdf','zip','flv','stl','swf'],
  finish:function(x,files)
{
    alert('All files have been uploaded: '+files);
},
  enable:true,
  remotePath:function(){
  return 'downloads/';
  }
  });
  });
  &lt;/script&gt;
  &lt;div class="prova"&gt;&lt;/div&gt;
  &lt;input type="button" onclick="$('.prova').axuploader('disable')" value="asd" /&gt;
  &lt;input type="button" onclick="$('.prova').axuploader('enable')" value="ok" /&gt;
  &lt;/section&gt;&lt;/body&gt;&lt;/html&gt;
  '''
</t>
<t tx="leo.20160328094609.17">@app.route('/downloads/&lt;path:filename&gt;', methods=['GET', 'POST'])
def download(filename):
    #return send_from_directory(download_dir, filename=filename, as_attachment=True)
    return send_from_directory(download_dir, filename=filename)
    


</t>
<t tx="leo.20160328094609.18"></t>
<t tx="leo.20160328094609.3"></t>
<t tx="leo.20160328094609.5"></t>
<t tx="leo.20160328094609.6">@language python
@tabwidth -4
@others
# 註冊各組的程式 (第3步/總共3步, 前面1步為 import ag1)
# 以下依照班別與組別次序註冊藍圖
# 二甲
# 註冊 ag100 的 scrum1_task1.py 檔案中的 scrum1_task1 藍圖
app.register_blueprint(users.s2a.g100.scrum1_task1.scrum1_task1)
# 註冊 ag100 的 scrum2_task1.py 檔案中的 scrum2_task1 藍圖
app.register_blueprint(users.s2a.g100.scrum2_task1.scrum2_task1)
#g6
app.register_blueprint(users.s2a.g6.ag6_40323155_task1.ag6)
# 二乙
#g1
app.register_blueprint(bg1_0.bg1)
app.register_blueprint(users.s2b.g1.scrum40123156_task1.scrum40123156_task1)
app.register_blueprint(users.s2b.g1.scrum40123126_task1.scrum40123126_task1)
app.register_blueprint(users.s2b.g1.scrum40123129_task1.scrum40123129_task1)
app.register_blueprint(users.s2b.g1.scrum40123131_task1.scrum40123131_task1)
app.register_blueprint(users.s2b.g1.scrum40123133_task1.scrum40123133_task1)
app.register_blueprint(users.s2b.g1.scrum40123144_task1.scrum40123144_task1)
app.register_blueprint(users.s2b.g1.scrum40123134_task1.scrum40123134_task1)
# 註冊各組的程式 (第3步/總共3步, 前面1步為 import ag1)
app.register_blueprint(users.s2b.g2.task0.bg2)
app.register_blueprint(users.s2b.g9.task0.bg9)
#g2
app.register_blueprint(users.s2b.g2.scrum1_task40123235.scrum1_task40123235)
app.register_blueprint(users.s2b.g2.scrum2_task40123202.scrum2_task40123202)
app.register_blueprint(users.s2b.g2.scrum2_task40123214.scrum2_task40123214)
app.register_blueprint(users.s2b.g2.scrum2_task40123217.scrum2_task40123217)
app.register_blueprint(users.s2b.g2.scrum2_task40123226.scrum2_task40123226)
app.register_blueprint(users.s2b.g2.scrum2_task40123232.scrum2_task40123232)
app.register_blueprint(users.s2b.g2.scrum2_task40123235.scrum2_task40123235)
app.register_blueprint(users.s2b.g2.scrum2_task40123244.scrum2_task40123244)
#g9
app.register_blueprint(users.s2b.g9.scrum1_task40323250.scrum1_task40323250)
if __name__ == "__main__":
    app.run()

</t>
<t tx="leo.20160328094609.7"># coding: utf-8
from flask import Flask, send_from_directory, request, redirect, render_template, session, make_response
import random
import math
import os
# init.py 為自行建立的起始物件
import init

# 導入各組的程式 (第2步/總共3步, 前面1步利用 Blueprint 建立於 users 目錄下的 task0.py 中的連結對應方法)
# 以下依照班別與組別導入模組
# 二甲
# 導入 ag100 所屬的模組
import users.s2a.g100.scrum1_task1
import users.s2a.g100.scrum2_task1
#g6
import users.s2a.g6.ag6_40323112_task1
import users.s2a.g6.ag6_40323133_task1
import users.s2a.g6.ag6_40323147_task1
import users.s2a.g6.ag6_40323152_task1
import users.s2a.g6.ag6_40323155_task1
import users.s2a.g6.ag6_40323156_task1
# 二乙
#g1
import s2b_files.task1.g1.task0 as bg1_0
import users.s2b.g1.scrum40123156_task1
import users.s2b.g1.scrum40123126_task1
import users.s2b.g1.scrum40123129_task1
import users.s2b.g1.scrum40123131_task1
import users.s2b.g1.scrum40123133_task1
import users.s2b.g1.scrum40123144_task1
import users.s2b.g1.scrum40123134_task1
#g2
import users.s2b.g2.task0
import users.s2b.g2.scrum1_task40123235
import users.s2b.g2.scrum2_task40123202
import users.s2b.g2.scrum2_task40123214
import users.s2b.g2.scrum2_task40123217
import users.s2b.g2.scrum2_task40123226
import users.s2b.g2.scrum2_task40123232
import users.s2b.g2.scrum2_task40123235
import users.s2b.g2.scrum2_task40123244
#g9
import users.s2b.g9.task0
import users.s2b.g9.scrum1_task40323250
# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
    static_dir = os.environ['OPENSHIFT_REPO_DIR']+"/static"
    download_dir = os.environ['OPENSHIFT_DATA_DIR']+"/downloads"
else:
    # 表示程式在近端執行
    data_dir = _curdir + "/local_data/"
    static_dir = _curdir + "/static"
    download_dir = _curdir + "/local_data/downloads/"

# 利用 init.py 啟動, 建立所需的相關檔案
initobj = init.Init()

# 必須先將 download_dir 設為 static_folder, 然後才可以用於 download 方法中的 app.static_folder 的呼叫
app = Flask(__name__)
#app.config['download_dir'] = download_dir

# 使用 session 必須要設定 secret_key
# In order to use sessions you have to set a secret key
# set the secret key.  keep this really secret:
app.secret_key = 'A0Zr9@8j/3yX R~XHH!jmN]LWX/,?R@T'







</t>
<t tx="leo.20160328094609.8">@app.route("/")
def index():
    #這是猜數字遊戲的起始表單, 主要在產生答案, 並且將 count 歸零
    # 將標準答案存入 answer session 對應區
    theanswer = random.randint(1, 100)
    thecount = 0
    # 將答案與計算次數變數存進 session 對應變數
    session['answer'] = theanswer
    session['count'] = thecount

    return render_template("index.html", answer=theanswer, count=thecount)
</t>
<t tx="leo.20160328094609.9">@app.route('/user/&lt;name&gt;')
def user(name):
    return render_template("user.html", name=name)
</t>
<t tx="leo.20160411093002.2"></t>
<t tx="leo.20160411093002.3">(uncached) leo.20160328094609.7
Diff...
  # coding: utf-8
  from flask import Flask, send_from_directory, request, redirect, render_template, session, make_response
  import random
  import math
  import os
  # init.py 為自行建立的起始物件
  import init
  
  # 導入各組的程式 (第2步/總共3步, 前面1步利用 Blueprint 建立於 users 目錄下的 task0.py 中的連結對應方法)
+ import users.s2b.g99.task0
- # 以下依照班別與組別導入模組
- # 二甲
- # 導入 ag100 所屬的模組
- import users.s2a.g100.scrum1_task1
?                       -------
+ import users.s2a.g100.task0 as ag100_0
?                           +++++++ ++++
- import users.s2a.g100.scrum2_task1
- #g6
- import users.s2a.g6.ag6_40323112_task1
- import users.s2a.g6.ag6_40323133_task1
- import users.s2a.g6.ag6_40323147_task1
- import users.s2a.g6.ag6_40323152_task1
- import users.s2a.g6.ag6_40323155_task1
- import users.s2a.g6.ag6_40323156_task1
- # 二乙
- #g1
  import s2b_files.task1.g1.task0 as bg1_0
- import users.s2b.g1.scrum40123156_task1
- import users.s2b.g1.scrum40123126_task1
- import users.s2b.g1.scrum40123129_task1
- import users.s2b.g1.scrum40123131_task1
- import users.s2b.g1.scrum40123133_task1
- import users.s2b.g1.scrum40123144_task1
- import users.s2b.g1.scrum40123134_task1
- #g2
- import users.s2b.g2.task0
?                ^  ^
+ import users.s2a.g6.task1 as ag6_0
?                ^  ^     +++++++++
+ 
- import users.s2b.g2.scrum1_task40123235
- import users.s2b.g2.scrum2_task40123202
- import users.s2b.g2.scrum2_task40123214
- import users.s2b.g2.scrum2_task40123217
- import users.s2b.g2.scrum2_task40123226
- import users.s2b.g2.scrum2_task40123232
- import users.s2b.g2.scrum2_task40123235
- import users.s2b.g2.scrum2_task40123244
- #g9
- import users.s2b.g9.task0
- import users.s2b.g9.scrum1_task40323250
  # 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
  _curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
  # 設定在雲端與近端的資料儲存目錄
  if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
      # 表示程式在雲端執行
      data_dir = os.environ['OPENSHIFT_DATA_DIR']
      static_dir = os.environ['OPENSHIFT_REPO_DIR']+"/static"
      download_dir = os.environ['OPENSHIFT_DATA_DIR']+"/downloads"
  else:
      # 表示程式在近端執行
      data_dir = _curdir + "/local_data/"
      static_dir = _curdir + "/static"
      download_dir = _curdir + "/local_data/downloads/"
  
  # 利用 init.py 啟動, 建立所需的相關檔案
  initobj = init.Init()
  
  # 必須先將 download_dir 設為 static_folder, 然後才可以用於 download 方法中的 app.static_folder 的呼叫
  app = Flask(__name__)
  #app.config['download_dir'] = download_dir
  
  # 使用 session 必須要設定 secret_key
  # In order to use sessions you have to set a secret key
  # set the secret key.  keep this really secret:
  app.secret_key = 'A0Zr9@8j/3yX R~XHH!jmN]LWX/,?R@T'
  
  
  
  
  
  
  
</t>
<t tx="leo.20160411093002.4"># coding: utf-8
from flask import Flask, send_from_directory, request, redirect, render_template, session, make_response
import random
import math
import os
# init.py 為自行建立的起始物件
import init

# 導入各組的程式 (第2步/總共3步, 前面1步利用 Blueprint 建立於 users 目錄下的 task0.py 中的連結對應方法)
import users.s2b.g99.task0
import users.s2a.g100.task0 as ag100_0
import s2b_files.task1.g1.task0 as bg1_0
import users.s2a.g6.task1 as ag6_0

# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
    static_dir = os.environ['OPENSHIFT_REPO_DIR']+"/static"
    download_dir = os.environ['OPENSHIFT_DATA_DIR']+"/downloads"
else:
    # 表示程式在近端執行
    data_dir = _curdir + "/local_data/"
    static_dir = _curdir + "/static"
    download_dir = _curdir + "/local_data/downloads/"

# 利用 init.py 啟動, 建立所需的相關檔案
initobj = init.Init()

# 必須先將 download_dir 設為 static_folder, 然後才可以用於 download 方法中的 app.static_folder 的呼叫
app = Flask(__name__)
#app.config['download_dir'] = download_dir

# 使用 session 必須要設定 secret_key
# In order to use sessions you have to set a secret key
# set the secret key.  keep this really secret:
app.secret_key = 'A0Zr9@8j/3yX R~XHH!jmN]LWX/,?R@T'







</t>
<t tx="leo.20160411093002.5"># coding: utf-8
from flask import Flask, send_from_directory, request, redirect, render_template, session, make_response
import random
import math
import os
# init.py 為自行建立的起始物件
import init

# 導入各組的程式 (第2步/總共3步, 前面1步利用 Blueprint 建立於 users 目錄下的 task0.py 中的連結對應方法)
# 以下依照班別與組別導入模組
# 二甲
# 導入 ag100 所屬的模組
import users.s2a.g100.scrum1_task1
import users.s2a.g100.scrum2_task1
#g6
import users.s2a.g6.ag6_40323112_task1
import users.s2a.g6.ag6_40323133_task1
import users.s2a.g6.ag6_40323147_task1
import users.s2a.g6.ag6_40323152_task1
import users.s2a.g6.ag6_40323155_task1
import users.s2a.g6.ag6_40323156_task1
# 二乙
#g1
import s2b_files.task1.g1.task0 as bg1_0
import users.s2b.g1.scrum40123156_task1
import users.s2b.g1.scrum40123126_task1
import users.s2b.g1.scrum40123129_task1
import users.s2b.g1.scrum40123131_task1
import users.s2b.g1.scrum40123133_task1
import users.s2b.g1.scrum40123144_task1
import users.s2b.g1.scrum40123134_task1
#g2
import users.s2b.g2.task0
import users.s2b.g2.scrum1_task40123235
import users.s2b.g2.scrum2_task40123202
import users.s2b.g2.scrum2_task40123214
import users.s2b.g2.scrum2_task40123217
import users.s2b.g2.scrum2_task40123226
import users.s2b.g2.scrum2_task40123232
import users.s2b.g2.scrum2_task40123235
import users.s2b.g2.scrum2_task40123244
#g9
import users.s2b.g9.task0
import users.s2b.g9.scrum1_task40323250
# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
    static_dir = os.environ['OPENSHIFT_REPO_DIR']+"/static"
    download_dir = os.environ['OPENSHIFT_DATA_DIR']+"/downloads"
else:
    # 表示程式在近端執行
    data_dir = _curdir + "/local_data/"
    static_dir = _curdir + "/static"
    download_dir = _curdir + "/local_data/downloads/"

# 利用 init.py 啟動, 建立所需的相關檔案
initobj = init.Init()

# 必須先將 download_dir 設為 static_folder, 然後才可以用於 download 方法中的 app.static_folder 的呼叫
app = Flask(__name__)
#app.config['download_dir'] = download_dir

# 使用 session 必須要設定 secret_key
# In order to use sessions you have to set a secret key
# set the secret key.  keep this really secret:
app.secret_key = 'A0Zr9@8j/3yX R~XHH!jmN]LWX/,?R@T'







</t>
</tnodes>
</leo_file>
