# vim_config
1. 在Home目录创建~/.vim目录和.vimrc文件
2. 安装vundle: 
'''
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
'''
3. 在.vimrc配置文件中添加vundle支持
'''
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
'''
如果实际上可以添加一个~/.vimrc.bundles文件来保存所有插件的配置，必须在~/.vimrc文件加入以下代码片段：
‘’‘
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
‘’‘
而~/.vimrc.bundles文件内容必须包含：
‘’‘
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
’‘’
4. 安装方法：在Github其他用户下的repos, 需要写出”用户名/repos名”，将安装的插件在~/.vimrc配置，也可以将插件配置信息放在~/.vimrc.bundles。
5. 打开vim，运行:BundleInstall或在shell中直接运行vim +BundleInstall +qall