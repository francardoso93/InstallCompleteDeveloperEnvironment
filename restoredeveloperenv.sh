#Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update ; sudo apt-get install google-chrome-stable -y
#VsCode
sudo snap install --classic code # or code-insiders
#GIT
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git -y
git --version
git config --global user.name "Francisco Cardoso"
git config --global user.email "francardoso@outlook.com"
#SSH
ssh-keygen
#Node
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y
node -v
npm -v
#Nest and Angular CLIs
sudo npm i -g @nestjs/cli
sudo npm install -g @angular/cli
#Postman
sudo snap install postman
# Docker # https://tecadmin.net/install-docker-on-ubuntu/
sudo apt-get purge docker-ce docker lxc-docker docker-engine docker.io
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker $USER
# Docker-Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.25.5/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
# Kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client
# K3S (Lightweight Kubernetes)
curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644
mkdir .kube
cp /etc/rancher/k3s/k3s.yaml .kube/
# Helm (Kub package manager)
sudo snap install helm --classic
# Peek (Gif Recorder)
sudo add-apt-repository ppa:peek-developers/stable
sudo apt-get update
sudo apt-get install peek -y
# OpenShot (Video Editor)
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install openshot-qt -y
# ZSH
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
# Terminator
sudo add-apt-repository ppa:gnome-terminator/nightly
sudo apt-get update
sudo apt-get install terminator
# First F5 VPN Steps (Firefox Version 51) # https://fluig.totvs.com/portal/p/10097/ecmnavigation?app_ecm_navigation_doc=5372312
sudo apt-get purge firefox -y
sudo rm -rf ~/.mozilla/firefox/
sudo rm -rf /usr/lib/firefox/
sudo rm -rf /usr/lib/firefox-addons/
cd /home/$USER
mkdir firefox_install
cd firefox_install
curl -LO https://ftp.mozilla.org/pub/firefox/releases/51.0.1/linux-x86_64/pt-BR/firefox-51.0.1.tar.bz2
curl -LO https://vpn2.totvs.com.br/public/download/linux_sslvpn.xpi
cd /opt
`sudo tar -jxvf /home/$USER/firefox_install/firefox-51.0.1.tar.bz2`
# sudo /opt/firefox/firefox # Open Firefox
## Possível melhoria: E se eu baixasse direto de 'https://vpn2.totvs.com.br/public/download/linux_f5vpn.x86_64.deb'? (Sem usar o firefox)
#Permissions afters F5 VPN client installed
#sudo ln -sf /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1 /opt/f5/vpn/lib/libcrypto.so.1.0.0 
#sudo ln -sf /usr/lib/x86_64-linux-gnu/libssl.so.1.1 /opt/f5/vpn/lib/libssl.so.1.0.0