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
<v t="leo.20160418090254.2" a="E"><vh>@path ./../../../</vh>
<v t="leo.20160418090305.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="leo.20160418090322.1"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="leo.20160418090336.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="leo.20160418090344.1"><vh>@button local pelican</vh></v>
</v>
<v t="leo.20160418090356.1"><vh>進入 content 目錄</vh></v>
<v t="leo.20160418090406.1" a="E"><vh>@path content</vh>
<v t="leo.20160418090412.1" a="E"><vh>@path ag1</vh>
<v t="leo.20160418090452.1"><vh>@clean scrum40123254.md</vh></v>
<v t="leo.20160422213902.1"><vh>@clean scrum40123254_2.md</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160418090254.2"></t>
<t tx="leo.20160418090305.1"></t>
<t tx="leo.20160418090322.1">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="leo.20160418090336.1"></t>
<t tx="leo.20160418090344.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20160418090356.1"></t>
<t tx="leo.20160418090406.1"></t>
<t tx="leo.20160418090412.1"></t>
<t tx="leo.20160418090452.1">@language md
Title: 40123254-回報 ag1 40123254 初步繪圖主機與連結
Category: ag1
Tags: scrum1, task1, 40123254

Author: kmol
ag1 組員40123254 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href=""&gt;&lt;/a&gt;

其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.
</t>
<t tx="leo.20160422213902.1">@language md
Title: 40123254-ag1期中報告
Category: ag1
Tags: scrum1, task1, 40123254

期中報告

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為

&lt;a href="http://python-cadp13bg99.rhcloud.com/ag1/scrum1_week8_abcd"&gt;ag1-openshift&lt;/a&gt;</t>
</tnodes>
</leo_file>
