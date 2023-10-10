source /opt/concourse-java.sh

if [[ -d $PWD/gradle ]]; then
	export GRADLE_USER_HOME=`pwd`/gradle
fi

setup_symlinks
if [[ -d $PWD/embedmongo && ! -d $HOME/.embedmongo ]]; then
	ln -s "$PWD/embedmongo" "$HOME/.embedmongo"
fi

cleanup_maven_repo "org.springframework.boot"
