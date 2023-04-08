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
wget -q -O /ql/data/scripts/mycheckbox/mycheckbox $link
FILE=/ql/data/scripts/mycheckbox/config.toml

if [ ! -f "$FILE" ]; then
    echo "配置文件不存在,开始下载配置文件,位置为/ql/data/scripts/mycheckbox/config.toml"
    wget -q -O /ql/data/scripts/mycheckbox/config.toml "https://raw.githubusercontent.com/Ecalose/MyCheckBox/main/config.toml"
fi
chmod +x /ql/data/scripts/mycheckbox/mycheckbox && /ql/data/scripts/mycheckbox/mycheckbox
