vim-tools for c11/c++11
使用按照https://github.com/yangyangwithgnu/use_vim_as_ide

# 首次配置
已带除YCM之外的所有插件
命令安装
```bash
vi
:PluginInstall
```

ubuntu install=>
```bash
apt-get install vim-youcompleteme
vim-addons install youcompleteme
```
done

# 手动 YCM build
1. 安装
由于YouCompleteMe体积比较大，而且需要配合Clang库使用，故自行下载
* 第一种方式是 使用上述命令PluginInstall
* 第二种方式是自行下载
https://github.com/Valloric/YouCompleteMe

2. 接下来设置clang+llvm
下载地址
http://llvm.org/releases/download.html

可源码编译安装,也可以apt安装
apt-get install libclang-dev

不需要语义补全，直接 cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp

- 如何编译YCM所需库
***要求 cmake , python-dev
假设下载且解压到~/downloads/clang+llvm,
则PATH_TO_LLVM_ROOT指向到该路径,
新建~/downloads/build, 进入执行:
```bash
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DPATH_TO_LLVM_ROOT=~/downloads/clang+llvm/ ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core
```
