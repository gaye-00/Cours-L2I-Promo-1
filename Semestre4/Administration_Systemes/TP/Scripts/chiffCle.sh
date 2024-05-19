#!/bin/bash

# Définir la clé USB
device=/dev/sdb

# Installer cryptsetup si ce n'est pas déjà fait
sudo apt-get install cryptsetup

# Formater la clé USB en utilisant LUKS
sudo cryptsetup luksFormat $device

# Ouvrir la clé USB chiffrée
sudo cryptsetup luksOpen $device encrypted_device

# Créer un système de fichiers sur la clé ouverte
sudo mkfs.ext4 /dev/mapper/encrypted_device

# Monter la clé chiffrée
sudo mount /dev/mapper/encrypted_device /mnt/encrypted

# Démonter la clé chiffrée
sudo umount /mnt/encrypted

# Fermer la clé chiffrée
sudo cryptsetup luksClose encrypted_device

