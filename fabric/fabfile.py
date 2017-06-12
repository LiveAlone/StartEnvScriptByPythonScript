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

def deploy():
    create_dir()
    scp_file()
