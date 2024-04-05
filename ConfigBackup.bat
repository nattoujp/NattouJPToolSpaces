@echo off

title ConfigBackup

echo %username%＞これはすべてのクライアントのconfigのバックアップを作成するプログラムである。             
echo 	起動させる場合はエンターキーを、
echo 	そうでない場合はそれ以外のキーを選択せよ。
echo 	起動させた場合、
echo 	あなたはコンフィグのバックアップを得る。
echo.
echo %username%＞そして、このプログラムの改変は許可する。
echo 	しかし、責任は問わない。
echo.
echo Ready?

set /P input=""
if "%input%"=="" (
   mkdir configs
   xcopy /E /I C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\RoamingState C:\Users\%username%\Desktop\configs
   pause

) else (
   cls
   echo この元ネタは「涼宮ハルヒの消失」にて長門有希が残したプログラムです (https://aniwave.to/watch/the-disappearance-of-haruhi-suzumiya.0xvk/ep-1)
   echo 終了します
   pause
)
