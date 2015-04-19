#! /bin/bash
echo ""
echo ""
echo ""
echo ""
echo "[  ===========================================================  ]"
echo ''
echo "   　　　　网易云音乐 Linux 客户端"
echo ''
echo "   Author：greedisland1017"
echo ''
echo "   开源项目地址："
echo "   　　https://github.com/greedisland1017/NetEaseMusic"
echo "   　　http://git.oschina.net/greedisland1017/NetEaseMusic"

echo ""

desktopFilename='网易云音乐.desktop'
touch $desktopFilename
currentPath=`dirname $(readlink -f $0)`

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Type=Application
Name=网易云音乐
Comment=网易云音乐 Linux客户端
Exec=$currentPath/NetEaseMusic
Icon=$currentPath/icon.png
Terminal=false
StartupNotify=true
" > $desktopFilename
sudo cp $desktopFilename ~/Desktop
sudo cp $desktopFilename ~/.local/share/applications/

if [ $? -eq 0 ]; then
echo "   安装已完成，尽情享用吧～～～"
echo ""
echo "[  ===========================================================  ]"
echo ""
echo ""
echo ""
echo ""
echo ""
else
echo "   出大事了Σ(っ °Д °;)っ。"
echo "   安装出错了，麻烦联系作者喔～"
echo ""
echo "[  ===========================================================  ]"
echo ""
echo ""
echo ""
echo ""
fi

