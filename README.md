# hiwifi-netkeeper  

---

 - 感谢miao师傅和chen的贡献[源码在此](https://github.com/miao1007/Openwrt-NetKeeper)
 
# 用法：  

 ```
 curl -kso install.sh https://raw.githubusercontent.com/xratzh/hiwifi-netkeeper/master/install.sh
 chmod +x install.sh
 sudo sh install.sh
 ```  
 ---
 
# 手动使用说明： 

1、 src下面的是arm梅林固件专用的2.4.7版本的pppd的so文件
   梅林的使用方法：  

 - 把对应的so文件下载后放入路由器/jffs/pppd/你的省份的so文件名  
 - 拨号选用pppoe，在高级设置里面设置：plugin /jffs/pppd/你的省份的so文件名   

2、 mipsel下面是MT7620系列的so文件，本版本是自己编译的2.4.5版本的，和极路由的pppd版本相匹配的，未测试2.4.7是否能用。  

   如果某些省份不能正常使用请到miao1007的github下载他事先编译好的so,[地址在此](https://github.com/miao1007/Openwrt-NetKeeper/releases)。解压得到自己对应省份的so文件。  
   
 - 在windows下使用winscp上传到/usr/lib/pppd/2.4.5/下。  
 然后在/etc/config/network中，在config interface 'wan'下面添加`option pppd_options 'plugin 你的省份的so文件名'`  
 - 校对时间等待连接成功  
 - 一定要保证时间的正确。请用各自校园的ntp服务器校对时间，地址不同，请自行查询ntp地址。  、
  
# license  

 - GPL-3.0
 - NO TAOBAO USE!!!
