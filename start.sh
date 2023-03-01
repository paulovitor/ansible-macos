#!/bin/bash
# script to bootstrap setting up a mac with ansible

function uninstall {

echo "WARNING : This will remove homebrew and all applications installed through it"
echo -n "are you sure you want to do that? [y/n] : "
read confirmation

if [ $confirmation == "y" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
    exit 0
else
  echo "keeping everything intact"
  exit 0
fi

}

if [ $1 == "uninstall" ]; then
    uninstall
fi

echo "==========================================="
echo "		Setting up your mac using ansible"
echo "==========================================="

xcode-select --install

# sudo easy_install pip

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install ansible

ansible-playbook -i hosts playbook.yml --verbose

echo "==========================================="
echo "		Finish environment configuration "
echo "==========================================="

exit 0