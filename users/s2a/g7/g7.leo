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
<v t="amd.20160329211330.1"><vh>@clean scrum1-20160329.md</vh></v>
<v t="amd.20160329124554.2" a="E"><vh>@path ./../../../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160405203555.1"><vh>@edit scrum1-20160411.md </vh></v>
<v t="leo.20160418092404.1"><vh>@edit scrum1-20160412.md </vh></v>
<v t="leo.20160418092912.1"><vh>@edit scrum1-20160413.md </vh></v>
<v t="leo.20160418095559.1"><vh>@edit scrum1-20160414.md </vh></v>
<v t="leo.20160418095726.1"><vh>@edit scrum1-20160415.md </vh></v>
<v t="leo.20160418095842.1"><vh>@edit scrum1-20160416.md </vh></v>
<v t="leo.20160418100005.1"><vh>@edit scrum1-20160417.md </vh></v>
<v t="leo.20160420231121.1"><vh>@edit scrum1-20160410.md </vh></v>
<v t="amd.20160329174131.1" a="E"><vh>@path ag7</vh>
<v t="amd.20160329174139.1"><vh>@clean scrum1-20160411.md</vh></v>
<v t="leo.20160418092745.1"><vh>@clean scrum1-20160412.md</vh></v>
<v t="leo.20160418092938.1"><vh>@clean scrum1-20160413.md</vh></v>
<v t="leo.20160418095622.1"><vh>@clean scrum1-20160414.md</vh></v>
<v t="leo.20160418095745.1"><vh>@clean scrum1-20160415.md</vh></v>
<v t="leo.20160418095905.1"><vh>@clean scrum1-20160416.md</vh></v>
<v t="leo.20160418100026.1"><vh>@clean scrum1-20160417.md</vh></v>
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
<t tx="amd.20160329174139.1">@language md
Title: 40123227-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40123227
Author: kmol

ag7 組員 40123227 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40123227_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40123227_task0

其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
<t tx="amd.20160329211330.1"></t>
<t tx="leo.20160418092745.1">@language md
Title: 40023234-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40023234
Author: kmol

ag7 組員 40023234 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40023234_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40023234_task0

其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
<t tx="leo.20160418092938.1">@language md
Title: 40123119-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40123119
Author: kmol

ag7 組員 40123119 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40123119_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40123119_task0&lt;/a&gt;


其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
<t tx="leo.20160418095622.1">@language md
Title: 40123141-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40123141
Author: kmol

ag7 組員 40123141 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40123141_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40123141_task0&lt;/a&gt;

其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
<t tx="leo.20160418095745.1">@language md
Title: 40123149-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40123149
Author: kmol

ag7 組員 40123149 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40123149_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40123149_task0&lt;/a&gt;

其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
<t tx="leo.20160418095905.1">@language md
Title: 40123216-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40123216
Author: kmol

ag7 組員 40123216 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40123216_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40123216_task0&lt;/a&gt;
其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
<t tx="leo.20160418100026.1">@language md
Title: 40123255-回報 ag7 初步繪圖主機與連結
Category: ag7
Tags: scrum1, task1, 40123255
Author: kmol

ag7 組員 40123255 已經在 cdw2 倉儲中的 master 分支建立對應的組員 並且完成 Task1 的繪圖藍圖建立與註冊

&lt;!-- PELICAN_END_SUMMARY --&gt;

目前所完成的 OpenShift 對應繪圖連結為: &lt;a href="http://python-40123149.rhcloud.com/ag7/a40123255_task0"&gt;http://python-40123149.rhcloud.com/ag7/a40123255_task0&lt;/a&gt;

其中已經在主程式中導入 scrum1_task1.py 中的 scrum1_task1 藍圖變數, 並且複製範例中的鏈條繪圖 ,準備進一步完成 Task1 協同任務.

</t>
</tnodes>
</leo_file>
