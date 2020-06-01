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