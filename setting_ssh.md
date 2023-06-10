# SSHをProxy下にて使用する方法

## パッケージのインストール
sudo pacman -S openssh
yay install connect

## configの変更
sshの設定に
```
ProxyCommand connect -H [proxy_host]:[proxy_port] %h %p
```
を追加

