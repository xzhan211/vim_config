# vim_config
0. 参考https://github.com/VundleVim/Vundle.vim#quick-start

   还有个中文简单版: https://www.jianshu.com/p/8d416ac4ad11

1. 在Home目录创建~/.vim目录和.vimrc文件

   在.vim目录下会建立bundle文件夹，里面都是插件包啦 : ）

2. 安装vundle(如何安装vim就自己google吧，不同系统有点差异，反正一堆文章介绍):

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. 安装方法：在Github其他用户下的repos, 需要写出”用户名/repos名”，将安装的插件在~/.vimrc配置。

4. 打开vim，运行:PluginInstall

5. 常用指令：

:PluginList       - 查看已经安装的插件

:PluginInstall    - 安装插件

:PluginUpdate     - 更新插件

:PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件

:PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
