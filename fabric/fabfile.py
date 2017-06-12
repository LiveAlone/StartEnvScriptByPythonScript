from fabric.api import *

env.hosts = ['root@192.168.172.128']


def create_dir():
    print 'start create dir'
    run("mkdir /home/yaoqijun")
    print 'end create dir'


def scp_file():
    print 'start scp'
    local('scp source.tar.gz root@192.168.172.128:/home/yaoqijun/source.tar.gz')
    print 'end scp'


def exec_shell():
    print 'start to exec shell config'
    run('tar zxvf /home/yaoqijun/source.tar.gz -C /home/yaoqijun/')
    run('chmod a+x /home/yaoqijun/source/install_software.sh')
    run("/home/yaoqijun/source/install_software.sh")
    run('rm -rf /home/yaoqijun/source.tar.gz')
    run('rm -rf /home/yaoqijun/source')
    print 'end execute shell config'


def deploy():
    create_dir()
    scp_file()
    exec_shell()


def test_name():
    run('uname -a')

