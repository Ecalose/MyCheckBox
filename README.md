# pt站签到，保活;阿里云盘签到;discuz论坛签到
## 仅供学习参考，请下载后24小时内删除，所产生后果与本人无关  

### 目前适配站点：  
* ptschool  
* 馒头 (mteam)
* 老师 (nicept)
* 其他与上述pt站链接后缀一致的(如老师的“/attendance.php”)，改下host即可
* 阿里云盘
* discuz论坛
* 请求为get类型的签到站点(不仅限于pt站点,目前仅通过响应头判断是否成功)
* 请求为post类型,数据类型为application/x-www-form-urlencoded的站点
### 目前适配通知：  
* 企业微信
* telegram bot
### 使用说明:  
[release](https://github.com/Ecalose/MyCheckBox/releases/latest)下载对应平台二进制文件，配置好config.toml放于同一目录即可，可以用crontab/qinglong等设置定时，或使用-t 的flag设置定时，已适配多账号(因同ip导致的风险自行承担) 

(PS:go练手作品，代码太烂了就不放出来了)

### 命令行参数
* -t 后接cron表达式，如"59 23 * * *"，精确到分，设置定时(不依赖系统的crontab)  
示例: ./mycheckbox -t "59 23 * * *" (英文引号不能忘)

### 配置说明
* name 通知名称(必填)
* url 将host一词替换为网址(必填)
* cookie 站点cookie(必填)
* proxy 代理链接(http/socks5)
* 企业微信推送仅需填写corpid、corpsecret两项(如无需则可不填)
* 其余详见config.toml内说明
* refresh_token 阿里云盘,抓取教程可以参考该[链接](https://alist.nn.ci/zh/guide/drivers/aliyundrive.html)

### 适配计划
pt站目前手上就这三个号，所以也就适配了这三个站,其他的等有了药再说(

### 运行效果展示
![image](https://user-images.githubusercontent.com/47114714/218457785-db669532-09f3-441f-9fe2-a7fb576642aa.png)

![Screenshot_2023-02-10-10-42-16-435_com tencent wework](https://user-images.githubusercontent.com/47114714/217987149-047880d4-2eb4-4c77-b468-59b0fae204bd.png)

![image](https://user-images.githubusercontent.com/47114714/218293924-ba9e4317-3725-4e69-9c35-9ac504064d4c.png)



