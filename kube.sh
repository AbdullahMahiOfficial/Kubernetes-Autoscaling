# Step 1: Update package list and install dependencies
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl

# Step 2: Add the Google Cloud public signing key
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

# Step 3: Add the Kubernetes APT repository
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] \
https://apt.kubernetes.io/ kubernetes-xenial main" | \
sudo tee /etc/apt/sources.list.d/kubernetes.list

# Step 4: Update the package list again
sudo apt update

# Step 5: Install kubectl
sudo apt install -y kubectl
