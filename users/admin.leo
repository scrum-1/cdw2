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
<v t="amd.20160329124757.1"><vh>跳出 users 目錄</vh></v>
<v t="amd.20160329124554.2" a="E"><vh>@path ./../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329162138.1"><vh>設定檔案</vh></v>
<v t="amd.20160329165035.1" a="E"><vh>本地端與遠端共用的設定</vh>
<v t="amd.20160329163958.1"><vh>@edit pelicanconf.py</vh></v>
</v>
<v t="amd.20160329165054.1" a="E"><vh>配合遠端 disqus 設定</vh>
<v t="amd.20160329164746.1"><vh>@edit publishconf.py</vh></v>
</v>
<v t="amd.20160329165118.1" a="E"><vh>配合本地端設定</vh>
<v t="amd.20160329162950.1"><vh>@edit local_publishconf.py</vh></v>
</v>
<v t="amd.20160329124921.1"><vh>@edit index.html</vh></v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160329125251.1"><vh>@＠clean template-20160329.md</vh></v>
</v>
</v>
<v t="amd.20160329172339.1" a="E"><vh>@path ./../content/pages</vh>
<v t="amd.20160329172339.2" a="E"><vh>pages 文章</vh>
<v t="amd.20160329172339.3"><vh>@edit template_pages.md</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20160329124554.2"></t>
<t tx="amd.20160329124757.1"></t>
<t tx="amd.20160329124849.1"></t>
<t tx="amd.20160329124903.1"></t>
<t tx="amd.20160329125251.1">@language md
Title: template-使用前必須改名
Category: MISC
Tags: CADLAB, Ｍanual, MCAD
Author: kmol
@others


&lt;!-- PELICAN_END_SUMMARY --&gt;



</t>
<t tx="amd.20160329162138.1"></t>
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
<t tx="amd.20160329165035.1"></t>
<t tx="amd.20160329165054.1"></t>
<t tx="amd.20160329165118.1"></t>
<t tx="amd.20160329172339.1"></t>
<t tx="amd.20160329172339.2"></t>
</tnodes>
</leo_file>
