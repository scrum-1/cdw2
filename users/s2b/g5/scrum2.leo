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
<v t="leo.20160414102821.2"><vh>@edit scrum2_task40323206.py</vh></v>
<v t="leo.20160414103127.1" a="E"><vh>@path ../../../</vh>
<v t="leo.20160414103127.2"><vh>@edit myflaskapp.py</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160414103127.1"></t>
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
<v t="leo.20160428112536.1"><vh>@clean scrum2-40323206_2.md</vh></v>
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
Title: 40323206-期中報告
Category: bg5
Tags: scrum2, task1
Author: 40323206
@others
 
&lt;!-- PELICAN_END_SUMMARY --&gt;
 
完成的 OpenShift 對應繪圖連結為: &lt;a href="http://cdw2bg5-40323206.rhcloud.com/bg5/scrum2_task40323206"&gt;http://cdw2bg5-40323206.rhcloud.com/bg5/scrum2_task40323206&lt;/a&gt;

在班級倉儲cdw2的master建立.leo進行英文字母的繪製(會自動產生一個.py)，建立好後可以在cmd輸入python wsgi.py的指令，就可以在近端開啟http://localhost:5000/bg組別/scrum第幾組員_task學號，可以檢視程式碼畫出的英文字母。
&lt;br/&gt;
我是以圓點開始畫，在依照字母排列的位置進行位移。

&lt;hr/&gt;

&lt;p&gt;&lt;span style="font-size: 16pt; font-family: 'arial black', 'avant garde';"&gt;&amp;nbsp;&lt;strong&gt;&lt;span style="color: #003366;"&gt;字母繪製程式說明：&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;
&lt;br /&gt;&lt;/p&gt;


定義座標軸線&lt;br/&gt;
cgo.drawAxes(0, 240, 0, 240)&lt;br/&gt;

軸線&amp;數字顏色&lt;br/&gt;
 "strokeColor":"顏色代碼"&lt;br/&gt;
"fillColor": "顏色代碼"&lt;br/&gt;

◎可參閱色碼表
&lt;a href="https://www.toodoo.com/db/color.html"&gt;https://www.toodoo.com/db/color.html&lt;/a&gt;
&lt;br/&gt;
TickInterval為LabelInterval內再分割時間間距&lt;br/&gt;
LabelInterval為座標軸上每(多少)單位為一等分&lt;br/&gt;
"xTickInterval": 20&lt;br/&gt;
"xLabelInterval": 20&lt;br/&gt;
"yTickInterval": 20&lt;br/&gt;
"yLabelInterval": 20&lt;br/&gt;


旋轉必須要針對相對中心 rot not working yet&lt;br/&gt;
chamber = &lt;br/&gt;
"M -6.8397, -1.4894 \&lt;br/&gt;
A 7, 7, 0, 1, 0, 6.8397, -1.4894 \&lt;br/&gt;
A 40, 40, 0, 0, 1, 6.8397, -18.511 \&lt;br/&gt;
A 7, 7, 0, 1, 0, -6.8397, -18.511 \&lt;br/&gt;
A 40, 40, 0, 0, 1, -6.8397, -1.4894 z"&lt;br/&gt;
A, (橢圓經中心X軸向長),  (橢圓經中心Y軸向長) , 0 , (大圓/小圓), (計算出的切點座標) , (計算出的切點座標)
 
&lt;br/&gt;

◎計算公式：&lt;br/&gt;
from sympy import&lt;br/&gt;
§center ot radius 40&lt;br/&gt;
x1 = Symbol('x1')&lt;br/&gt;
y1 = Symbol('y1')&lt;br/&gt;
§upper tangent point&lt;br/&gt;
x2 = Symbol('x2')&lt;br/&gt;
y2 = Symbol('y2')&lt;br/&gt;
§lower tangent point&lt;br/&gt;
x3 = Symbol('x3')&lt;br/&gt;
y3 = Symbol('y3')&lt;br/&gt;
answer = solve([(x2-0)**2 + (y2-0)**2 - 7*7, (x1-x2)**2+(y1-y2)**2 -40**2, (x1-x3)**2+(y1-y3)**2 -40**2, (x1)**2+(y1)**2 -47**2, \
       (x1)**2+(y1+20)**2 -47**2, x2 -x3], [x1, y1, x2, y2, x3, y3])&lt;br/&gt;
group = 1&lt;br/&gt;
for i in answer:&lt;br/&gt;
    try:&lt;br/&gt;
        g.es("group", group, ":")&lt;br/&gt;
    except:&lt;br/&gt;
        print("group", group, ":")&lt;br/&gt;
    for j in i:&lt;br/&gt;
        try:&lt;br/&gt;
            g.es(j.evalf(5))&lt;br/&gt;
        except:&lt;br/&gt;
            print(j.evalf(5))&lt;br/&gt;
    group += 1&lt;br/&gt;

&lt;hr/&gt;

建立第一鍊條，會直接複製鍊條cmbr
    basic1 = cmbr.dup()
角度設定    
    basic1.rotate(90)   →逆時針90°
定位座標   
    basic1.translate(x, y)

cmbr.appendPath(basic1)

&lt;hr/&gt;
◎如何位移
首先必須瞭解除了初始鍊條，其他鍊條都只是複製初始鍊條來的，所以所有鍊條一開始的設定都一樣。
如果旋轉指令rotate不為0，表示有旋轉，是以座標原點再進行旋轉！
換句話說，如果你的座標不是訂在原點，那轉動的位移會很大！
那先在圓心完成字母後要怎麼移動？
&lt;br/&gt;
1.如果我們要將字母X位移160，先將初始鍊條X位移160&lt;br/&gt;
  cmbr.translate(0, 0)→cmbr.translate(160, 0)
&lt;br/&gt;  
2.這是第二鍊條原本的位置    
    basic2 = cmbr.dup()&lt;br/&gt;
    basic2.rotate(120)&lt;br/&gt;
    basic2.translate(20*math.cos(150*deg), 20*math.sin(150*deg)) 
&lt;br/&gt;       
3.我們再定義完後先將鍊條移回原點再設定&lt;br/&gt;
    basic2 = cmbr.dup()&lt;br/&gt;
&lt;span style="font-size: 10pt; font-family: 'arial black', 'avant garde';"&gt;&lt;span style="color: #FF0000;"&gt;basic2.translate(-160, 0)&lt;/span&gt;&lt;br/&gt;
    basic2.rotate(120)&lt;br/&gt;
    basic2.translate(20*math.cos(150*deg), 20*math.sin(150*deg))  
&lt;br/&gt;  
4.最後再移到想要與初始鍊條對其的位置&lt;br/&gt;
    basic2 = cmbr.dup()&lt;br/&gt;
    basic2.translate(-160, 0)&lt;br/&gt;
    basic2.rotate(120)&lt;br/&gt;
    basic2.translate(20*math.cos(150*deg), 20*math.sin(150*deg)) &lt;br/&gt; 
&lt;span style="font-size: 10pt; font-family: 'arial black', 'avant garde';"&gt;&lt;span style="color: #FF0000;"&gt;basic2.translate(160, 0)&lt;/span&gt;
&lt;br /&gt;
     

&lt;br /&gt;
&lt;span style="font-size: 14pt; font-family: 'arial black', 'avant garde';"&gt;&amp;nbsp;&lt;strong&gt;&lt;span style="color: #660077;"&gt;以字母C作為範例&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;
&lt;br /&gt;

&lt;img src="./../files/bg5/C.JPG"&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;span style="font-size: 14pt; font-family: 'arial black', 'avant garde';"&gt;&amp;nbsp;&lt;strong&gt;&lt;span style="color: #003366;"&gt;Openshift的對應建立&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;
&lt;br /&gt;
◎可參考課程網頁&lt;br /&gt;
 &lt;a href="http://chiamingyen.github.io/kmolab/blog/ren-wu-yi-2d-xie-tong-hui-tu.html"&gt;http://chiamingyen.github.io/kmolab/blog/ren-wu-yi-2d-xie-tong-hui-tu.html&lt;/a&gt;
&lt;br /&gt;
1.建立新的Application，並在Source Code輸入https://github.com/2015fallhw/cdw2.git &lt;br /&gt;
&lt;img src="./../files/bg5/連結.JPG"&gt;
&lt;br /&gt;
2.建立鑰匙&lt;br /&gt;
&lt;img src="./../files/bg5/KEY1.JPG"&gt;
&lt;br /&gt;
&lt;img src="./../files/bg5/KEY2.JPG"&gt;
&lt;br /&gt;
3.git clone 後修改除了.git以外的檔案&lt;br /&gt;
4.建議直接複製github的master，操作較簡易，但無用檔案較多&lt;br /&gt;
5.push完後點選openshift的連結(會出現猜數字)在網址後輸入你的畫布位置&amp;名稱&lt;br /&gt;
EX: /bg5/scrum2_task40323206

&lt;hr/&gt;
&lt;span style="font-size: 14pt; font-family: 'arial black', 'avant garde';"&gt;&amp;nbsp;&lt;strong&gt;&lt;span style="color: #003366;"&gt;期中心得&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;
&lt;br /&gt;
這次的任務做了半個學期，其實了解鍊條排列的程式後做起來就會很輕鬆很有成就感，但重點我認為並不是英文字母，而是班級同學之間的協同。&lt;br /&gt;
其實cmd裡面的指令不外乎就是：&lt;br /&gt;
1.git clone&lt;br /&gt;
2.git checkout master /gh-pages&lt;br /&gt;
3.git add -A&lt;br /&gt;
4.git commit -m ""&lt;br /&gt;
5.git push origin gh-pages&lt;br /&gt;
那還有甚麼困難？困難的地方就在第一步和最後一步，大家雖然是fork老師fork組長產生了cdw2的倉儲，表面上看起來好像是獨立的，可是並非如此！&lt;br /&gt;
因為大家不了解協同的意義和運作方式，所以協同者(組長)才會這麼累，所以班級倉儲才會故障！老實說我覺得除了那些有心去了解，和維護倉儲的同學，其他人根本不知道"協同"的意義在哪？&lt;br /&gt;
對他們而言，不過就是完成鍊條的英文字母罷了，所以我覺得這塊還有待加強，如果，你真的想知道這堂課的意義，你必須要：&lt;br /&gt;
1.在乎你的組員(不要只顧自己好，要分享)&lt;br /&gt;
2.了解你在組別裡的工作(大家要分工)&lt;br /&gt;
3.尊重其他組別(可以互相參考資訊，但不要"偷竊")&lt;br /&gt;
4.隨時注意整個環境的變動(記得改版更新)&lt;br /&gt;
5.在乎這個班級(不要忘了倉儲是"年級"共用的，但我就不先說隔壁班了...)&lt;br /&gt;

</t>
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8
</tnodes>
</leo_file>
