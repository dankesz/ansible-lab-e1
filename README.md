# DevOps Mão na Massa Lab

Laboratório prático de **DevOps** para provisionamento automatizado de infraestrutura e deploy de uma aplicação **Java Spring Boot** integrada a um banco de dados **MySQL**, utilizando **Vagrant** e **Ansible**.

Este projeto demonstra conceitos de **Infraestrutura como Código (IaC)**, automação de servidores e deploy automatizado de aplicações.

---

## Arquitetura do Ambiente

O laboratório cria automaticamente **três máquinas virtuais**:

| Host | Função | IP |
|-----|-----|-----|
| control-node | Nó de controle do Ansible | 192.168.56.2 |
| app01 | Servidor da aplicação | 192.168.56.3 |
| db01 | Servidor de banco de dados | 192.168.56.4 |

## Fluxo da aplicação:

```text
Cliente
   ↓
API REST (Spring Boot)
   ↓
MySQL Database
```


# Tecnologias Utilizadas

Vagrant, Ansible, MySQL, Java OpenJDK, Maven, Spring Boot, Git, systemd, firewalld, NFS

## Pré-requisitos

Para executar este laboratório é necessário possuir instalado:

Vagrant;
VirtualBox;
Git;
Conexão com internet para download das dependências;

## Requisitos de Hardware recomendados
| Recurso | Recomendado |
|-----|-----|
| RAM | 8 GB |
| CPU | 4 cores |
| Disco | 10 GB livres |

## Estrutura do Projeto
```ansible-lab
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
├── provision.sh
│
└── Vagrantfile
```

## Como Executar o Laboratório

Clone o repositório:

$ git clone <repo>
$ cd ansible-lab

Suba as máquinas virtuais:

$ vagrant up

Acesse o nó de controle:

$ vagrant ssh

Execute o playbook Ansible:

$ ansible-playbook site.yml

## Deploy da Aplicação

Durante o provisionamento o Ansible executa automaticamente essas etapas:

1. Instalação do Java
2. Instalação do Maven
3. Instalação do Git
4. Clonagem da aplicação
5. Build com Maven
6. Configuração do banco de dados
7. Criação de serviço systemd
8. Inicialização da aplicação

## Repositório da aplicação utilizado no laboratório:

https://github.com/callicoder/spring-boot-mysql-rest-api-tutorial

## API REST

A aplicação disponibiliza uma API REST para gerenciamento de notas.

Exemplo de requisição:

curl http://app01:8080/api/notes

## Portas Utilizadas

Porta	  Serviço
8080	  Aplicação Spring Boot
3306	  MySQL

## Objetivos do Projeto

Este laboratório demonstra conceitos importantes de DevOps:

Infraestrutura como código (IaC)
Provisionamento automatizado
Configuração de servidores com Ansible
Deploy automatizado de aplicações
Integração entre aplicação e banco de dados
Configuração de serviços Linux (systemd)
Troubleshooting de rede e firewall

## Referências

Este projeto foi desenvolvido com base no curso:

DevOps Mão na Massa (Udemy)
Instrutor: Glaucio Guerra

Algumas adaptações e melhorias foram realizadas durante os estudos para fins educacionais e de portfólio.

Aplicação utilizada no laboratório:

https://github.com/callicoder/spring-boot-mysql-rest-api-tutorial

## Autor

Projeto desenvolvido como laboratório prático de estudos em DevOps e automação de infraestrutura
