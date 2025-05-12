# CC_Git_Groupe5

# Scripts d'Automatisation Système - Groupe 9

## Description du Projet

Ce projet vise à développer un ensemble de scripts Linux pour automatiser des tâches courantes d'administration système. L'objectif est de simplifier la gestion des utilisateurs et des groupes, d'assurer des sauvegardes régulières et de faciliter la mise à jour du système tout en conservant un historique des opérations.

## Fonctionnalités

Ce projet comprend les scripts suivants :

* **feature/user-create/create_users.sh :** Script permettant la création automatisée d'utilisateurs et de groupes sur le système. Il peut prendre en charge la définition de mots de passe initiaux, l'ajout à des groupes spécifiques et la création de répertoires personnels.
* **feature/backup/backup_system.sh :** Ce script crée une archive compressée du répertoire spécifié. Assurez-vous de tester le script et de vérifier que la sauvegarde fonctionne correctement.
* **feature/update-system/update_system.sh :** Script pour la mise à jour du système d'exploitation. Il effectue la mise à jour des listes de paquets, la mise à niveau des paquets installés et enregistre les actions dans un fichier de log (/var/log/system_update.log). Des options de nettoyage des paquets obsolètes et du cache APT peuvent être incluses.

## Installation et Utilisation

1.  *Cloner le dépôt :*
    bash
    git clone [https://github.com/VotreNomUtilisateur/scripts-automatisation-groupe9.git](https://github.com/VotreNomUtilisateur/scripts-automatisation-groupe9.git)
    cd scripts-automatisation-groupe9
    

2.  *Permissions d'exécution :*
    Rendez les scripts exécutables :
    bash
    chmod +x feature/user-create/create_users.sh
    chmod +x feature/backup/backup_system.sh
    chmod +x feature/update-system/update_system.sh
    

3.  *Configuration (si nécessaire) :*
    * **create_users.sh :** Peut nécessiter des arguments pour spécifier les noms d'utilisateurs, les groupes, etc. Consultez l'aide du script (si implémentée) ou le code source pour les détails.
    * **backup_system.sh :** Vous devrez probablement modifier le script pour définir les répertoires à sauvegarder et la destination de la sauvegarde.
    * **update_system.sh :** Ce script est généralement autonome, mais vous pourriez configurer le fichier de log si nécessaire.

4.  *Exécution des scripts :*
    Utilisez sudo pour exécuter les scripts nécessitant des privilèges d'administrateur :
    bash
    sudo ./feature/user-create/create_users.sh <options>
    sudo ./feature/backup/backup_system.sh
    sudo ./feature/update-system/update_system.sh
    

5.  *Journalisation :*
    Le script update_system.sh enregistre ses activités dans le fichier /var/log/system_update.log.

## Dépendances

* Un système d'exploitation Linux (testé sur une VM Linux).
* Les outils système standard tels que bash, useradd, groupadd, cron, apt (pour les systèmes Debian/Ubuntu), rsync (pour la sauvegarde), etc.

## Membres du Groupe 9

* [TCHANKAM TIANI]
* [TEUMOU CABREL]
* [HOUTOUMATI BOUKAR]
* [NGONGANG JONATHAN]
* [HOUNGUE YANN]


## Workflow Git

Le projet a suivi le workflow Git suivant :

1.  **main :** Branche principale stable contenant la version validée du projet.
2.  **dev :** Branche d'intégration où les fonctionnalités sont fusionnées après avoir passé les tests.
3.  **feature/* :** Branches de développement indépendantes pour chaque fonctionnalité (création d'utilisateurs, sauvegarde, mise à jour système).
4.  **test/sys-admin-check :** Branche de test intermédiaire pour vérifier l'intégration des fonctionnalités avant la fusion dans dev.

Le processus de fusion a été le suivant : feature/* → test/sys-admin-check → dev → main.

## Améliorations Futures (Optionnel)

* Implémenter des options plus avancées pour la création d'utilisateurs (expiration de compte, politiques de mot de passe).
* Permettre la configuration de la planification de sauvegarde via un fichier de configuration externe.
* Ajouter des fonctionnalités de notification (par e-mail) pour les succès et les échecs des scripts.
* Rendre les scripts plus génériques pour fonctionner sur différentes distributions Linux.

## Licence (Optionnel)

[Indiquez ici la licence sous laquelle votre projet est distribué, par exemple, MIT License, GPL, etc.]

---

N'hésitez pas à adapter cet exemple avec les détails spécifiques de vos scripts et de votre travail. Un bon README.md est essentiel pour que les autres comprennent votre projet !