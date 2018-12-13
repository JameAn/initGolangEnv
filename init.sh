#!/bin/bash
#down load golang at https://studygolang.com/dl

DGoPath="~/"
GOROOT="/usr/local"
GOPATH="/data/go"
PATH="/data/go/bin"

if [ ! -d $GOPATH ]; then
	/usr/bin/mkdir -p "$GOPATH/"{src,bin,pkg}
fi

 /usr/bin/sudo sh -c "echo \"export GOPATH=${GOPATH}\" >> /etc/profile"
 /usr/bin/sudo sh -c "echo \"export PATH=${PATH}:\$PATH\" >> /etc/profile"

/usr/bin/wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz "${DGoPath}" 
/usr/bin/sudo tar zxvf ~/go1.11.linux-amd64.tar.gz -C "${GOROOT}" 
/usr/bin/sudo ln -s "${GOROOT}/go/bin/go" /usr/bin/go


