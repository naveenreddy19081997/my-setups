# Update all the packages
sudo apt update

# install java 21
sudo apt install fontconfig openjdk-21-jre -y

# check java version
java -version

# setting up jenkins file and key for jenkins installation to work
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y

# install jenkins
sudo apt install jenkins -y

# install git
sudo apt install git -y
