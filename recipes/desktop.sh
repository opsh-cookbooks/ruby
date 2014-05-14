require "deploy_block"

case "${node[os]} ${node[version]}" in
ubuntu*)
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv &&
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build &&
  block_append 'export PATH="$HOME/.rbenv/bin:$PATH"' ~/.bashrc
  blocl_append 'eval "$(rbenv init -)"' ~/.bashrc
  echo 'run: exec $SHELL -l'
;;
*)
echo "not yet"
exit 1
;;
esac


