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
<v t="amd.20160329211330.1"><vh>因為位於 users/s2a/g100 目錄, 必須跳三層才到外圍</vh></v>
<v t="amd.20160329124554.2" a="E"><vh>@path ./../../../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160329174131.1"><vh>@path bg4</vh></v>
<v t="amd.20160329174139.1"><vh>@clean scrum1-40323201.md</vh></v>
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
Title: 40323201-期中報告
Category: bg4
Tags: scrum1, task1, 40323201
Author: 40323201
@others

&lt;span style="font-size:20px;"&gt;40323201-期中報告&lt;/span&gt;
&lt;!-- PELICAN_END_SUMMARY --&gt;
&lt;br&gt;
&lt;span style="font-size:18px;"&gt;1. 協同繪圖: &lt;a href="http://cdw2bg4-40323201.rhcloud.com/bg4/scrum1_task1" style="color:blue;"&gt; bg4藍圖 &lt;/a&gt;&lt;/span&gt;
&lt;br&gt;
&lt;img
src="https://lh3.googleusercontent.com/1TFAuSJABdP1eesI1XkSroR3jzmL0PB5en-5QSC8Qa7MKm0pBc4Bl4Kvkz-3T3MbRFF4d-fTh034KkVBxI0yAb1S9z1LmFVIkNqhNQHp32BnpyABrFlg6qZia3cRrOv0BJBlSRy-d4H1b2hW-UVLPiFLOQ8KE4lbesEBb1wrmeYSlVejtDrgIIuCS6lq8kXIB-a39rZ0uzc29_59PFRmuezQUMxdeO0sUfrI2pJQiwQCV9jdc4YaswRV6VMJ9bJWaqGCr1GDVdAvP4BaoJDPXN18WgFMVgHHbQro9TT8uSSjgyvELIA_1lPN5v45-IuHeV6ky9kakl5vGGsEEaL0r057YXOq4QqLiwiMKQ8dv6kIhSn06AO5MMxh17LSfGC-fvNy_RIf7_UtUqlrKjx-zXdibHPHHYh4qOkcvh5_L1jSZx-oy6YmJczBUW_b0UHHctTic0ssZXyI7IHNAC_gGgsFoSUtQxvn---NzG4FWINB28tWMvYl-T5JEqc9I-oONm-pfI0Cr5SmQHsLOjJrMWNfpoLAupMBeMYLS6ludViTXYmZ0_fzwsb8biEUxVbcMD39=w638-h598-no"width="400"height="300"&gt;
&lt;br&gt;
&lt;span style="font-size:18px;"&gt;2. 個人繪圖:&lt;a href="http://bg4scrum1-40323201.rhcloud.com/"style="color:blue;"&gt;個人藍圖 A &lt;/font&gt;&lt;/a&gt;&lt;/span&gt;
&lt;br&gt;
&lt;img
src="https://lh3.googleusercontent.com/ZCuvH0G0ouW-_pFhhVbwFu0_tl1Gz3iWbesJ8c6_BwfnGChpKNA5f57lbjDraMrOQ3-MUdK9561QcYq3K9jwwZ-NU7PsFRNvBHM3wXHiqdSrEYRmICmf8enPF_CCouFS6Sj9AO7nd37hVVhfQYyVRtUzwqRI5-KBkmC86wjLk2cyUx3K9eL8JRvbs-W34J3DCwgao7GYfKWIe8xWtAkQyo-FrAbVH5Eo1Gs_2WEGC5JWNdcRjTvsHU7VzcFW4rrk2Jqss0S24H7neBDCr3c7a7HbZFI38ELwPJxdxcKB2ye4CWGVC1raMdLpKW29LoC5rpaEm1DOHoV0y4uC4wLDXGSA_bUT5FcMm25YT-6QPXW3e8uwjvuC1HcX21aXllhnWuVIwJyB0xxs8AsDAL-R_SynBuhI3uzjgI1KlkF5DsuNk4rC8en351dMiMLPwgxQQaThhVka5BsWxkLLqz9jKuXTTQvRsqtEo3t6ZG-bdRCs7PttUbJDLYtR2P4I3TbiFpGRYIQUsHrumOSMe3q31GNazqId1JqW2xWd1xEuANfLcS3exc0vsaj2fe9dpxdPyRrf=w561-h470-no"width="400"height="300"&gt;
&lt;br&gt;
&lt;span style="font-size:18px;"&gt;3.Onshape繪製鏈條:&lt;a href="https://cad.onshape.com/documents/b8e75d0261b9d2f91ff7fbe8/w/3583de3e0792c9793f320027/e/f5ac724a461a16bb1370e750"style="color:blue;"&gt;A &lt;/font&gt;&lt;/a&gt;&lt;/span&gt;
&lt;br&gt;
&lt;img
src="https://lh3.googleusercontent.com/e6HaKaPUEGKIdBNS22Ij6_1yfUvUFNFZSZBpTGF5BUcBM4QQn6g66-cIc5LCTHYrfpKB5mo0N_gf_sJbfh_qUCVrpWr3_jf1HjDsTwmG8D-l12TBk_7eB0tGMhOIWMpr2IMSg2M9V0Gm3ho3FpGGfAptRap42MNUQvLXhENwb55n7IvDipMe-_Y5kldXB2zYoCAkiiasjG3ud3HuK592RQwqjvxG6quz31s_btT14iIk4Q6oGqw4g98NZaGWJHz6WO2mEgHi2xAaQF7A1hVtD2tttnN4dhR3St_QKdJOCahNqann5lPwd-fMlMoOjdQrpLv_L1JKqTzJkH1eSogxt3YZWndxguPJ2KLNdKt0IiezBoaMHa_S-Kyz-ucRsPlfUU5tdkOFdhSh9699R72e7EBxpH9rcQxloe_5qSOHQi43BjyPlTJ5NFn9IQGMY6_sUGt8tD7xo63uzL8sjf1UDI91x0JF4J-_XFRQb6Hc36PRYe1bTQ9x2QWMso0opyEJj7CrHuC8TkigFNaFxq8iFtBN1XbPv8mJG8O6mtvTEzSRNIXreYNqY3542XZR_mNnMAGG=w1035-h879-no"width="400"height="300"&gt;
&lt;br&gt;
&lt;span style="font-size:18px;"&gt;4. Onshape鏈條A之stl檔:&lt;a href="https://github.com/40323201/stl/blob/master/bg4%20chain%2040323201-A%20-%20chainA.stl"style="color:blue;"&gt;stl之A &lt;/font&gt;&lt;/a&gt;&lt;/span&gt;
&lt;br&gt;
&lt;script src="https://embed.github.com/view/3d/40323201/stl/master/bg4%20chain%2040323201-A%20-%20chainA.stl"&gt;&lt;/script&gt;
&lt;br&gt;
&lt;br&gt;
&lt;span style="font-size:18px;"&gt;心得:&lt;br&gt;
從這次的主題課堂開始,老師就要我們開始畫2D的A~Z,但是也因為才一開始,大家友都相當茫然,不知從何做起,直到後半段學到了新的方法才開始動工.
&lt;br&gt;
一樣,一個團隊的合作相當重要,大家幫忙記課堂的重點,一起討論及詢問不清楚的步驟,才能有成功的報告呈現.&lt;/span&gt;
&lt;br&gt;
&lt;span style="font-size:24px;"&gt;本次作業自評:&lt;strong&gt;60分&lt;/strong&gt;&lt;/span&gt;

</t>
<t tx="amd.20160329211330.1"></t>
</tnodes>
</leo_file>
