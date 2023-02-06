<!-- ABOUT THE PROJECT -->
## About The Project

Ansible playbooks for provisioning WSL Workstations with tools which are commonly used in DevOps environments. Mainly for K8s envs.

### Built With

- [Ansible](https://github.com/ansible/ansible)

### Ubuntu WSL

1. Install

   - VSCode - <https://code.visualstudio.com/download>
   - Ubuntu 22.04 WSL2
     - <https://apps.microsoft.com/store/detail/windows-subsystem-for-linux/9P9TQF7MRM4R>
     - <https://apps.microsoft.com/store/detail/ubuntu-22041-lts/9PN20MSR04DW?hl=pl-pl&gl=pl>
     - <https://docs.microsoft.com/en-us/windows/wsl/install>
   - Docker Desktop for Windows - <https://docs.docker.com/desktop/windows/install/>
   - Windows Terminal
     - <https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab>
     - <https://github.com/microsoft/terminal>

2. Open WSL2 terminal, login as root, upgrade your OS:

   ```bash
   sudo -i
   apt-get update
   apt-get upgrade
   ```

3. Install git, python, ansible

   ```bash
   sudo -i
   apt-get install -y git python3-pip curl sudo
   pip3 install ansible
   ```

4. Clone repository

   ```bash
   # Create directory for github repository
   mkdir -p ~/git/github
   cd ~/git/github

   # Clone (pull) git repository
   git clone https://github.com/bmichalkiewicz/workstation.git
   ```

5. Change `user_name` in `playbooks/group_vars/all.yml` to your WSL username and run Ansible

   ```bash
   # Go to repository directory
   cd workstation/playbooks

   # Edit playbooks/group_vars/all.yml, change user_name
   vi group_vars/all.yml

   # Run Ansible
   ansible-playbook -i ../inventory/workspace.yaml workspace.yml -K
   ```

6. Install PowerLevel10K font on Windows - <https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf>

7. Copy Windows Terminal config from - <>

   - and paste it here - `C:\Users\${WINDOWS_USER_NAME}\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState`

8. Copy VScode config file from - <>

   - and paste it here - `C:/Users/${WINDOWS_USER_NAME}/AppData/Roaming/Code/User/settings.json`

9. Restart your VScode/Windows Terminal to see your new oh-my-zsh :)

> Remember to use VScode with Remote WSL extension and store all your unix/git files/repositories under WSL2 to not encounter any issues with file permissions, etc.
>> I also recommend to use builtin terminal in VSCode as it also really configurable and works like a charm with oh-my-zsh and P10K

- ms-vscode-remote.remote-wsl - <https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl>
