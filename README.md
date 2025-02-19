UBUNTU_CODENAME=jammy \
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg \
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | tee /etc/apt/sources.list.d/ansible.list \
apt update && apt install ansible

ansible-galaxy collection install ansible.windows --upgrade --force\
ansible-galaxy collection install microsoft.ad --upgrade --force

apt install python3-pip\
pip install requests-credssp --break-system-packages\
pip install pywinrm[credssp] --break-system-packages

ansible-galaxy collection install trippsc2.windows

curl -L https://github.com/vmware/govmomi/releases/latest/download/govc_Linux_x86_64.tar.gz -o govc.tar.gz \
tar -xvzf govc.tar.gz \
mv govc /usr/local/bin/ 


