# ADS1256_NCU_V0_9C

### 已知問題
+ 手焊零件品質不佳，測試不易。
+ R5短路，造成LED燒毀。解決方式:POWER1的LED拔掉，R5拔掉。
+ GPS模組設定:
  + 


### 電源供應
+ 選擇1: DC Jack(5V,2A,5V/1A,5V/0.5A)
+ 選擇2: USB2.0(CON1)。純Virtulcom版本韌體用這個來丟資料...
+ 選擇3: USB1.1(CON2)。

### GPS模組
+ 供電5V後模組才會啟動運行。
+ 鈕扣電池僅供維持RTC。
+ 上電後，GPS模組的USB接頭(Micro-B,Device only)可以連接電腦。是Virtual COM port，請依照ublox原廠軟體連線。
