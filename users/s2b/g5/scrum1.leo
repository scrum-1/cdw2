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
<<<<<<< HEAD
<v t="leo.20160414105620.1"><vh>@edit scrum1_task40323204.py</vh></v>
</vnodes>
<tnodes>
=======
<v t="amd.20160329124554.2" a="E"><vh>@path ./../../../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160329174131.1" a="E"><vh>@path bg5</vh>
<v t="leo.20160428112536.1"><vh>@clean scrum1-40323204_2.md</vh></v>
</v>
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
<t tx="leo.20160428112536.1">@language md
Title: 40323204-期中報告
Category: bg5
Tags: scrum1, task1
Author: 40323204
@others
 
&lt;!-- PELICAN_END_SUMMARY --&gt;
 
&lt;h3&gt;自評成績:80分&lt;/h3&gt;

&lt;h3&gt;目前所完成的 OpenShift 對應繪圖連結為:&lt;/h3&gt;

 &lt;a href="http://cdw2bg5w10-40323204sandy.rhcloud.com/bg5/scrum1_task40323204"&gt;http://cdw2bg5w10-40323204sandy.rhcloud.com/bg5/scrum1_task40323204&lt;/a&gt;

&lt;h3&gt;心得:&lt;/h3&gt;

在這次課程中我主要的工作是建出網頁供組員們使用，我們別中的組長和協同者是不一樣的人，所以在協同上多了一份麻煩，在繪圖上我覺得最困難的是合併，個人畫一個字母很簡單，但是要組員分散畫零件再組起來就很困難，在傳回給老師的途中會有衝突，要進行手動解衝突，看了老師給的解法我還是不太理解，現在們組只有各自畫出字母，還無法組起來。

&lt;h3&gt;繪圖語法:&lt;/h3&gt;

 basic1 = cmbr.dup() →叫出畫好的基本元件      
 
 basic1.rotate(120) →旋轉120度
 
 basic1.translate(0, -20) →原點位置
 
 basic1.translate(20*math.cos(30*deg), 20*math.sin(30*deg)) →以三角函數來算原點
 
 cmbr.appendPath(basic1) →最後要呼叫出自己寫的圖
 
  cgo.render(cmbr, x, y, 3, rot) →表示放大 3 倍
 
  O(0, 0, 0, 0, 0, "lightyellow", True, 4) →顏色為黃色
  
  
&lt;h3&gt; A的3D圖STL檔&lt;/h3&gt;
  
  &lt;script src="https://embed.github.com/view/3d/hsungchang/cdw2/blob/master/Chain%20-%20A.stl"&gt;&lt;/script&gt;
  

</t>
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8
</tnodes>
</leo_file>
