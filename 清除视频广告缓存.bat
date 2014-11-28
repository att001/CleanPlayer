rem 脚本名：广告缓存手动清理脚本
rem 参数：APPDATA, USERDOMAIN, USERNAME, USERPROFILE
rem 版本号：v4.1
rem 更新日期：2013-06-17 18:00

set tmpdealstr=%4
if not defined tmpdealstr goto defaultbat

rem 包含参数脚本
set tmpdealstr=%1
set userprostr1=%tmpdealstr:~1,-1%
set tmpdealstr=%2
set userprostr2=%tmpdealstr:~1,-1%
set tmpdealstr=%3
set userprostr3=%tmpdealstr:~1,-1%
set tmpdealstr=%4
set userprostr4=%tmpdealstr:~1,-1%

rem IE6\7\8\9
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.gif"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.png"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.jpg"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.html"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.js"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.htm"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.xml"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.css"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.swf"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.flv"
del /f /s /q "%userprostr4%\Local Settings\Temporary Internet Files\*.mp4"
rd /q /s "%userprostr4%\Local Settings\Temporary Internet Files\Content.IE5"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.gif"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.jpg"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.png"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.js"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.htm"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.html"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.xml"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.css"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.swf"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.flv"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.mp4"
del /f /s /q "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
rd /q /s "%userprostr4%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"

rem 360安全浏览器
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.jpg"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.png"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.gif"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.js"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.htm"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.html"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.xml"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.css"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.swf"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.flv"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.mp4"
del /f /s /q "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\*.*"
rd /q /s "%userprostr4%\Application Data\360se\ie8data\Temporary Internet Files\Content.IE5"

rem 360极速浏览器
del /f /s /q "%userprostr4%\Local Settings\Application Data\360Chrome\Chrome\User Data\Default\CacheIE\*.*"
del /f /s /q "%userprostr4%\Local Settings\Application Data\360Chrome\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%userprostr4%\AppData\Local\360Chrome\Chrome\User Data\Default\Cache\*.*"
rd /q /s "%userprostr4%\Local Settings\Application Data\360Chrome\Chrome\User Data\Default\CacheIE\Content.IE5"

rem 搜狗浏览器
del /f /s /q "%userprostr4%\Application Data\SogouExplorer\Webkit\Default\Cache\*.*"
del /f /s /q "%userprostr4%\AppData\Roaming\SogouExplorer\Webkit\Default\Cache\*.*"

rem Opera浏览器
del /f /s /q "%userprostr4%\AppData\Local\Opera\Opera\cache\*.*"
del /f /s /q "%userprostr4%\Local Settings\Application Data\Opera\Opera\cache\*.*"
del /f /s /q "%userprostr4%\Local Settings\Application Data\Opera\Opera\application_cache\mcache\*.*"
del /f /s /q "%userprostr4%\Local Settings\Application Data\Opera\Opera\application_cache\cache_groups.xml
del /f /s /q "%userprostr4%\Local Settings\Application Data\Opera\Opera\opcache\*.*"

rem 淘宝浏览器
del /f /s /q "%userprostr4%\AppData\Local\TaoBrowser\User Data\Default\Cache\*.*"
del /f /s /q "%userprostr4%\AppData\Local\TaoBrowser\User Data\Default\JumpListIcons\*.*"
del /f /s /q "%userprostr4%\Local Settings\Application Data\TaoBrowser\User Data\Default\Cache\*.*"

rem 百度浏览器
del /f /s /q "%userprostr4%\Application Data\Baidu\browser\DiskCache\*.*"
del /f /s /q "%userprostr4%\AppData\Roaming\Baidu\browser\DiskCache\*.*"

rem 猎豹浏览器
del /f /s /q "%userprostr4%\Local Settings\Application Data\liebao\User Data\Default\Cache\*.*"
rd /q /s "%userprostr4%\Local Settings\Application Data\liebao\User Data\iecache\Content.IE5"
del /f /s /q "%userprostr4%\AppData\Local\liebao\User Data\Default\Cache\*.*"
del /f /s /q "%userprostr4%\AppData\Local\liebao\User Data\Default\JumpListIcons\*.*"

rem Letv
del /f /s /q "%userprostr4%\Application Data\Letv\Logg\*.log"

rem 清理PPStream广告缓存文件
rd /q /s "%userprostr1%\PPStream\adsys"
rd /q /s "%userprostr1%\PPStream\banner"
rd /q /s "%userprostr1%\PPStream\notice"
del /f /s /q "%userprostr1%\PPStream\CLCache\*.pld"
del /f /s /q "%userprostr1%\PPStream\FDSCache\*.blf"

rem PPTV
rd /q /s "%appdata%\PPLive\PPTV\cache"

rem 风行
rd /q /s "%userprostr4%\funshion\cache"

rem 屏蔽YOUKU
set DestPath="%userprostr1%\Macromedia\Flash Player\#SharedObjects"
set DestExt=YOUKU_FSO_PROXY.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽letv
set DestPath="%userprostr1%\Macromedia\Flash Player\#SharedObjects"
set DestExt=com.letv.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽iqiyi
set DestPath="%userprostr1%\Macromedia\Flash Player\#SharedObjects"
set DestExt=qiyi_statistics.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽Chrome YOUKU
set DestPath="%userprostr4%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=YOUKU_FSO_PROXY.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽Chrome Letv
set DestPath="%userprostr4%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=com.letv.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽Chrome iqiyi
set DestPath="%userprostr4%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=qiyi_statistics.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽360 YOUKU
set DestPath="%userprostr4%\AppData\Local\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=YOUKU_FSO_PROXY.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽360 Letv
set DestPath="%userprostr4%\AppData\Local\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=com.letv.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽360 iqiyi
set DestPath="%userprostr4%\AppData\Local\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=qiyi_statistics.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)
goto endbat

:defaultbat
rem 无参数脚本

rem IE6\7\8\9
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.gif"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.png"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.jpg"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.html"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.js"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.htm"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.xml"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.css"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.swf"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.flv"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.mp4"
rd /q /s "%userprofile%\Local Settings\Temporary Internet Files\Content.IE5"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.gif"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.jpg"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.png"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.js"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.htm"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.html"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.xml"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.css"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.swf"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.flv"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.mp4"
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
rd /q /s "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"

rem 360安全浏览器
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.jpg"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.png"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.gif"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.js"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.htm"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.html"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.xml"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.css"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.swf"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.flv"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.mp4"
del /f /s /q "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\*.*"
rd /q /s "%userprofile%\Application Data\360se\ie8data\Temporary Internet Files\Content.IE5"

rem 360极速浏览器
del /f /s /q "%userprofile%\Local Settings\Application Data\360Chrome\Chrome\User Data\Default\CacheIE\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\360Chrome\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\AppData\Local\360Chrome\Chrome\User Data\Default\Cache\*.*"
rd /q /s "%userprofile%\Local Settings\Application Data\360Chrome\Chrome\User Data\Default\CacheIE\Content.IE5"

rem 搜狗浏览器
del /f /s /q "%userprofile%\Application Data\SogouExplorer\Webkit\Default\Cache\*.*"
del /f /s /q "%userprofile%\AppData\Roaming\SogouExplorer\Webkit\Default\Cache\*.*"

rem Opera浏览器
del /f /s /q "%userprofile%\AppData\Local\Opera\Opera\cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Opera\Opera\cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Opera\Opera\application_cache\mcache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Opera\Opera\application_cache\cache_groups.xml
del /f /s /q "%userprofile%\Local Settings\Application Data\Opera\Opera\opcache\*.*"

rem 淘宝浏览器
del /f /s /q "%userprofile%\AppData\Local\TaoBrowser\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\AppData\Local\TaoBrowser\User Data\Default\JumpListIcons\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\TaoBrowser\User Data\Default\Cache\*.*"

rem 百度浏览器
del /f /s /q "%userprofile%\Application Data\Baidu\browser\DiskCache\*.*"
del /f /s /q "%userprofile%\AppData\Roaming\Baidu\browser\DiskCache\*.*"

rem 猎豹浏览器
del /f /s /q "%userprofile%\Local Settings\Application Data\liebao\User Data\Default\Cache\*.*"
rd /q /s "%userprofile%\Local Settings\Application Data\liebao\User Data\iecache\Content.IE5"
del /f /s /q "%userprofile%\AppData\Local\liebao\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\AppData\Local\liebao\User Data\Default\JumpListIcons\*.*"

rem Letv
del /f /s /q "%userprofile%\Application Data\Letv\Logg\*.log"

rem 清理暴风影音5广告缓存文件
rd /q /s "%ALLUSERSPROFILE%\Baofeng\StormPlayer\Profiles\md"
rd /q /s "%ALLUSERSPROFILE%\Baofeng\StormPlayer\Profiles\vod"
rd /q /s "%ALLUSERSPROFILE%\Application Data\Baofeng\StormPlayer\Profiles\md"
rd /q /s "%ALLUSERSPROFILE%\Application Data\Baofeng\StormPlayer\Profiles\vod"
rd /q /s "%ALLUSERSPROFILE%\Baofeng\Application Data\StormPlayer\Profiles\md"
rd /q /s "%ALLUSERSPROFILE%\Baofeng\Application Data\StormPlayer\Profiles\vod"

rem 清理PPStream广告缓存文件
rd /q /s "%appdata%\PPStream\adsys"
rd /q /s "%appdata%\PPStream\banner"
rd /q /s "%appdata%\PPStream\notice"
del /f /s /q "%appdata%\PPStream\CLCache\*.pld"
del /f /s /q "%appdata%\PPStream\FDSCache\*.blf"


rem pptv
rd /q /s "%ALLUSERSPROFILE%\PPLive\PPTV\Cache\pluginad"
rd /q /s "%ALLUSERSPROFILE%\Application Data\PPLive\PPTV\Cache\pluginad"
rd /q /s "%ALLUSERSPROFILE%\Application Data\PPLive\PPTV\screensaver"

rem 酷我音乐
del /f /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\ModuleData\ModNotify\loading\ad\*.*"
del /f /q /s "%PROGRAMFILES%\KWMUSIC\loading\ad\*.*"
rd /q /s "%ALLUSERSPROFILE%\kuwodata\KWMUSIC\ModuleData\ModNotify\loading"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\ModuleData\ModNotify\loading"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\res\cache\buffer_category_config"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\res\cache\download_artistpic"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\res\cache\kw_musicradio_pics"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\res\cache\kw_net_song"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\res\cache\kw_search_song"
rd /q /s "%ALLUSERSPROFILE%\Application Data\kuwodata\KWMUSIC\res\cache\kw_search_lyric"

rem 多米
del /f /s /q "C:\Program Files\DuoMi\dmdeskinfo.exe"

rem 风行
rd /q /s "%userprofile%\funshion\cache"

rem UUSEE
rd /q /s "%TEMP%\UUFile"

rem 爱奇艺
del /f /q /s "%ALLUSERSPROFILE%\Application Data\Qiyi\qiyiclient\cache\*.*"

FOR /F "skip=1 " %%i IN (
'wmic logicaldisk where "drivetype='3'" get deviceid'
) DO ( 
if exist %%i ( 

rem 迅播
if exist "%%i\vod_cache_data" rd /s /q %%i\vod_cache_data 

rem 看看
if exist "%%i\gvod_cache_data" rd /s /q %%i\gvod_cache_data 
if exist "%%i\GVODCache" rd /s /q %%i\GVODCache 
if exist "%%i\kankan" del /f /s /q "%%i\kankan\*.xv"

rem 乐鱼
if exist "%%i\LeyuCache" rd /s /q %%i\LeyuCache 

rem 搜狐视频
if exist "%%i\sohucache" rd /s /q %%i\sohucache 

rem PPLive
if exist "%%i\pfsvoddata.bbv" del /f /s /q %%i\pfsvoddata.bbv 
if exist "%%i\FavoriteVideo\InvisibleFolder" rd /s /q %%i\FavoriteVideo\InvisibleFolder
if exist "%%i\FavoriteVideo" rd /s /q %%i\FavoriteVideo

rem 暴风影音
if exist "%%i\StormMedia" rd /s /q %%i\StormMedia

rem QVOD
if exist "%%i\Media" del /f /s /q %%i\Media\*.!mv

rem 多米
if exist "%%i\duomi" del /f /s /q %%i\duomi\cache.dat
) 
) 

rem 屏蔽YOUKU
rem YOUKU
set DestPath="%appdata%\Macromedia\Flash Player\#SharedObjects"
set DestExt=YOUKU_FSO_PROXY.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽letv
set DestPath="%appdata%\Macromedia\Flash Player\#SharedObjects"
set DestExt=com.letv.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽iqiyi
set DestPath="%appdata%\Macromedia\Flash Player\#SharedObjects"
set DestExt=qiyi_statistics.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽Chrome YOUKU
set DestPath="%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=YOUKU_FSO_PROXY.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽Chrome Letv
set DestPath="%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=com.letv.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽Chrome iqiyi
set DestPath="%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=qiyi_statistics.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽360 YOUKU
set DestPath="%userprofile%\AppData\Local\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=YOUKU_FSO_PROXY.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽360 Letv
set DestPath="%userprofile%\AppData\Local\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=com.letv.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)

rem 屏蔽360 iqiyi
set DestPath="%userprofile%\AppData\Local\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects"
set DestExt=qiyi_statistics.sol 
for /f "delims=" %%i   in ('dir  /b/a-d/s  %DestPath%\%DestExt%')  do (
del /f /s /q "%%i"
)
:endbat
