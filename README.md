# keep it green

one commit a day, keep the whitness away...

## description

<!--
    inke one comment o in dastana va dastan inke zabihi behem goft va khandid
-->

## installation and configuration

install fortune package into your distro:

ubuntu:
`sudo apt install fortune`

clone this repo and then clone your repo:

git clone https://github.com/ali-moments/ali-moments
git clone https://github.com/ali-moments/keepItGreen

edit main.sh and enter repositories path into file:

```

```
<!--
    git ok bashe
    fortune nasb bashe
    bash dashte bashe
    crontab va baghie dastana
-->

sudo apt install libsecret-1-0 libsecret-1-dev 

git config --global user.email "a.ham2334@gmail.com"
git config --global user.name "ali-moments"
git config --global credential.helper /usr/lib/git-core/git-credential-libsecret

ssh-keygen -t rsa -b 4096 -C "a.ham2334@gmail.com"
cat /opt/mostafa/.ssh/id_rsa.pub -> copy it to github.com settings in add ssh keys
git remote set-url origin git@github.com:ali-moments/ali-moments.git
ssh -T git@github.com

