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
<v t="leo.20160421101737.1"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh></v>
<v t="leo.20160421102029.1" a="E"><vh>@path ./../../../</vh>
<v t="leo.20160421102038.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="leo.20160421102101.1"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="leo.20160421102042.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="leo.20160421102109.1"><vh>@button local pelican</vh></v>
</v>
<v t="leo.20160421102043.1"><vh>進入 content 目錄</vh></v>
<v t="leo.20160421102044.1" a="E"><vh>@path content</vh>
<v t="leo.20160421102118.1" a="E"><vh>@path bg2</vh>
<v t="leo.20160421102120.1"><vh>@clean 40123244_2.md</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160421101737.1"></t>
<t tx="leo.20160421102029.1"></t>
<t tx="leo.20160421102038.1"></t>
<t tx="leo.20160421102042.1"></t>
<t tx="leo.20160421102043.1"></t>
<t tx="leo.20160421102044.1"></t>
<t tx="leo.20160421102101.1">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="leo.20160421102109.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20160421102118.1"></t>
<t tx="leo.20160421102120.1">@language md
Title: 40123244 - 期中報告
Category: bg2
Tags: scrum1, task1, 40123244
Author: 40123244
@others


期中報告

&lt;!-- PELICAN_END_SUMMARY --&gt;

自評分數:78

Openshift:在master分支下建立各個組員的scrum2程式(直接採用老師給的

scrum1和scrum2,建檔完成後須在myflaskapp.py註冊各組組員

&lt;img src="./../files/bg2/3.png"&gt;

&lt;img src="./../files/bg2/4.png"&gt;

&lt;img src="./../files/bg2/40123244-1.png"&gt;

scum1為統整各組員scrum2的內容所創,完成後須先python wsgi.py在近端測試可否執行

&lt;img src="./../files/bg2/8.png"&gt;

&lt;a href="http://cdw2-cadp13ag35.rhcloud.com/g2/scrum1_task40123235"&gt;bg2-openshift&lt;/a&gt; 

md建檔:在content目錄下建立組別資料夾

&lt;img src="./../files/bg2/1.png"&gt;

在cdw2=&gt;users=&gt;s2b=&gt;bg2下新增個人的leo檔,在裡面新增md檔,內容打在裡面

&lt;img src="./../files/bg2/40123244-2.png"&gt;

</t>
</tnodes>
</leo_file>
