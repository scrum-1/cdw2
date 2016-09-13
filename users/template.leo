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
<v t="amd.20160329124554.2" a="E"><vh>@path ./../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160329174131.1" a="E"><vh>@path user1</vh>
<v t="amd.20160329174139.1"><vh>@clean user1-20160329.md</vh></v>
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
Title: user1-測試 content 目錄下的 md 檔案轉換
Category: ag1
Tags: 範例, task1
Author: kmol
@others
網站類別分為 ag1~ag10, bg1~bg10, 與 MISC, 各組員必須透過 Leo Editor, Pelican,  與 Github pull requests 完成.

&lt;!-- PELICAN_END_SUMMARY --&gt;

CDW2 網頁: &lt;a href="http://2015fallhw.github.io/cdw2/"&gt;http://2015fallhw.github.io/cdw2/&lt;/a&gt;

二甲文章類別: ag1~ag10

二乙文章類別: bg1~bg10

本網頁將 Pelican 設定分為本地端與 gh-pages 端的原因在於 disqus 設定, 本地端無需 disqus 討論功能, 而 gh-pages 端則需要網址全稱才能正確與 disqus 設定連結, 因此所有使用者在近端檢視時, 必須採用近端的按鈕, 而要送到遠端前則必須要用遠端按鈕產生所需要的 post 目錄下的所有資料後, 再提交推送.

以下為圖片引用方法, 建議放到 files 目錄下, 並且用相對目錄引用各自放在以用戶名稱命名的子目錄中, 以避免多用戶因採相同檔名而覆寫:

&lt;pre class="brush: python;"&gt;
&lt;img src="./../files/user1/github.png" /&gt;
&lt;/pre&gt;

得到結果如下:

&lt;img src="./../files/user1/github.png" /&gt;

以下資料則從原先的 cdw2 gh-pages 分支中的 index.html 取出:

cdw2 所在倉儲: &lt;a href="https://github.com/2015fallhw/cdw2"&gt;https://github.com/2015fallhw/cdw2&lt;/a&gt;

以下繪圖由 s2a 的 g100 組所完成, 其中包括 s2b 的 g99 協同繪圖 (藍色零件). &lt;br /&gt;&lt;br /&gt;
&lt;a href="http://cdw2-ladisai.rhcloud.com/ag100/task2"&gt;http://cdw2-ladisai.rhcloud.com/ag100/task2&lt;/a&gt;
&lt;br /&gt;&lt;br /&gt;
以下則為4個零件中的第一個弧參數設定比較:
&lt;ol&gt;
&lt;li&gt;0(表示 x 軸轉角為0), 1(第一個選擇長度較大的弧), 0(且以右手向內畫弧)&lt;/li&gt;
&lt;li&gt;0(表示 x 軸轉角為0), 0(第一個選擇長度較小的弧), 0(且以右手向內畫弧)&lt;/li&gt;
&lt;li&gt;0(表示 x 軸轉角為0), 1(第一個選擇長度較大的弧), 1(且以右手向外畫弧)&lt;/li&gt;
&lt;li&gt;0(表示 x 軸轉角為0), 0(第一個選擇長度較小的弧), 1(且以右手向外畫弧)&lt;/li&gt;
&lt;/ol&gt;
&lt;a href="http://cdw2-ladisai.rhcloud.com/bg99/fourchain"&gt;http://cdw2-ladisai.rhcloud.com/bg99/fourchain&lt;/a&gt;
&lt;br /&gt;
&lt;br /&gt;
Task1 相關: &lt;a href="https://cmsimply-cadlab.rhcloud.com/get_page?heading=2016springCD"&gt;https://cmsimply-cadlab.rhcloud.com/get_page?heading=2016springCD&lt;/a&gt;
&lt;br /&gt;
&lt;br /&gt;
鍊條零件製造流程:
&lt;br /&gt;
&lt;br /&gt;
&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/h8j5-dC6_x8" frameborder="0" allowfullscreen&gt;&lt;/iframe&gt;
&lt;br /&gt;
&lt;br /&gt;
組立流程:
&lt;br /&gt;
&lt;br /&gt;
&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/ZwTryvdmzD4" frameborder="0" allowfullscreen&gt;&lt;/iframe&gt;

如何協同編輯 CDW2 gh-pages 網頁:

1. 首先必須要認清的是 gh-pages 網頁位於 &lt;a href="https://github.com/2015fallhw/cdw2"&gt;https://github.com/2015fallhw/cdw2&lt;/a&gt; 倉儲中的 gh-pages 分支, 與 master 分支中的資料不可弄混.

2. CDW2 倉儲中的 master 分支中的資料為 Python3 wsgi 應用程式, 各組必須協同完成任務之後, 將 master 分支中的程式以 git remote add 的方式推送到各組的 OpenShift Python3 應用程式, 然後再將各組的應用程式連結與任務操作過程資料回報到 gh-pages 網頁.

3. gh-pages 分支中各組分別使用 users 目錄下的 .md 檔, 以本地端按鈕產生本地端檢查用的網頁資料, 若沒有錯誤, 再提交推送到遠端, 若倉儲回應需要 pull 回資料, 一定要使用 git pull origin gh-pages 的方式, 明確取回 gh-pages 的分支合併, 若 content 目錄中的檔案能夠自動合併, 即可再用近端 Pelican 按鈕建立網頁資料, 檢查無誤後, 記得要再用遠端 Pelican 專用按鈕建立網頁後提交推送.

4. 另外建議各組員在 content 目錄下建立文章標題時, 可以在標題最前方加上學號, 因為目前的設定會使用各 .md  檔案中的標題, 以拼音的方式建立對應的 html 網頁檔案, 假如有兩份 .md 檔案擁有相同的 Title, 則 Pelican 將會報錯, 一直到使用者修正後才能再正確進行 .md -&gt; .html 檔案轉換的工作.

5. 採用 pull requests 尋求 gh-pages 合併時, 因為網頁中的許多檔案都將產生衝突, 因此通常無法直接在 Github 中直接合併, 各組組長必須要根據系統的提示, 將資料拉到本地端後, 再視實際狀況處理 .md 的衝突 (千萬不要以手動處理 .html 檔案的衝突), 然後再用本地端按鈕建立網頁, 檢視無誤後再用遠端按鈕建立網頁資料後, 執行提交推送流程, 假如各組組長在處理衝突過程, 已經有其他組對遠端的倉儲版本進行更版, 則前述拉回處理衝突與合併的動作, 就必須再重複一遍.

祝大家協同愉快!!!
</t>
</tnodes>
</leo_file>
