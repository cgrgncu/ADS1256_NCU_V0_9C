# ADS1256_NCU_V0_9C

### 已知問題
+ 手焊零件品質不佳，測試不易。
+ R5短路，造成LED燒毀。解決方式:POWER1的LED拔掉，R5拔掉。
  + 線路圖第一頁，LED區塊，POWER1的LED拔掉。R5拔掉。
+ L13~L16要接上
+ JP4接頭下一版本要改。

### 電源供應
+ 來源:
  + 選擇1: DC Jack(5V,2A,5V/1A,5V/0.5A)
  + 選擇2: USB2.0(CON1)。純Virtulcom版本韌體用這個來丟資料...
  + 選擇3: USB1.1(CON2)。
+ 上電燈號: 
  + SD卡槽旁邊的LED燈(SD_POWER1)會亮。這是硬體過電就亮，非韌體控制。
  + 韌體初始化成功就慢閃MCU旁的黃燈(LED_Y1)。MCU韌體控制，一秒一次。
  + 開始記錄時MCU旁的紅燈恆亮。

### GPS模組
+ 供電5V後模組才會啟動運行。
+ 鈕扣電池僅供維持RTC。
+ 上電後，GPS模組的USB接頭(Micro-B,Device only)可以連接電腦，僅用於除錯。支援熱拔插，隨時可移除。是Virtual COM port，請依照ublox原廠軟體連線。
  + https://www.u-blox.com/en/product/u-center
  + 因為使用M8系列GPS模組，Windows下請使用「u-center」軟體而非「u-center2」軟體。
  + 需要有ublox GPS模組使用的Virtual COM Driver，這是「u-center」軟體的預設安裝項目。
  + 可利用「u-center」軟體設定GPS模組的參數、檢驗狀態、更新韌體等。目前設定BaudRate=57600。
  + 已經有Virtual COM Driver的電腦，可以用「putty」等終端機軟體讀取GPS模組輸出文字。用來Debug。
  + 


### SD卡格式
+ 支援FAT32與exFAT，目前打算只使用exFAT來測試。最大容量試過256[GB]。


# 開發紀錄

### MCU開發板
https://www.nuvoton.com/products/iot-solution/iot-platform/numaker-pfm-m487/index.html



# 8U8D

### 產品壽命
+ GPS week number rollover:
  + 約19.6年發生一次，其計算week的二進位數值會溢位而回到0，這將影響產品的壽命。
  + GPS week number rollover第一次發生在1999年，第二次在2019年，下一次則是在2038年。
  + ublox公司的GPS採用業界常用的補償值設計，使GPS晶片延長溢位的發生時間。
  + 查閱晶片的韌體版本說明，會指出GPS week number的設定，對應可使用的年份。M8系列使用FW3.01時，約在2035年四月發生溢位。
    + REF: https://content.u-blox.com/sites/default/files/GNSS-FW3.01_ReleaseNotes_%28UBX-16000319%29_Public.pdf
  + 解決方案1: 如果原廠有提供韌體更新，應該還是可以延長時間壽命。
  + 解決方案2: 更新GPS晶片。
+ 2038年問題:
  + 2038年問題可能會導致某些軟體在2038年1月19日3時14分07秒之後無法正常工作。所有使用POSIX時間表示時間的程式都將受其影響。
  + 解決方案: 不要使用任何32bit的Time函數，改以GPS提供的時間戳搭配計數器(索引值)進行記錄。
    + 多數程式語言已經有替代函數出現，可用時間可包含0001年1月1日至9999年12月31日。MATLAB比較特別，是從一個不存在的0000年1月0日開始。這表示在電腦上後處理涵蓋了數千年內的使用範圍。
    + 規劃分索引值[min]:    
      + 1[hr]=60[min]
      + 1[day]=24[hr]=1440[minute]
      + 1[year]=365[day]=525600[sec]
      + 使用unsigned int型別，可使用於紀錄約8171年的時間長度。
    + 規劃秒索引值[sec]:
      + 1[min]=60[sec]
      + 1[hr]=60[min]=3,600[sec]
      + 1[day]=24[hr]=86,400[sec]
      + 1[year]=365[day]=31,536,000[sec]
      + 使用unsigned int型別，可使用於紀錄約136年的時間長度。
    + 如有必要則追加每秒第幾點索引值[index]
