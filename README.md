# Script para iniciar os serviços Mysql e Apache2

# Motivação

Esse script tem como objetivo automatizar alguns processos que, no meu caso, acaba sendo repetitivo e maçante. Alem disso, o script pode ser ajustado para qualquer outro serviço. 

### **Lembrando que esse script foi feito para wsl 2**

# Instalação

Para instalar e executar o script no seu terminal, siga os seguintes passos:

### Passo 1: Clone o repositorio

```bash
git clone https://github.com/NicoolasRuan/mysql_service_sh.git
```

isso criará uma pasta com o nome do repositório no diretório atual. Acesse essa pasta usando o comando `cd`.

### Passo 2: Execute o script

Agora que você está dentro da pasta do repositório clonado, use o comando `chmod` para tornar o script executável:

```bash
chmod +x start_services.sh
```

### Passo 3: Adicione o script na inicialização

Se você deseja que o script seja executado automaticamente sempre que abrir o WSL 2, pode adicioná-lo ao seu arquivo de perfil, como `.bashrc` ou `.zshrc`, dependendo do shell que estiver usando.

Abra o arquivo de perfil usando um editor de texto, como o nano ou o vim. Por exemplo:

```bash
nano ~/.bashrc
```

Adicione a linha que executa o script no final do arquivo. Por exemplo:

```bash
~/caminho/para/o/script/start_services.sh
```

Salve e feche o arquivo.

Agora, sempre que você abrir o WSL 2, o script de automação será executado automaticamente, inicializando os serviços conforme você definiu. Essa abordagem economiza tempo e garante que você inicie seu ambiente de desenvolvimento de maneira eficiente.