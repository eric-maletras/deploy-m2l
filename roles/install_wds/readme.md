# Rôle Ansible : WDS

Ce rôle installe et configure Windows Deployment Services (WDS) sur un serveur Windows en utilisant la collection `trippsc2.windows`.

## Variables par défaut

- `wds_install_state`: État d'installation du service (valeurs possibles : `present` ou `absent`).
- `wds_roles`: Liste des rôles WDS à installer (`Deployment Server`, `Transport Server`).
- `wds_image_path`: Chemin d'installation des fichiers WDS.
- `wds_pxe_config`: Configuration PXE (ex : DHCP, approbation admin).
- `wds_startup_settings`: Paramètres de démarrage (programmes boot, architectures supportées).

## Exemple d'utilisation

Ajoutez ce rôle à un playbook :

```yaml
- name: Installer et configurer WDS
  hosts: wds_servers
  roles:
    - wds
