## INSTALL test_task project

1. Create VM or some server with CentOS 7 on it.
2. Execute `git clone https://github.com/Win32Sector/test_repo.git` to download repo with installation scripts.
3. Execute script basic_script_ansible_install.sh to update, install epel, install latest ansible packages, and add ansible user.
4. Go to directory ansible/centos7_host_setup and execute command `ansible-playbook -i inventory playbook.yml`