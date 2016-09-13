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
<v t="leo.20160421110037.2" a="E"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh>
<v t="leo.20160421110044.1" a="E"><vh>@path ./../../../</vh>
<v t="leo.20160421110055.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="leo.20160421110120.1"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="leo.20160421110112.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="leo.20160421110127.1"><vh>@button local pelican</vh></v>
</v>
<v t="leo.20160421110112.2"><vh>進入 content 目錄</vh></v>
<v t="leo.20160421110112.3" a="E"><vh>@path content</vh>
<v t="leo.20160421110132.1" a="E"><vh>@path bg2</vh>
<v t="leo.20160421110132.2"><vh>@clean 40123217_2.md</vh></v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160421110037.2"></t>
<t tx="leo.20160421110044.1"></t>
<t tx="leo.20160421110055.1"></t>
<t tx="leo.20160421110112.1"></t>
<t tx="leo.20160421110112.2"></t>
<t tx="leo.20160421110112.3"></t>
<t tx="leo.20160421110120.1">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="leo.20160421110127.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20160421110132.1"></t>
<t tx="leo.20160421110132.2">@language md
Title: 40123217 - 期中報告
Category: bg2
Tags: scrum1, task1, 40123217
Author: 40123217
@others


期中報告

&lt;!-- PELICAN_END_SUMMARY --&gt;

自評分數:79

自評報告須建立md檔,需建在content目錄下的bg2資料夾裡

&lt;img src="./../files/bg2/1.png"&gt;

&lt;img src="./../files/bg2/40123217-1.png"&gt;

md檔內容須在各組員的leo檔裡修改 users\s2b\g2目錄下

Openshift遠端建立需先在近端可以執行

利用老師給的scrum1及scrum2程式來繪製ABCD

scrum1為組合各組員所建立的在scrum2下的指令

&lt;img src="./../files/bg2/5.png"&gt;

&lt;img src="./../files/bg2/40123244-1.png"&gt;

完成後需要註冊各組組員才能執行

&lt;img src="./../files/bg2/3.png"&gt;

&lt;img src="./../files/bg2/4.png"&gt;

完成後須先在近端執行看是否成功

&lt;img src="./../files/bg2/8.png"&gt;

&lt;a href="http://cdw2-cadp13ag35.rhcloud.com/g2/scrum1_task40123235"&gt;bg2-openshift&lt;/a&gt; </t>
</tnodes>
</leo_file>
