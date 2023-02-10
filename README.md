# ptsign
## 仅供学习参考，请下载后24小时内删除，所产生后果与本人无关  

### 目前适配站点：  
* ptschool  
* 馒头 
* 请求为get类型的签到站点(不仅限于pt站点,目前仅通过响应头判断是否成功)
### 目前适配通知：  
* 企业微信
* telegram bot
### 使用说明:  
[release](https://github.com/Ecalose/ptsign/releases/latest)下载对应平台二进制文件，配置好config.toml即可，可以用crontab/qinglong等设置定时，已适配多账号(因同ip导致的风险自行承担) 

(PS:go练手作品，代码太烂了就不放出来了)

### 配置说明
* name 通知名称
* url 将host一词替换为网址
* cookie 站点cookie
* 企业微信推送仅需填写corpid、corpsecret两项
* 其余详见config.toml内说明

### 运行效果展示
![Screenshot_2023-02-10-10-42-16-435_com tencent wework](https://user-images.githubusercontent.com/47114714/217987149-047880d4-2eb4-4c77-b468-59b0fae204bd.png)

![image](https://user-images.githubusercontent.com/47114714/217986871-82b726bb-ff81-4e1a-be5d-fc649890eb62.png)

