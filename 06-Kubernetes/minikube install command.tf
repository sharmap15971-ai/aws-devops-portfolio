creat maching ubuntu- 2gb ram and 4cpu --------------

connect---Mobaxterm RDP tool

commnad-------------------

1- sudo apt update
2- sudo apt update && sudo apt upgrade -y
sudo apt install -y curl apt-transport-https virtualbox-ext-pack

3-# Download the binary
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Install into /usr/local/bin
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Clean up the downloaded file
rm minikube-linux-amd64

4- # Download the binary
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Install into /usr/local/bin
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Clean up the downloaded file
rm minikube-linux-amd64

5- minikube version

6- # Download kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Install into /usr/local/bin
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Clean up the downloaded file
rm kubectl

7- minikube start --driver=docker
