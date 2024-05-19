# #!/bin/bash

# # Définir le périphérique à chiffrer
# device=/dev/sda2

# # Installer cryptsetup si ce n'est pas déjà fait
# sudo apt-get install cryptsetup

# # Formater le périphérique en utilisant LUKS
# sudo cryptsetup luksFormat $device

# # Ouvrir le périphérique chiffré
# sudo cryptsetup luksOpen $device encrypted_device

# # Créer un système de fichiers sur le périphérique ouvert
# sudo mkfs.ext4 /dev/mapper/encrypted_device

# # Monter le périphérique chiffré
# sudo mount /dev/mapper/encrypted_device /mnt/encrypted

# # Configurer fstab pour monter automatiquement le périphérique à chaque démarrage
# echo "/dev/mapper/encrypted_device /mnt/encrypted ext4 defaults 0 2" | sudo tee -a /etc/fstab

# # Fermer le périphérique chiffré
# sudo cryptsetup luksClose encrypted_device
