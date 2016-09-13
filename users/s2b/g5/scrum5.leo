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
<v t="leo.20160414111623.2"><vh>NewHeadline</vh></v>
<v t="leo.20160414111626.1"><vh>@edit scrum5_task40323253.py</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20160414111623.2"></t>
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
<v t="leo.20160428112536.1"><vh>@clean scrum5-40323253_2.md</vh></v>
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
Title: 40323253-期中報告
Category: bg5
Tags: scrum5, task1
Author: 40323253
@others
 
&lt;!-- PELICAN_END_SUMMARY --&gt;
 
&lt;h2&gt;完成的 OpenShift 對應繪圖連結為:&lt;a href="http://cdw2-40323253.rhcloud.com/bg5/scrum5_task40323253_2"&gt;40323253畫布_繪製字母A&lt;/a&gt;&lt;/h2&gt;

&lt;h2&gt;master : &lt;/h2&gt;
&lt;h3&gt;master是用來存取畫布及鍊條的檔案，並且將繪製好的檔案上傳到OpenShift，讓畫布及鍊條能夠在遠端上顯示，若要在近端的localhost:5000顯示的話，要在cdw2目錄下，使用python wsgi.py指令，方能在近端顯示程式所繪製出來的鏈條。&lt;/h3&gt;
&lt;/br&gt;

&lt;h2&gt;個人畫布 : &lt;/h2&gt;
&lt;img src="./../files/bg5/53_1.png"&gt;

&lt;h2&gt;OpenShift : &lt;/h2&gt;
&lt;img src="./../files/bg5/53_2.png"&gt;

&lt;h2&gt;計算表 : &lt;/h2&gt;
&lt;img src="./../files/bg5/53_4.jpg"&gt;


&lt;h2&gt;gh-pages : &lt;/h2&gt;
&lt;h3&gt;gh-pages是拿來編輯期中報告之用，在user的組別目錄下，新增個人的leo檔案，然後將.md檔放在content，紅框為檔案名稱，若沒改寫的話，在編輯時會同時編輯到另外一人，所以必須將其改寫，完成編輯後記得button，在近端下測試按下local-peliacn，若要推送到gh-pages分支時，就選按gh-pages-pelican，推送後顯示於&lt;a href="http://2015fallhw.github.io/cdw2/post/"&gt;cdw2首頁&lt;/a&gt;
&lt;/br&gt;

&lt;h2&gt;編輯期中報告 : &lt;/h2&gt;
&lt;img src="./../files/bg5/53_3.png"&gt;

&lt;h2&gt;期中心得 : &lt;/h2&gt;
&lt;h3&gt;這學期我們開始協同課程，一上課老師就利用程式將我們分組，並利用GitHub的Fork來進行小組協同，各組員只需將做好的檔案Pull Request回去給組長審核即可。我們利用LEO編輯程式來畫圖，將圖檔以wsgi.py近端檢視，且上傳OpenShift將圖檔在遠端顯現出來，其中需要在OpenShift創建Pythone 3.3，利用鑰匙抓下來，再把圖檔貼上傳回遠端。在繪圖時必須先決定原點，再來要了解鍊條的尺寸，用三角函數計算其轉動角度，我認為最困難的並不是在繪製鍊條的部分，而是在協同觀念上，有種做完一步就卡關一步的感覺，總是有出不完的問題及衝突，希望這是我在未來能夠加以進步的地方。&lt;/h3&gt;</t>
>>>>>>> e89a8e1c4ce1add6961e51c30a4712170e0a4ae8
</tnodes>
</leo_file>
