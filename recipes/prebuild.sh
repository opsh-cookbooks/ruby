case "${node[os]} ${node[version]}" in
ubuntu*)
pkg_essential="curl openssh-server man-db build-essential make"
pkg_ubun12="libpcre3-dev libssl-dev libbz2-dev zlib1g-dev libcurl4-openssl-dev libssh2-1-dev libssh2-1"
pkg="libyaml-dev libreadline-dev libffi-dev libncurses5-dev libgdbm-dev libdbm-deep-perl"
#disable: win32ole X11 win tk
#tk for gui
#dbm gdbm

apt-install ${pkg_essential} ${pkg_ubun12} ${pkg}

;;
*)
echo "not yet."
exit 1
;;
esac


[ -f "/opt/ruby_2.1.2-1_ubuntu_amd64.deb" ] || template_cp "ruby_2.1.2-1_ubuntu_amd64.deb" /opt/

which ruby &> /dev/null || dpkg -i /opt/ruby_2.1.2-1_ubuntu_amd64.deb
