# GLGR-8U8D-100 存檔格式
+ 版本: v20230216a

### 更新紀錄
+ 2023-02-16，初版。

### SD卡內的檔案結構
<table>
<tbody>
<tr>
<td colspan="19" width="431">
路徑
</td>
<td colspan="6" width="136">
說明
</td>
</tr>
<tr>
<td colspan="19" width="431">
X:\
</td>
<td colspan="6" width="136">
根目錄
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td colspan="18" width="409">
GLGR\
</td>
<td colspan="6" width="136">
紀錄器資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="17" width="386">
Data\
</td>
<td colspan="6" width="136">
Data資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="16" width="363">
202302\
</td>
<td colspan="6" width="136">
年月資料夾
</td>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="15" width="341">
A00120230214131530\
</td>
<td colspan="6" width="136">
<p>Record資料夾</p>
<p>*包含儀器四碼序號與起始時間</p>
</td>
</tr>
<tr>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td colspan="14" width="319">
0001\
</td>
<td colspan="6" width="114">
<p>分頁資料夾</p>
<p>*範圍: 0~9999或0x0000~0xFFFF</p>  
<p>*8U8D-100恰好一天一個分頁資料夾，使用0~9999</p>
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000000001.bin
</td>
<td colspan="6" width="92">
<p>資料檔案</p>
<p>*範圍: 0~4294967295</p>  
<p>*8U8D-100恰好一分鐘一個檔案，故使用範圍遠小於4294967295</p>
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000000002.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
...
</td>
<td colspan="6" width="92">
更多資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001440.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
0002\
</td>
<td colspan="6" width="114">
分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001401.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001402.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
...
</td>
<td colspan="6" width="92">
更多資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000002880.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
...
</td>
<td colspan="6" width="114">
更多分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
Config.json
</td>
<td colspan="6" width="114">
Record設定檔
</td>
</tr>  
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="15" width="341">
A00120230216143500\
</td>
<td colspan="6" width="136">
Record資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
0001\
</td>
<td colspan="6" width="114">
分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000000001.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000000002.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
...
</td>
<td colspan="6" width="92">
更多資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001440.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
0002\
</td>
<td colspan="6" width="114">
分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001401.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001402.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
...
</td>
<td colspan="6" width="92">
更多資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000002880.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
...
</td>
<td colspan="6" width="114">
更多分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
Config.json
</td>
<td colspan="6" width="114">
Record設定檔
</td>
</tr> 
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="16" width="363">
202302\
</td>
<td colspan="6" width="136">
年月資料夾
</td>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="15" width="341">
A00120230214131530\
</td>
<td colspan="6" width="136">
Record資料夾
</td>
</tr>
<tr>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td colspan="14" width="319">
0001\
</td>
<td colspan="6" width="114">
分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000000001.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000000002.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
...
</td>
<td colspan="6" width="92">
更多資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001440.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
0002\
</td>
<td colspan="6" width="114">
分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001401.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000001402.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
...
</td>
<td colspan="6" width="92">
更多資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>  
<td width="22">
&nbsp;
</td>
<td colspan="13" width="297">
0000002880.bin
</td>
<td colspan="6" width="92">
資料檔案
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
...
</td>
<td colspan="6" width="114">
更多分頁資料夾
</td>
</tr>
<tr>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td width="22">
&nbsp;
</td>
<td colspan="14" width="319">
Config.json
</td>
<td colspan="6" width="114">
Record設定檔
</td>
</tr>  
<tr>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">
<p>&nbsp;</p>
</td>
<td width="22">&nbsp;</td>
</tr>
</tbody>
</table>
