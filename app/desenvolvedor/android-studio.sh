#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

AndroidStudio() {
	sudo apt-add-repository ppa:maarten-fonville/android-studio -y

	sudo apt-get update -y

	sudo apt-get install lib32z1 lib32stdc++6 libz1:i386 libncurses5:i386 libbz2-1.0:i386 libstdc++6:i386 lib32gcc1 lib32ncurses5 lib32z1-dev -y

	sudo apt-get install android-studio -y	
}

JavaJdk() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/java-jdk.sh
}

jdk=$(./app/utils/VerificaInstalacaoJdk.sh)

if [[ $jdk != "true" ]]; then
	JavaJdk
	AndroidStudio
else
	AndroidStudio
fi