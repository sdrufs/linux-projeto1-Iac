#!/bin/bash

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."

groupadd GRP_ADM /adm
groupadd GRP_VEN /ven
groupadd GRP_SEC /sec

echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -p $(openssl senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl senha123) -G GRP_SEC

echo "Criando permissões dos dirétórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim..."


