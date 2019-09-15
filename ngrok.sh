#!/data/data/com.termux/files/usr/bin/env sh
# ngrok
# autor: olive

while true;do
ngrok() {
	clear
	bash banner.sh
	echo "
	1 - Instalar ngrok
	2 - Sobre ngrok
	3 - Exit
	"
	echo ""
	echo -n "Ngrok-install>> "
	read resp

	if [ $resp = '1' ]
	then

		case $(dpkg --print-architecture) in
			'arm')
				echo "Instalando para ARM..."
				apt update
				apt install axel
				axel https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
				unzip ngrok-stable-linux-arm.zip
				rm ngrok-stable-linux-arm.zip
				mv ngrok $PREFIX/bin/
				chmod u=rwx,g=rwx,o=rwx $PREFIX/bin/ngrok
				echo ""
				echo "Usage: ngrok -h"
				echo "";;
			'amd64')
				echo "Instalando para amd64..."
				apt update
				apt install axel
				axel https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
				unzip ngrok-stable-darwin-amd64.zip
				rm ngrok-stable-darwin-amd64.zip
				mv ngrok $PREFIX/bin/
				chmod u=rwx,g=rwx,o=rwx $PREFIX/bin/ngrok
				echo ""
				echo "Usage: ngrok -h"
				echo "";;
			'386')
				echo "Instalando para 386..."
				apt update
				apt install axel
				axel https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-386.zip
				unzip ngrok-stable-darwin-386.zip
				rm ngrok-stable-darwin-386.zip
				mv ngrok $PREFIX/bin/
				chmod u=rwx,g=rwx,o=rwx $PREFIX/bin/ngrok
				echo "Usage: ngrok -h"
				echo "";;
			'arm64')
				echo "Instalando para amd64..."
				apt update
				apt install axel
				axel https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
				unzip ngrok-2.2.8-linux-arm64.zip
				rm ngrok-2.2.8-linux-arm64.zip
				mv ngrok $PREFIX/bin/
				chmod u=rwx,g=rwx,o=rwx $PREFIX/bin/ngrok
				echo "Usage: ngrok -h"
				echo "";;

			*)
		esac

	elif [ $resp = '2' ]
	then
		echo "
		\033[01;93mO  Ngrok é um pequeno programinha de linha de comando que permite criar um túnel de conexão segura a partir do seu localhost e publicá-lo na internet. Ele é multiplataforma, podendo ser usado no \033[02;92mWindows, Linux e Mac OS X.\033[01;93m

Seu uso é bem fácil: basta descompactar o arquivo .zip e executar o pequeno arquivo do Ngrok para abrir uma janela do Terminal/Prompt de Comando. Em ambiente Windows (que foi onde testei) basta digitar o seguinte comando:

			\033[01;92mngrok http 80\033[01;93m
		
			assim que você entrar com este comando, o Ngrok detectará o diretório raiz de seu servidor web (caso o servidor esteja rodando no momento), fará um tunelamento nos servidores dele, atribuirá ao localhost de sua máquina um endereço web (URL) aleatório e o disponibilizará na internet através dele\n\t\tisso é extremamente útil quando se deseja exibir um protótipo ou um projeto de site ou sistema web em desenvolvimento para um cliente, por exemplo, sem precisar fazer deploy para um servidor remoto. Basta ativar o Ngrok, fornecer o endereço web gerado ao seu cliente e ele visualizará seu site normalmente!
		quem desenvolve em WordPress também pode usar o Ngrok, mas precisa tomar um cuidado adicional: como o WordPress só trabalha com URLs absolutas, é necessário converter essas URLs para serem exibidos de forma relativa. Caso contrário o Ngrok não exibirá CSS e JavaScript e o tema do seu site/blog em WordPress não será exibido corretamente. Instale este plugin em sua instalação do WordPress para resolver esse problema.\n\t\to Ngrok pode ser baixado deste link. Consulte a documentação dessa ferramenta para aprender a usá-la de forma mais avançada."
		echo "\nEnter para voltar"
		read enter
		sh ngrok.sh
	elif [ $resp = '3' ]
	then
		echo "sair"
		exit

	else
		echo "Erro na opcao"
	
	fi
}
ngrok
done
