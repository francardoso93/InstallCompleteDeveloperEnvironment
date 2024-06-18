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
sudo curl -L https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
# Kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client
# Kind (Lightweight Kubernetes)
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
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
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source $HOME/.asdf/asdf.sh
source ~/.bashrc
asdf --version
# ASDF Node
asdf plugin-add nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs latest
asdf global nodejs latest
node -v
# # ASDF Java
# asdf plugin-add java https://github.com/halcyon/asdf-java.git
# asdf install java latest:adoptopenjdk-17
# asdf global java latest:adoptopenjdk-17
# echo -e '\n. $HOME/.asdf/plugins/java/set-java-home.zsh' >> ~/.zshrc
# echo -e '\n. $HOME/.asdf/plugins/java/set-java-home.bash' >> ~/.bashrc
# ASDF Go
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest
echo -e '\n. export GOROOT="$(asdf where golang)/go/"' >> ~/.zshrc
echo -e '\n. export CC="gcc""' >> ~/.zshrc
# Ruby
# sudo apt-get install ruby-full -y
# sudo gem install bundler
# Terraform
asdf plugin-add terraform
asdf install terraform latest
# Pulumi
curl -fsSL https://get.pulumi.com | sh
# Tweaks
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool -y
# Slack
sudo snap install slack --classic
# Zoom
sudo snap install zoom-client
# Discord
sudo snap install discord
#psql
sudo apt-get install -y postgresql-client
# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
# Isolate Workspaces
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
# Peek (Gif Recorder) # Can't find this on Ubuntu 22
# sudo add-apt-repository ppa:peek-developers/stable
# sudo apt-get update
# sudo apt-get install peek -y
# OBS (Video Recorder)
# sudo add-apt-repository ppa:pbsproject/obs-studio
# sudo apt-get update
# sudo apt-get install obs-studio -y
# OpenShot (Video Editor)
# sudo add-apt-repository ppa:openshot.developers/ppa
# sudo apt-get update
# sudo apt-get install openshot-qt -y ##Da ultima vez que instalei assim, ficava travando durante a execucao
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/francisco/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# pgcli 
sudo apt-get install pgcli
# k8s krew
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
echo -e '\n. export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >> ~/.zshrc
echo -e '\n. export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# kubens
kubectl krew install ns
# Kube PS1 (to show current context and ns) need to be done manually, but easy. See: https://github.com/jonmosco/kube-ps1sudo apt install fzf

# FuzzyFinder for CLI (That's enought to get the augmented ctrl+R)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf/
./install

# k6
sudo gpg -k
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/k6-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
echo "deb [signed-by=/usr/share/keyrings/k6-archive-keyring.gpg] https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list
sudo apt-get update
sudo apt-get install k6
