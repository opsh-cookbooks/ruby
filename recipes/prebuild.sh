case "${node[os]} ${node[version]}" in
ubuntu*)
pkg_essential="curl openssh-server man-db build-essential make"
pkg_ubun12="libpcre3-dev libssl-dev libbz2-dev zlib1g-dev libcurl4-openssl-dev libssh2-1-dev libssh2-1"
pkg="libyaml-dev libreadline-dev libffi-dev libncurses5-dev libgdbm-dev libdbm-deep-perl"
#disable: win32ole X11 win tk
#tk for gui
#dbm gdbm

#${node[pkgtool]} update
#${node[pkgtool]} install -y ${pkg_essential} ${pkg_ubun12} ${pkg}
apt-install ${pkg_essential} ${pkg_ubun12} ${pkg}

;;
centos*)
pkg_essential="make gcc gcc-c++ git man"
pkg_cent6="pcre pcre-devel zlib zlib-devel openssl-devel openssl"
${node[pkgtool]} install -y ${pkg_essential} ${pkg_cent6}
;;
esac

[ -f "/opt/ruby-2.1.2.tar.gz"] || template_cp "ruby-2.1.2.tar.gz" /opt
if [ ! -d "/opt/ruby-2.1.2" ]; then
  cd /opt; tar zxvf ruby-2.1.2.tar.gz
fi

#echo $compile_src_url

#case $compile_src_version in
#2.1.1)
##use patch 2.1.1 for ubuntu 14.04
#compile from_url "$compile_src_url" patch "2.1.1"
#;;
#*)
#compile from_url "$compile_src_url"
#;;
#esac
#
#case $compile_src_prefix in
#/usr/local)
#echo "make sure /usr/local/{bin,sbin} in $PATH"
#;;
#*)
#set_basic_path
#;;
#esac
set_basic_path
