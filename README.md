# Windows VM

## requirement
- install visual code studio 
- install vagrant (Vagrant 2.2.9)
- install Oracle VirtualBox (Version 6.1.12 r139181 (Qt5.6.2))
- install OpenSSH client and server:  
    Installing OpenSSH from the Settings UI on Windows Server 2019 or Windows 10 1809
    OpenSSH client and server are installable features of Windows 10 1809.

    To install OpenSSH, start Settings then go to Apps > Apps and Features > Manage Optional Features.

    Scan this list to see if OpenSSH client is already installed. If not, then at the top of the page select "Add a feature", then:

    To install the OpenSSH client, locate "OpenSSH Client", then click "Install".
    To install the OpenSSH server, locate "OpenSSH Server", then click "Install".
    Once the installation completes, return to Apps > Apps and Features > Manage Optional Features and you should see the OpenSSH component(s) listed.

### vscode
- plugin vscoss.vscode-ansible
- plugin vscode-icons-team.vscode-icons
- plugin coenraads.bracket-pair-colorizer
- plugin coenraads.bracket-pair-colorizer-2
- plugin ms-python.python
- plugin yzhang.markdown-all-in-one

## init
 
 The first run will start the workVM and initiate ssh configuration.
 ```bash
 cd vagrant/
./init_VM.sh
```
ssh configuration is an include of the file ~/.ssh/config_workVM into ~/.ssh/config

## Configuration

To configure packages that will be installed two files are available.

One for yum packages:`/vm_configurations/yum_requirement.txt`
One for pip packages:`/vm_configurations/pip_requirement.txt`

## VM connexion

```bash
ssh workVM
```