# Manual de contribuição com scripts

**Sumário**
- Analisar se o pacote tem alguma dependência
  - [Pacote sem dependencia](#pacote-sem-dependência)
    - [Criar o script de instalação](#criar-o-script-de-instalação)
  - [Pacote com dependência](#pacote-com-dependência)
    - [Criar o script de verificação da dependência](#criar-o-script-de-verificação-da-dependência)
    - [Criar o script de instalação da depêndencia](#criar-o-script-de-instalação-da-depêndencia)
    - [Criar o script de instalação do software](#criar-o-script-de-instalação-do-software)
- [Adicionar função do script no menu desejado](#adicionar-função-do-script-no-menu-desejado)
- [Adicionar chamada da função na InstalaTudo](#adicionar-chamada-da-função-na-instalatudo)
- [Adicionar no Detalhes do pacote](#adicionar-no-detalhes-do-pacote)
- [Adicionar o programa no AVAILABLE_PACKAGES.md](#adicionar-o-programa-no-available_packagesmd)
 
### Pacote sem dependência
---
#### Criar o script de instalação
Criar um script de instalação para o pacote/software que deseja instalar. Basicamente os comandos que você faria no terminal para instalar o pacote.

**Exemplo** (gimp.sh)**:**
```bash
#!/bin/bash

sudo apt-get install -y gimp
```
Uma dica bacana é realizar a instalação do pacote uma vez e conferir o histórico do que foi digitado no terminal no arquivo /home/usuario/.bash_history

### Pacote com dependência
---
#### Criar o script de verificação da dependência
Para garantir que as dependências do pacote que deseja instalar já estão instaladas você precisa criar um script que vai verificar isso. A dependência não precisa ser exatamente uma dependência, pois o software que quer instalar funcionaria sem ela, mas não faria sentido instalar o software desejado sem ela, por exemplo, vou instalar uma interface gráfica de gerenciamento para o Git, então não faz sentido instalar sem já ter o Git instalado.

**Exemplo:**
```bash
#!/bin/bash

callpython=$(which python3)

if [[ -n "$callpython" ]]; then
	echo true
else
	echo false
fi
```
#### Criar o script de instalação da depêndencia
A dependência nada mais é que um outro software, então você precisa criar um script de instalação caso ela não esteja instalada.

**Exemplo:**
```bash
#!/bin/bash

sudo apt-get install -y python3
```
#### Criar o script de instalação do software
Agora vamos juntar tudo que foi criado para realizar a instalação do pacote desejado

**Exemplo:**
```bash
#!/bin/bash

Python3(){
	sudo ./app/desenvolvedor/python3.sh
}

PipPython3(){
	sudo apt-get install -y python3-pip
}

verifypython3=$(./app/utils/VerificaInstalacaoPython3.sh)

if [[ $verifypython3 != "true" ]]; then
	Python3
	PipPython3
else
	PipPython3
fi
```

### Adicionar função do script no menu desejado
---
Para o script ser utilizado precisa inserir a chamada ao mesmo pelo seu diretório, essa chamada é feita por uma função no arquivo Principal.sh dentro da pasta menu de cada categoria.

**Exemplo** (/basicos/menu/Principal.sh)**:**
```bash
[...]
Gimp() {
	echo -e "$senha\n" | sudo -S ./app/basicos/gimp.sh
}
[...]
```
Obs.: Cuidar para manter a ordem alfabética

### Adicionar chamada da função na InstalaTudo
---
Todo menu possuí uma função chamada InstalaTudo que faz o exatamente o que o nome diz.

**Exemplo:**
```bash
InstalaTudo() {
	Gimp
	Gksu
	Inkscape
	RarUnrar
	RestrictedExtras
	UnityTweakTool
	Concluido
	Basico
}
```
Obs.: Cuidar para manter a ordem alfabética

### Adicionar chamada da função na EscolherProgramas
---
Assim como a InstalaTudo, todo menu possuí uma função EscolherProgramas, onde o usuário vai poder escolher o que instalar
#### Adicionar o pacote na lista de seleção
Para que o programa apareça na lista para ser selecionado e assim instalado precisa adicionar a função la lista, com uma breve descrição

**Exemplo:**
```bash
[...]
"Gimp" "Editor de fotos" OFF \
"Gksu" "Interface gráfica do sudo" OFF \
[...]
```
Obs.: Cuidar para manter a ordem alfabética
#### Adicionar o pacote dentro das escolhas
Agora para que a seleção funcione você precisa adicionar na lista de baixo

**Exemplo:**
```bash
[...]
"Gimp") Gimp ;;
"Gksu") Gksu ;;
[...]
```
O que fica dentro das aspas precisa se identico ao que você adicionou na lista anterio. Se o título utilizado na lista anterior foi *Gimp* precisa escrever exatamente deste jeito dentro das aspas.
Obs.: Cuidar para manter a ordem alfabética

### Adicionar no Detalhes do pacote
---
Dentro da pasta menu de cada pacote possuí um Detalhes.sh, ali é mantido uma lista com os pacotes disponíveis e uma breve descrição.

**Exemplo:**
```bash
[...]
Gimp -> Editor de fotos
Gksu -> Interface gráfica do sudo
[...]
```

### Adicionar o programa no [AVAILABLE_PACKAGES.md](AVAILABLE_PACKAGES.md)
---
É uma lista com os softwares disponíveis e seus respectivos sites para poder obter mais informações que pode se acessado [clicando aqui](AVAILABLE_PACKAGES.md). Basta escolher a categoria e adicionar o programa e o site do mesmo.

**Exemplo:**
```markdown
- [Gimp](https://www.gimp.org)
```