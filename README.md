DevOps Mão na Massa Lab

Laboratório prático de DevOps para provisionamento automático de infraestrutura e deploy de aplicação Java utilizando Vagrant e Ansible.

O ambiente cria automaticamente máquinas virtuais, configura serviços e realiza o deploy de uma aplicação REST integrada com banco de dados MySQL.

Arquitetura do ambiente

O laboratório cria três máquinas virtuais:

control-node – nó de controle do Ansible
app01 – servidor da aplicação
db01 – servidor de banco de dados MySQL

Rede privada utilizada:

192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01

Fluxo da arquitetura:

Cliente
↓
API REST (Spring Boot)
↓
MySQL Database

Tecnologias utilizadas

Vagrant

Ansible

MySQL

Java OpenJDK

Maven

Spring Boot

systemd

firewalld

Git

Pré-requisitos

Para executar este laboratório em sua máquina é necessário possuir:

Vagrant instalado

VirtualBox instalado

Git instalado

Conexão com internet para download das dependências

Sistema Linux ou Windows com suporte ao Vagrant

Memória recomendada:

mínimo: 8 GB de RAM

Espaço em disco recomendado:

10 GB livres

Como executar o laboratório

Clone o repositório:

git clone <repo>
cd ansible-lab

Suba o ambiente:

vagrant up

Acesse o control-node:

vagrant ssh

Execute o playbook Ansible:

ansible-playbook site.yml
Deploy da aplicação

A aplicação utilizada no laboratório é baseada em um projeto Spring Boot que implementa uma API REST para gerenciamento de notas.

Repositório utilizado:

https://github.com/callicoder/spring-boot-mysql-rest-api-tutorial

Durante o provisionamento o Ansible:

instala dependências (Java, Maven, Git)

clona o repositório da aplicação

realiza o build com Maven

configura o arquivo application.properties

cria um serviço systemd

inicia automaticamente a aplicação

A aplicação é exposta na porta:

8080

Exemplo de teste da API:

curl http://app01:8080/api/notes
Portas utilizadas

8080 – aplicação Spring Boot
3306 – banco de dados MySQL

Estrutura do projeto
ansible-lab
│
├── roles
│   ├── configuracao-default-so
│   └── mysql
│
├── templates
│
├── vars
│
├── site.yml
│
└── Vagrantfile
Objetivos do laboratório

Este projeto demonstra conceitos fundamentais de DevOps:

Infraestrutura como código (IaC)

Provisionamento automatizado

Configuração de servidores com Ansible

Deploy automatizado de aplicações

Integração entre aplicação e banco de dados

Configuração de serviços Linux (systemd)

Troubleshooting de rede e firewall

Referências

Este laboratório foi desenvolvido com base no curso:

DevOps Mão na Massa (Udemy)

Instrutor: Glaucio Guerra

Algumas adaptações e melhorias foram realizadas durante os estudos para fins educacionais e de portfólio.

Repositório da aplicação utilizada no laboratório:

https://github.com/callicoder/spring-boot-mysql-rest-api-tutorial

Autor

Projeto desenvolvido como laboratório prático de estudos em DevOps.
