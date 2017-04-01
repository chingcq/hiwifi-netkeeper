#! /bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

cd /usr/lib/2.4.5/
Dispaly_Selection(){
    def_Install_Select="1"
    echo -e "${COLOR_YELOW}You have 12 options for your installation.${COLOR_END}"
    echo "1: Install chongqing0094_sxplugin.so"
    echo "2: Install chongqing_sxplugin.so"
    echo "3: Install gansu_telecom_sxplugin.so"
    echo "4: Install hainan_sxplugin.so"
    echo "5: Install hebei_sxplugin.so"
    echo "6: Install hubei_sxplugin.so"
    echo "7: Install qinghai_sxplugin.so"
    echo "8: Install shandongmobile_sxplugin.so"
    echo "9: Install shanxi_yixun_sxplugin.so"
    echo "10: Install xinjiang_sxplugin.so"
    echo "11: Install zhejiang_qiye_sxplugin.so"
    echo "12: Install zhejiang_xiaoyuan_sxplugin.so"    
    read -p "Enter your choice (1, 2, 3, 4, 5 ...or exit. default [${def_Install_Select}]): " Install_Select
    case "${Install_Select}" in
    1)
        echo
        echo -e "You will install chongqing0094_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/chongqing0094_sxplugin.so
        sed -i '15a option pppd_options 'plugin chongqing0094_sxplugin.so'' /etc/config/network
        ;;
    2)
        echo
        echo -e "You will install chongqing_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/chongqing_sxplugin.so
        sed -i '15a option pppd_options 'plugin chongqing_sxplugin.so'' /etc/config/network
        ;;
    3)
        echo
        echo -e "You will install gansu_telecom_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/gansu_telecom_sxplugin.so
        sed -i '15a option pppd_options 'plugin gansu_telecom_sxplugin.so'' /etc/config/network
        ;;
    4)
        echo
        echo -e "You will install hainan_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/hainan_sxplugin.so
        sed -i '15a option pppd_options 'plugin hainan_sxplugin.so'' /etc/config/network
        ;;
    5)
        echo
        echo -e "You will install hebei_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/hebei_sxplugin.so
        sed -i '15a option pppd_options 'plugin hebei_sxplugin.so'' /etc/config/network
        ;;
    6)
        echo
        echo -e "You will install hubei_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/hubei_sxplugin.so
        sed -i '15a option pppd_options 'plugin hubei_sxplugin.so'' /etc/config/network
        ;;
    7)
        echo
        echo -e "You will install qinghai_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/qinghai_sxplugin.so
        sed -i '15a option pppd_options 'plugin qinghai_sxplugin.so'' /etc/config/network
        ;;
    8)
        echo
        echo -e "You will install shandongmobile_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/shandongmobile_sxplugin.so
        sed -i '15a option pppd_options 'plugin shandongmobile_sxplugin.so'' /etc/config/network
        ;;
    9)
        echo
        echo -e "You will install shanxi_yixun_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/shanxi_yixun_sxplugin.so
        sed -i '15a option pppd_options 'plugin shanxi_yixun_sxplugin.so'' /etc/config/network
        ;;
    10)
        echo
        echo -e "You will install xinjiang_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/xinjiang_sxplugin.so
        sed -i '15a option pppd_options 'plugin xinjiang_sxplugin.so'' /etc/config/network
        ;;
    11)
        echo
        echo -e "You will install zhejiang_qiye_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/zhejiang_qiye_sxplugin.so
        sed -i '15a option pppd_options 'plugin zhejiang_qiye_sxplugin.so'' /etc/config/network
        ;;
    12)
        echo
        echo -e "You will install zhejiang_xiaoyuan_sxplugin.so"
        wget wget https://raw.githubusercontent.com/xratzh/hiwif-netkeeper/mipsel/zhejiang_xiaoyuan_sxplugin.so
        sed -i '15a option pppd_options 'plugin zhejiang_xiaoyuan_sxplugin.so'' /etc/config/network
        ;;
    [eE][xX][iI][tT])
        echo -e "You select <Exit>, shell exit now!"
        exit 1
        ;;
    *)
        echo
        echo -e "${COLOR_PINK}No input,no install will happen!{COLOR_END}"
    esac
}
