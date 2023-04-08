#!/bin/bash

# cron "15 7 * * *" script-path=xxx.sh,tag=匹配cron用
# const $ = new Env('MyCheckBox');
# -------------------------------
case $(uname -m) in
    x86_64)  arch=amd64;;
    aarch64) arch=arm64;;
    mips64) arch=mipsle;;
esac
echo "系统架构为$arch,开始下载最新checkbox"
link="https://github.com/Ecalose/MyCheckBox/releases/latest/download/mycheckbox-$arch"
wget -q -O /ql/data/scripts/Ecalose_MyCheckBox_main/mycheckbox $link
FILE=/ql/data/scripts/Ecalose_MyCheckBox_main/config.toml

if [ ! -f "$FILE" ]; then
    echo "配置文件不存在,开始下载配置文件,位置为/ql/data/scripts/config.toml"
    wget -q -O /ql/data/scripts/Ecalose_MyCheckBox_main/config.toml "https://raw.githubusercontent.com/Ecalose/MyCheckBox/main/config.toml"
fi
echo "开始签到"
chmod +x /ql/data/scripts/Ecalose_MyCheckBox_main/mycheckbox && /ql/data/scripts/Ecalose_MyCheckBox_main/mycheckbox
