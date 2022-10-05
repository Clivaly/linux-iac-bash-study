#!/bin/bash

echo "Criando diretorios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e adicionando aos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd nayara -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd beto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd jorge -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd mateus -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd regina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd katarina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Fim."