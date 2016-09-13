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
<v t="leo.20160421103154.2"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh></v>
<v t="leo.20160421103209.1" a="E"><vh>@path ./../../../</vh>
<v t="leo.20160421103209.2" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="leo.20160421103209.3"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="leo.20160421103210.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="leo.20160421103413.1"><vh>@button local pelican</vh></v>
</v>
<v t="leo.20160421103210.2"><vh>進入 content 目錄</vh></v>
<v t="leo.20160421103305.1" a="E"><vh>@path content</vh>
<v t="leo.20160421103521.1" a="E"><vh>@path bg3</vh>
<v t="leo.20160421103521.2"><vh>@clean 40123250_2.md</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20160421103154.2"></t>
<t tx="leo.20160421103209.1"></t>
<t tx="leo.20160421103209.2"></t>
<t tx="leo.20160421103209.3">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="leo.20160421103210.1"></t>
<t tx="leo.20160421103210.2"></t>
<t tx="leo.20160421103305.1"></t>
<t tx="leo.20160421103413.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20160421103521.1"></t>
<t tx="leo.20160421103521.2">@language md
Title: 40123250 - 期中報告
Category: bg3
Tags: scrum1, task1, 40123250
Author: 40123250
@others


期中報告

&lt;!-- PELICAN_END_SUMMARY --&gt;

自評分數:75

&lt;h2&gt;md檔:fork cdw2並且git clone下來切換分支到 gh-pages,在content目錄下新增組別資料夾

&lt;img src="./../files/bg3/40123250-1.png"&gt;

在cdw2=&gt;users=&gt;s2b=&gt;bg3下新增個人的leo檔,在裡面新增md檔,內容打在裡面

&lt;img src="./../files/bg3/40123250-2.png"&gt;

&lt;h2&gt;繪ABCD:需在master分支下執行,需先在myflaskapp.py註冊各組組員的檔案如圖所示

&lt;img src="./../files/bg3/40123250-3.png"&gt;

&lt;img src="./../files/bg3/40123250-4.png"&gt;

繪圖程式採用老師給的scrum1及scrum3,scrum2,scrum1放在組別leo裡作為統組所有組員

scrum3及scrum2的內容所用

&lt;img src="./../files/bg3/40123250-5.png"&gt;

而每位組員的scrum2則繪製ABCD各部位所用

&lt;img src="./../files/bg3/40123250-6.png"&gt;

上述完成後須先python wsgi.py在近端測試可否執行

&lt;a href="http://cdw2-cadp13ag35.rhcloud.com/g3/scrum1_task40123250"&gt;bg3-openshift&lt;/a&gt; 
</t>
</tnodes>
</leo_file>
