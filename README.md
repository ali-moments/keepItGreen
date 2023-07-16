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
```
git clone https://github.com/ali-moments/ali-moments
git clone https://github.com/ali-moments/keepItGreen
```

edit these 3 line in main.sh and enter repositories path into file:

```
repo="path/to/repo"
keepitgreen="path/to/keepItGreen"
fname="README.md"
```
<!--
    git ok bashe
    fortune nasb bashe
    bash dashte bashe
    crontab va baghie dastana
-->

if your git is not configured follow this:
<hr>
<details>
    <summary><b>Github configuration</b></summary>

install these libraries:
`sudo apt install libsecret-1-0 libsecret-1-dev`
> :memo: **Note:** Package names may be different in other distributions. These are for debian based distros.

then add this congigs to git:
```
git config --global user.email "your email"
git config --global user.name "your username"
git config --global credential.helper /usr/lib/git-core/git-credential-libsecret
```

after that you should use ssh-key, and you can generate one using:
`ssh-keygen -t rsa -b 4096 -C "your email"`

now use `cat ~/.ssh/id_rsa.pub` and copy its output to [github.com's](https://github.com/settings/keys) add ssh-keys settings.
then navigate to your repo path in your pc and add new origin
and test your connection.
```
git remote set-url origin git@github.com:<username>/<repo name>.git
ssh -T git@github.com
```
</details>
<hr>
after that give execution permission to `main.sh` file:
`chmod +x main.sh`

then run it for test:
`./main.sh `

and then you can use crontab to make it automaticaly work.

for e.g:
```
37 13 * * * cd /path/to/keepItGreen/ && sh main.sh > lastexec.log 2>&1
```
