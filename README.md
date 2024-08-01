<!-- ABOUT THE PROJECT -->
## About The Project

Ansible playbooks for provisioning WSL Workstations with tools which are commonly used in DevOps environments. Mainly for K8s envs.

### Built With

- [Ansible](https://github.com/ansible/ansible)

### Ubuntu WSL

1. Install

   - VSCode - <https://code.visualstudio.com/download>
   - Ubuntu 24.04 LTS WSL2
     - <https://apps.microsoft.com/store/detail/windows-subsystem-for-linux/9P9TQF7MRM4R>
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
   apt-get install -y git pipx curl sudo
   # back to your user and run below command
   pipx install --include-deps ansible
   ```

4. Clone repository (on your USER)
   ```bash
   # Create directory for github repository
   mkdir -p ~/git/github
   cd ~/git/github

   # Clone (pull) git repository
   git clone https://github.com/bmichalkiewicz/workstation.git
   ```

5. Change `username` in `inventory/group_vars/all.yml` to your WSL username and run Ansible

   ```bash
   cd workstation
   # Edit playbooks/group_vars/all.yml, change username
   vim inventory/group_vars/all.yml

   # Run Ansible
   bin/main.sh
   ```

6. Copy Windows Terminal config from - <https://github.com/bmichalkiewicz/workstation/blob/main/configs/windowsterminal.json>

   - and paste it here - `C:\Users\${WINDOWS_USER_NAME}\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState`

7. Copy VScode config file from - <https://github.com/bmichalkiewicz/workstation/blob/main/configs/vscode.json>

   - and paste it here - `C:/Users/${WINDOWS_USER_NAME}/AppData/Roaming/Code/User/settings.json`

8. Restart your VScode/Windows Terminal to see your new oh-my-zsh :)

> Remember to use VScode with Remote WSL extension and store all your unix/git files/repositories under WSL2 to not encounter any issues with file permissions, etc.
>> I also recommend to use builtin terminal in VSCode as it also really configurable and works like a charm with oh-my-zsh

- ms-vscode-remote.remote-wsl - <https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl>

- Best VSCode Plugins:

```bash
Multiple cursor case preserve

Gitlens

Better Comments

Bookmarks

Error lens

vscode-icons
```
