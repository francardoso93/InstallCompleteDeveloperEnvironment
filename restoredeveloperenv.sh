#GIT
#sudo apt-add-repository ppa:git-core/ppa
#sudo apt-get update
#sudo apt-get install git -y
#git --version
git config --global user.name "Francisco Cardoso"
git config --global user.email "francardoso@outlook.com"
# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
#VsCode
sudo snap install --classic code # or code-insiders#
echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p # https://github.com/flathub/com.visualstudio.code/issues/29
#SSH
ssh-keygen
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
mkdir ~/.kube
cp /etc/rancher/k3s/k3s.yaml ~/.kube/
# Helm (Kub package manager)
sudo snap install helm --classic
# Add Helm Rabbit Repository # helm install --kubeconfig=/home/francisco/.kube/k3s.yaml rabbit bitnami/rabbitmq --namespace logistics
#helm repo add bitnami https://charts.bitnami.com/bitnami
#helm repo update
#echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
# ZSH
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
# Terminator
sudo add-apt-repository ppa:gnome-terminator/nightly
sudo apt-get update
sudo apt-get install terminator -y
# Curl
sudo apt install curl -y
# Build Essentials
sudo apt-get install build-essential
# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)" # Latest version branch
cd ~
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source $HOME/.asdf/asdf.sh
source ~/.bashrc
asdf --version
# ASDF Node
asdf plugin-add nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs 16.13.0  
asdf global nodejs 16.13.0 
node -v
# ASDF DotNet
#asdf plugin-add dotnet-core https://github.com/emersonsoares/asdf-dotnet-core.git
#echo -e '\n. $HOME/.asdf/plugins/dotnet-core/set-dotnet-home.zsh'>> ~/.zshrc
#echo -e '\n. $HOME/.asdf/plugins/dotnet-core/set-dotnet-home.bash'>> ~/.bashrc
#asdf install dotnet-core 2.1.809
#asdf install dotnet-core 3.1.401
#asdf global dotnet-core 3.1.401
#dotnet --version
# ASDF Go
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.17.2
asdf global golang 1.17.2
echo -e '\n. export GOROOT="$(asdf where golang)/go/"' >> ~/.zshrc
echo -e '\n. export CC="gcc""' >> ~/.zshrc
#Nest and Angular CLIs
npm i -g @nestjs/cli -y
npm install -g @angular/cli
# Terraform
wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
sudo unzip terraform_1.0.11_linux_amd64.zip -d /usr/local/bin/
rm -rf terraform_1.0.11_linux_amd64.zip
# Tweaks
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool -y
# Remmina 
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y
# Slack
sudo snap install slack --classic
# Zoom
sudo snap install zoom-client
# Discord
sudo snap install discord
# Mongo DB Compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.26.1_amd64.deb
sudo dpkg -i mongodb-compass_1.26.1_amd64.deb
# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
# Isolate Workspaces
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
# Peek (Gif Recorder)
sudo add-apt-repository ppa:peek-developers/stable
sudo apt-get update
sudo apt-get install peek -y
# OBS (Video Recorder)
sudo add-apt-repository ppa:pbsproject/obs-studio
sudo apt-get update
sudo apt-get install obs-studio -y
# OpenShot (Video Editor)
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install openshot-qt -y ##Da ultima vez que instalei assim, ficava travando durante a execucao
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/francisco/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
