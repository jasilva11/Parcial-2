for /d %%i in (*) do (
	SET timeOut = 2
	mkdir ..\screenshots\%%i
	:: UNINSTALL PREVIOUS APK
	adb uninstall com.evancharlton.mileage
	::RESIGN CURRENT APK
	bundle exec calabash-android resign %%i/com.evancharlton.mileage_3110.apk
	:: INSTALL NEW APK
	adb install %%i/com.evancharlton.mileage_3110.apk
	:: LAUNCH APP
	adb shell monkey -p com.evancharlton.mileage -c android.intent.category.LAUNCHER 1
	:: ADD NEW FILL UP
	adb shell input tap 525 1740
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot1.png
	adb shell input text 11
	adb shell input tap 525 1740
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot2.png
	adb shell input text 7500
	adb shell input tap 525 1740
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot3.png
	adb shell input text 2
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot4.png
	adb shell input tap 780 560
	adb shell input tap 526 1000
	adb shell input tap 526 1000
	adb shell input tap 526 1000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot5.png
	adb shell input tap 320 1160
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot6.png
	adb shell input tap 525 1740
	:: CHECK LIST OF FILL UPS
	adb shell input tap  300 100
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot7.png
	:: ADD NEW FILL UP
	adb shell input tap  100 100
	adb shell input tap  10 350
	adb shell input text 7800
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot8.png
	adb shell input tap  800 350
	adb shell input text 5
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot9.png
	adb shell input tap  10 500
	adb shell input text 4
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot10.png
	adb shell input tap 780 560
	adb shell input tap 526 1000
	adb shell input tap 526 1000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot11.png
	adb shell input tap 320 1160
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot12.png
	adb shell input tap  525 1740
	:: CHECK LIST OF FILL UPS
	adb shell input tap  300 100
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot13.png
	:: ADD NEW FILL UP
	adb shell input tap  100 100
	adb shell input tap  10 350
	adb shell input text 8000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot14.png
	adb shell input tap  800 350
	adb shell input text 10
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot15.png
	adb shell input tap  10 500
	adb shell input text 3
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot16.png
	adb shell input tap 780 560
	adb shell input tap 526 1000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot17.png
	adb shell input tap 320 1160
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot18.png
	adb shell input tap 67 716
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot19.png
	adb shell input tap  525 1740
	:: CHECK LIST OF FILL UPS
	adb shell input tap  300 100
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot20.png
	:: ADD NEW FILL UP
	adb shell input tap  100 100
	:: ADD FIELD
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot21.png
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot22.png
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot23.png
	adb shell input tap 528 1688
	timeout 1
	adb shell input text Test
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot24.png
	adb shell input tap 10 374
	adb shell input text Description
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot25.png
	adb shell input tap 510 960
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot26.png
	adb shell input tap 310 1896
	adb shell input tap 10 350
	adb shell input text 8000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot27.png
	adb shell input tap 800 350
	adb shell input text 10
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot28.png
	adb shell input tap 10 500
	adb shell input text 3
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot29.png
	adb shell input tap 10 910
	adb shell input text comment
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot30.png
	adb shell input tap 286 1865
	adb shell input tap 10 1086
	adb shell input text description
	adb shell input tap 525 960
	:: CHECK LIST OF FILL UPS
	adb shell input tap 300 100
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot31.png
	:: CHECK STATS
	adb shell input tap 700 100
	timeout 1
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot32.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot33.png
	:: EDIT VEHICLE
	adb shell input tap 948 186
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot34.png
	adb shell input tap 194 361
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot35.png
	adb shell input swipe 484 781 507 29
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot36.png
	adb shell input tap 147 380
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot37.png
	adb shell input tap 195 996
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot38.png
	adb shell input tap 104 675
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot39.png
	adb shell input tap 189 644
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot40.png
	adb shell input tap 505 960
	:: RECALCULATE
	adb shell input tap 700 100
	timeout 1
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot41.png
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot42.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot43.png
	:: ADD VEHICLE
	adb shell input tap  948 186
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot44.png
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot45.png
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot46.png
	timeout 1
	adb shell input tap 530 960
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot47.png
	adb shell input text CarroTest
	adb shell input tap 530 960
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot48.png
	adb shell input text 1996
	adb shell input tap 510 1070
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot49.png
	adb shell input text Ford
	adb shell input tap 530 960
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot50.png
	adb shell input text Fiesta
	adb shell input tap 530 960
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot51.png
	:: RECALCULATE
	adb shell input tap  700 100
	timeout 1
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot52.png
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot53.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot54.png
	:: SET VEHICLE AS DEFAULT
	adb shell input tap 948 186
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot55.png
	adb shell input touchscreen swipe 111 551 111 551 2000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot56.png
	adb shell input tap  260 1350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot57.png
	:: RECALCULATE
	adb shell input tap 700 100
	timeout 1
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot58.png
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot59.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot60.png
	:: DELETE VEHICLE
	adb shell input tap 948 186
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot61.png
	adb shell input swipe 224 458 224 458 2000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot62.png
	adb shell input tap 401 1784
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot63.png
	adb shell input tap 272 1110
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot64.png
	:: RECALCULATE
	adb shell input tap 700 100
	timeout 1
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot65.png
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot66.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot67.png
	:: CHECK FILL UP DETAILS
	adb shell input tap 300 100
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot68.png
	adb shell input tap 101 346
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot69.png
	adb shell input tap 796 204
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot70.png
	adb shell input tap 310 1896
	:: DELETE FILL UP	
	adb shell input touchscreen swipe 124 532 124 532 2000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot71.png
	adb shell input tap 309 414
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot72.png
	adb shell input tap 272 1110
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot73.png
	:: RECALCULATE
	adb shell input tap 700 100
	timeout 1
	adb shell input tap 972 1885
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot74.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot75.png
	:: ADD SERVICE INTERVAL
	adb shell input tap 300 100
	adb shell input tap 972 1885
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot76.png
	adb shell input tap 177 1713
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot77.png
	adb shell input tap 520 1000
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot78.png
	adb shell input tap 310 1896
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot79.png
	adb shell input tap 550 1730
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot80.png
	adb shell input tap 310 1896
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot81.png
	:: RECALCULATE
	adb shell input tap 700 100
	timeout 1
	adb shell input tap 972 1885
	adb shell input tap 264 1512
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot82.png
	adb shell input swipe 450 1800 450 350
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot83.png
	:: CHECK IMPORT SCREEN
	adb shell input tap 972 1885
	adb shell input tap 280 1700
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot84.png
	adb shell input tap 520 470
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot85.png
	adb shell input tap 310 1896
	:: CHECK EXPORT SCREEN
	adb shell input tap 520 613
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot86.png
	adb shell input tap 310 1896
	adb shell input tap 310 1896
	adb shell input tap 310 1896
	:: CHECK SETTINGS SCREEN
	adb shell input tap 972 1885
	adb shell input tap 810 1700
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot87.png
	adb shell input swipe 543 1100 543 700
	adb exec-out screencap -p > ..\screenshots\%%i\screenshot88.png
)