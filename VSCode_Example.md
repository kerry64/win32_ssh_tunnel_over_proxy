7890 is listened by clash for windows.

This is very useful when using ssh in VSCode and local desktop everywhere. And we don't need to modify the ssh_config for system global.

Some usages:

  When we are using laptops, we need to care about our battery. Using a server's compiler is a good idea.
  
  When we don't want to install a huge compiler in our PC.
  
  blabla..
  
  
  
本脚本对于在本地常用ssh时非常实用, 可以不用大幅修改全局的ssh_config。

一些用法:
  
  当我们用笔记本时需要省电，使用远程的编译器可能比较理想。
  
  当我们不想在本地安装一个巨大的编译器。
  
  blabla..



ssh_config in client:
```
Host tunnel
  HostName 127.0.0.1
  Port 6666
  User kerry
  IdentityFile C:\Users\User\Desktop\Server\ssh_key
```


port settings in this script:
```
: localhost
  set socks5=7890
  set   http=
  set   bind=6666
:
: remote
  set      ip=1.2.3.4
  set    sshp=22
  set    port= ( =sshp if empty)
  set    name=inko
  set privkey="C:\Users\User\Desktop\Server\ssh_key"
```  
