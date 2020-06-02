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
# Peek (Gif Recorder)
sudo add-apt-repository ppa:peek-developers/stable
sudo apt-get update
sudo apt-get install peek -y
# OpenShot (Video Editor)
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install openshot-qt -y
