自動饋紙掃描圖檔後製工具包
================
功能
---
- 去除畫面髒污（調整對比）
- 自動歪斜校正
 
掃描黑白文件或泛黃書頁所得灰階圖檔 (jpg, j2k, png, tif, bmp) 通常會有一些雜點影響畫面白淨度，本支 script 可調整對比 level 來修正。

另外附帶自動歪斜調整 (deskew)，不用自己一張一張個別下參數微調。

需求
---
- *nix
- [Xcode (OSX)](https://itunes.apple.com/tw/app/xcode/id497799835?l=zh&mt=12)
  - 若沒有Xcode請使用上面連結去安裝
- [homebrew (OSX)](http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&ved=0CCcQFjAA&url=http%3A%2F%2Fbrew.sh%2F&ei=Q84RU52vFobHkgXl3IHgDg&usg=AFQjCNGLUOz5EjUaUIBeG_KyoJbs--3CYw)
  - 若沒有homebrew請參照上面連結安裝
- [imagemagick](http://www.google.com.tw/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&ved=0CCsQFjAA&url=http%3A%2F%2Fwww.imagemagick.org%2F&ei=Hs4RU7CpLMislAX2loHADw&usg=AFQjCNEj86ZXrN6Iqx9rZ73Ad4L4ypmDtQ&bvm=bv.62286460,d.dGI)
  - 裝好homebrew後，可以直接 ```brew install imagemagick``` 安裝

使用範例
-------

切換目錄到放置掃描圖檔的資料夾

```
╭─chun@Chuns-MacBook-Pro  ~
╰─$ cd ~/Desktop/temp/scan/今周刊NO.871_jpg
```

看一下目錄裡面的圖檔格式是否符合

```
╭─chun@Chuns-MacBook-Pro  ~/Desktop/temp/scan/今周刊NO.871_jpg
╰─$ ls
Thumbs.db  mag007.jpg mag014.jpg mag021.jpg mag028.jpg mag035.jpg mag042.jpg mag049.jpg mag056.jpg mag063.jpg mag070.jpg mag077.jpg mag084.jpg mag091.jpg mag098.jpg mag105.jpg mag112.jpg mag119.jpg
mag001.jpg mag008.jpg mag015.jpg mag022.jpg mag029.jpg mag036.jpg mag043.jpg mag050.jpg mag057.jpg mag064.jpg mag071.jpg mag078.jpg mag085.jpg mag092.jpg mag099.jpg mag106.jpg mag113.jpg
mag002.jpg mag009.jpg mag016.jpg mag023.jpg mag030.jpg mag037.jpg mag044.jpg mag051.jpg mag058.jpg mag065.jpg mag072.jpg mag079.jpg mag086.jpg mag093.jpg mag100.jpg mag107.jpg mag114.jpg
mag003.jpg mag010.jpg mag017.jpg mag024.jpg mag031.jpg mag038.jpg mag045.jpg mag052.jpg mag059.jpg mag066.jpg mag073.jpg mag080.jpg mag087.jpg mag094.jpg mag101.jpg mag108.jpg mag115.jpg
mag004.jpg mag011.jpg mag018.jpg mag025.jpg mag032.jpg mag039.jpg mag046.jpg mag053.jpg mag060.jpg mag067.jpg mag074.jpg mag081.jpg mag088.jpg mag095.jpg mag102.jpg mag109.jpg mag116.jpg
mag005.jpg mag012.jpg mag019.jpg mag026.jpg mag033.jpg mag040.jpg mag047.jpg mag054.jpg mag061.jpg mag068.jpg mag075.jpg mag082.jpg mag089.jpg mag096.jpg mag103.jpg mag110.jpg mag117.jpg
mag006.jpg mag013.jpg mag020.jpg mag027.jpg mag034.jpg mag041.jpg mag048.jpg mag055.jpg mag062.jpg mag069.jpg mag076.jpg mag083.jpg mag090.jpg mag097.jpg mag104.jpg mag111.jpg mag118.jpg
```

執行 script 時後面接一個要處理的圖檔副檔名為參數
> bash /path/to/level+deskew.sh jpg

```
╭─chun@Chuns-MacBook-Pro  ~/Desktop/temp/scan/今周刊NO.871_jpg
╰─$ bash /Users/chun/sh/level+deskew.sh jpg
```

最後到 ```_converted_``` 資料夾中收成吧

然後看最後是要用壓縮打包還是要轉成 PDF 都可以～

ps1. 如果不想執行指令前都要打 bash 把這支 script 的路徑加到你的 ```~/.bash_profile``` 吧，並且用 ```chmod +x``` 替這支 script 加上執行權限，這樣會好用很多


ps2. [img2pdf](https://github.com/josch/img2pdf) 用來把圖檔直接合成 PDF 很方便又快速，如果用 imagemagick 來做可能暫存檔會塞爆你的硬碟，卻還沒辦法完成 XD