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
<v t="leo.20160421093132.2"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh></v>
<v t="leo.20160421093141.1" a="E"><vh>@path ./../../../</vh>
<v t="leo.20160421093145.1"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="leo.20160421093250.1"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="leo.20160421093151.1"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="leo.20160421093257.1"><vh>@button local pelican</vh></v>
</v>
<v t="leo.20160421093157.1"><vh>進入 content 目錄</vh></v>
<v t="leo.20160421093204.1" a="E"><vh>@path content</vh>
<v t="leo.20160421093210.1" a="E"><vh>@path bg3</vh>
<v t="leo.20160421093215.1"><vh>@clean 40123242.md</vh></v>
<v t="leo.20160421093221.1"><vh>@clean 40123242-2.md</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160421093132.2"></t>
<t tx="leo.20160421093141.1"></t>
<t tx="leo.20160421093145.1"></t>
<t tx="leo.20160421093151.1"></t>
<t tx="leo.20160421093157.1"></t>
<t tx="leo.20160421093204.1"></t>
<t tx="leo.20160421093210.1"></t>
<t tx="leo.20160421093215.1">@language md
Title: 40123242-回報 bg3 初步繪圖主機與連結
Category: bg3
Tags: scrum1, task1, 40123242
Author: 40123242
@others


bg3 組員 40123242 已經在 cdw2 倉儲中的 master 分支建立對應的組員 完成繪圖ABCD字母

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結: &lt;a href=""&gt;bg3藍圖&lt;/a&gt; 

個人畫布 : &lt;a href=""&gt;scrum1_40123242_ABCD&lt;/a&gt;

目前完成ABCD字母，都以非常耗時方式繪圖，旋轉鍊子零件為複雜，與組員的座標定位也要精確，否則會導致圖形組合不一致

2D繪圖組裝零件要注意自己圖形的起始位置，以複製圖形的旋轉中心，能夠掌握這兩點就能減少繪圖的出錯率。

</t>
<t tx="leo.20160421093221.1">@language md
Title: 40123242 - 期中報告
Category: bg3
Tags: scrum1, task1, 40123242
Author:40123242
@others


期中報告

自評成績:75
&lt;!-- PELICAN_END_SUMMARY --&gt;

&lt;h2&gt;Gh-pages : &lt;/h2&gt;在 gh-pages 裡的user/組別 目錄下 新增個人leo檔案，並將.md檔路徑放在content，至於紅色框框為檔案名稱，很多人都使用日期導致檔案一直覆寫。
&lt;img src="./../files/bg3/40123242-1.png"&gt;
在cdw2=&gt;users=&gt;s2b=&gt;g3下新增個人的leo檔,在裡面新增md檔,內容打在裡面

&lt;img src="./../files/bg3/40123242-2.png"&gt;

和上學期個人md檔相同作法，編輯個人學期心得，並顯示於
&lt;a href="http://2015fallhw.github.io/cdw2/post/"&gt;cdw2首頁&lt;/a&gt; 


&lt;h2&gt;Master : &lt;/h2&gt;
用於儲存繪圖程式檔案，並將檔案傳上openshift，能夠在遠端直接顯示圖檔，並能夠導入組員零件，已達成協同要求。
近端要在cdw2目錄下，使用python wsgi.py指令，才能夠在localhost:5000顯示個人圖檔。
&lt;br&gt;
繪圖須註冊藍圖，包括組別與個人，註冊位置在cdw2目錄下之simpleflask.leo

&lt;img src="./../files/bg3/40123242-3.png"&gt;

&lt;img src="./../files/bg3/40123242-4.png"&gt;
繪圖 : 
此部分依照你的需求，若是使用你的藍圖為主畫布，則使用此串原始碼
若為被導入之零件則刪除(尾端/script也要記得刪)

個人檔案  可以使用多個畫布，但導入圖檔畫布要相同
會依照導入順序顯示圖形


若傳上openshift後，幾天沒有開啟會導致頁面暫時關閉，只需按下重啟即可











</t>
<t tx="leo.20160421093250.1">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="leo.20160421093257.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
</tnodes>
</leo_file>
