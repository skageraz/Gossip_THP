# Ze Super Gossip_Project


Salut mon p'tit moussaillon !
Bienvenue sur le repository de la superbe application Rails de François Dasylva et Jeremy Rak !

Ce projet crée une base de donnée pour un super réseau social où l'on pourra partager des potins.

Un utilisateur va s'inscrire, renseigner son prénom et nom, son mail et son age, puis il précisera sa ville avec une recherche par code postal. Il aura ensuite toutes les fonctionnalités qui feront de cette appli une future licorne :

    Les utilisateurs peuvent créer des potins : "askip john est célib hihi"
    Les utilisateurs en créant des potins peuvent mettre un ou plusieurs tags sur les potins : #romance
    Les utilisateurs peuvent commenter des potins : "ahiii j'savé pa lol 💁‍♂️"
    Et puisqu'une appli de potins sans un système BG de commentaire serait bidon, on a fait en sorte qu'il est possible de commenter des commentaires
    Les utilisateurs peuvent liker des potins
    Les utilisateurs peuvent contacter leur commères favories en MP pour des exclus mondiales

L'utilisateur pourra donc rechercher les potins par ville, par utilisateurs, par date (plus récent ou plus ancien), par nombre de likes, par tags, pour trouver les potins les plus croustillants.

Les consignes pour cette exercice étaient les suivantes :

Créer une classe user, avec 10 utilisateurs en base avec Faker ayant pour attributs :

    Un first_name, qui est un string
    Un last_name, qui est un string
    Un description, qui est un text
    Un email, qui est un string
    Un age, qui est un integer

Créer une classe city, avec 10 villes liés aux users en base avec Faker, ayant pour attributs :

    Un name, qui est un string
    Un postal_code, qui est un integer

Un utilisateur appartient à une seule ville mais une ville peut contenir plusieurs utilisateurs.

Créer une classe gossip, avec 20 gossips liés à leur auteur en base avec Faker, ayant pour attributs :

    Un title, qui est un string
    Un content, qui est un text
    Un date, qui est un timestamps

Un utilisateur peut écrire plusieurs gossips mais un gossip ne peut être écrit que par un seul utilisateur.

Créer une classe tag, avec 10 tags en base avec Faker ayant pour attributs :

    Un title, qui est un string

Un gossip peut avoir plusieurs tags et un tag peut être présent sur plusieurs gossip (genre #rumeur). Chaque gossip aura (au minimum) un tag.

Créer une classe PrivateMessage, avec 1 PM en base avec Faker ayant pour attributs :

    Un content, qui est un text
    Un date, qui est un timestamps

Un PM aura un expéditeur et un (ou plus) destinataire. Tu vas lui donner un expéditeur et un (ou plus) destinataire.

Créer une classe comment, avec 20 commentaires en base avec Faker et lier à leur auteur et au gossip associé. qui aura comme attributs :

    Un content, qui est un text

Un gossip peut avoir plusieurs commentaires. Mais un commentaire ne peut correspondre qu'a un gossip précis. Les utilisateurs peuvent écrire plusieurs commentaires mais un commentaire n'a qu'un seul auteur.

Créer une classe like n'ayant pas d'attribus, avec 20 likes en base avec Faker en les mettant à des commentaires ou des gossips au hasard. 
Un utilisateur peut mettre des likes sur des gossips ou des commentaires. 

## Instructions ##
Pour tester notre super appli, réalisez les processus suivants :
- git clone https://github.com/skageraz/Gossip_THP

pour copier notre répo sur votre machine
- cd Gossip_THP/

pour se déplacer dans le bon dossier
- bundle install

pour mettre à jour votre liste de gems
- rails db:migrate

pour que les migrations soient bien effectuées
- rails db:seed

pour pouvoir initialiser et remplir votre database !

Cher correcteur/correctrice, si vous avez bien executez toutes ces commandes, la base de données complète se trouve au chemin d'accès suivant :

```Gossip_THP/db/development.sqlite3 ```

Ouvrez-la avec <a href="http://sqlitebrowser.org/">DB Browser</a> ou <a href="http://sqlitestudio.pl/?act=download">SQLStudio</a>

### Concepteurs ###

Conçu en Ruby on Rails, ligne par ligne, par Jeremy R. ( <a href="https://github.com/skageraz">Skageraz</a> ) et François D. ( <a href="https://github.com/TheFSilver">TheFSilver</a> ).
