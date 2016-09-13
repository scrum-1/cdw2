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
<v t="leo.20160421102414.2"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh></v>
<v t="leo.20160421102443.1" a="E"><vh>@path ./../../../</vh>
<v t="leo.20160421102453.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="leo.20160421102505.1"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="leo.20160421102513.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="leo.20160421102525.1"><vh>@button local pelican</vh></v>
</v>
<v t="leo.20160421102534.1"><vh>進入 content 目錄</vh></v>
<v t="leo.20160421102546.1" a="E"><vh>@path content</vh>
<v t="leo.20160421102552.1" a="E"><vh>@path bg3</vh>
<v t="leo.20160421102603.1"><vh>@clean 40123239_2.md</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160421102414.2"></t>
<t tx="leo.20160421102443.1"></t>
<t tx="leo.20160421102453.1"></t>
<t tx="leo.20160421102505.1">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="leo.20160421102513.1"></t>
<t tx="leo.20160421102525.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20160421102534.1"></t>
<t tx="leo.20160421102546.1"></t>
<t tx="leo.20160421102552.1"></t>
<t tx="leo.20160421102603.1">@language md
Title: 40123239 - 期中報告
Category: bg3
Tags: scrum1, task1, 40123239
Author: 40123239
@others


期中報告

&lt;!-- PELICAN_END_SUMMARY --&gt;

自評分數:70

&lt;h2&gt;md檔:fork cdw2並git clone和切換分支到 gh-pages,在content下新增組別資料夾


在cdw2--&gt;users--&gt;s2b--&gt;bg2下新增leo檔,在裡面新增md檔,內容打在裡面


&lt;h2&gt;畫出ABCD:需在master分支下執行,需先在myflaskapp.py註冊各組組員的檔案


繪圖程式使用老師說的scrum1及scrum2,scrum1放在組別leo裡作為統組所有組員</t>
</tnodes>
</leo_file>
