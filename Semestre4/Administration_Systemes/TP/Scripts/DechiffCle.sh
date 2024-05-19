#!/bin/bash

# Définir la clé USB chiffrée
device=/dev/sdb1

# Ouvrir la clé USB chiffrée
sudo cryptsetup luksOpen $device encrypted_device

# Monter la clé chiffrée
sudo mount /dev/mapper/encrypted_device /mnt/encrypted

# Utiliser la clé comme d'habitude

# Démonter la clé chiffrée
sudo umount /mnt/encrypted

# Fermer la clé chiffrée
sudo cryptsetup luksClose encrypted_device

