
echo "********************Bitradio Wallet install****************************"
sleep 5
echo "First of all we will install the dependencies"
echo "Starting installing the dependencies, please do not close the window"
sleep 2

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${RED}Starting the Wallet install!${NC}"


sudo apt-get upgrade -y
sudo apt-get install build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils -y
sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y
sudo apt-get install libboost-all-dev -y
sudo add-apt-repository ppa:bitcoin/bitcoin -y
apt-get update -y
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
sudo apt-get install libqrencode-dev -y


echo -e "${Blue}Starting Building the Wallet, please Wait!${NC}"
sleep 2
echo -e "${Blue} Please stand by and do NOT close the window.${NC}"
sleep 5
echo -e "${Blue}There will be many output, but that's normal. ${NC}"
sleep 5
echo -e "${Blue}You will see warnings in the output but thats's normal. You can ignore ${NC}"
sleep 10
echo -e "{Red} The process can take up to 10 minutes, so you can minimize the Terminal, but DON'T CLOSE IT!${NC}"
sleep 15





cd
git clone https://github.com/thebitradio/Bitradio.git
cd Bitradio
cd src && \
make -f makefile.unix && \

sudo mkdir /root/.Bitradio
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /root/.Bitradio/Bitradio.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /root/.Bitradio/Bitradio.conf
echo "addnode=node2.bitrad.io" >> /root/.Bitradio/Bitradio.conf
echo "addnode=node1.bitrad.io" >> /root/.Bitradio/Bitradio.conf




echo -e "${Green}Thanks for waiting, the wallet is now installed.${NC}"
echo -e "${Green}You can access the Wallet with cd Bitradio -> ./Bitradiod${NC}"
echo -e "${Green}The Wallet will start the sync progress automatically${NC}"
