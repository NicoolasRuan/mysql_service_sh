#!/bin/bash


if [ ! -e /dev/shm/mysql_apache_started ]; then
    # Nome do serviço que você quer verificar
    echo "inciando script para inicar o serviço mysql"
    SERVICE_NAME="mysql"

    # Verifica se o serviço está rodando
    if sudo service $SERVICE_NAME status >/dev/null 2>&1; then
        echo "O serviço $SERVICE_NAME está rodando."
	touch /dev/shm/mysql_apache_started
    else
        echo "O serviço $SERVICE_NAME está parado, deseja inicar? [s ou n]"
        read resposta

        case $resposta in
                s)
                        echo "iniciando apache2 e mysql..."
			            sudo service apache2 restart
			            sudo service mysql restart
			            # Cria o arquivo temporário em /dev/shm para indicar que o script já foi executado
    			        touch /dev/shm/mysql_apache_started
                        ;;
                n)
                        echo
                        ;;
        esac

    fi

fi
