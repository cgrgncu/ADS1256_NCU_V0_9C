# ADS1256_NCU_V0_9C

### 已知問題
+ 手焊零件品質不佳，測試不易。
+ R5短路，造成LED燒毀。解決方式:POWER1的LED拔掉，R5拔掉。

### 電源供應
+ 選擇1: DC Jack(5V,2A,5V/1A,5V/0.5A)
+ 選擇2: USB2.0(CON1)。純Virtulcom版本韌體用這個來丟資料...
+ 選擇3: USB1.1(CON2)。

### GPS模組
+ 供電5V後模組才會啟動運行。
+ 鈕扣電池僅供維持RTC。
+ 上電後，GPS模組的USB接頭(Micro-B,Device only)可以連接電腦。是Virtual COM port，請依照ublox原廠軟體連線。
  + https://www.u-blox.com/en/product/u-center
  + 因為使用M8系列GPS模組，Windows下請使用「u-center」軟體而非「u-center2」軟體。
  + 需要有ublox GPS模組使用的Virtual COM Driver，這是「u-center」軟體的預設安裝項目。
  + 可利用「u-center」軟體設定GPS模組的參數、檢驗狀態、更新韌體等。目前設定BaudRate=57600。
  + 已經有Virtual COM Driver的電腦，可以用「putty」等終端機軟體讀取GPS模組輸出文字。用來Debug。
  + 
