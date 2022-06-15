Dart

mac系统配置
下载flutter sdk：
vim ~/bash_profile

在配置文件中按i编辑输入 export PATH=/Users/aishengwanwu/flutter_mac/flutter/bin:$PATH

esc退出编辑

:wq 保存并退出
:q  退出

source ~/bash_profile 让这个配置文件在修改后立即生效

flutter -h检出是否安装完成

sudo flutter create 文件名
修改sdk项目权限
sudo chmod -R 777 *  修改项目权限为可读可写可运行