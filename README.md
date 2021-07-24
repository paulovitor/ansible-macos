# ansible-macos
Setup applications to macos environment

## Setup

1. Install Command Line Tools for Xcode by running xcode-select --install in Terminal
2. Install Homebrew, then install Ansible and ssh-copy-id
3. brew install ansible
4. Clone this repository
5. cd ansible-macos
6. ansible-playbook -i hosts playbook.yml --verbose