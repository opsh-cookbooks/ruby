require "deploy_block"

case "${node[os]} ${node[version]}" in
ubuntu*)

  pkg_essential="curl openssh-server man-db build-essential make"
  pkg_ubun12="libpcre3-dev libssl-dev libbz2-dev zlib1g-dev libcurl4-openssl-dev libssh2-1-dev libssh2-1"
  pkg="libyaml-dev libreadline-dev libffi-dev libncurses5-dev libgdbm-dev libdbm-deep-perl"
  apt-install $pkg_essential $pkg_ubun12 $pkg 

  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv &&
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build &&
  block_insert 'export PATH="$HOME/.rbenv/bin:$PATH"' ~/.bashrc
  block_insert 'eval "$(rbenv init -)"' ~/.bashrc
  echo 'run: exec $SHELL -l'
;;
*)
echo "not yet"
exit 1
;;
esac


