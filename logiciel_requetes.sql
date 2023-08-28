
-- -------------------------------------------------------------------------------------------------------- --
-- 						Tables classiques :
-- -------------------------------------------------------------------------------------------------------- --








-- -------------------------------------------------------------------------------------------------------- --
-- 						LEYLA
-- -------------------------------------------------------------------------------------------------------- --


-- CONSIGNE 1: Table utilisateur : Afficher la liste des utilisateurs avec leur nom, prénom, fonction dans l’entreprise.

-- Avant de saisir les valeurs "utilisateur", renseigner les valeurs de la foreign key "id_poste", pour pouvoir les attribuer une fois qu'on remplis les champs utilisateurs (on ne renseigne pas l'id, exemple id_poste, car il s'auto_incrémente directement à partir de 1 --

insert into poste(nom_poste) values ('Employé'), ('Technicien'), ('Responsable'), ('Administrateur');

-- Une fois les foreigns keys saisies, on peut donner maintenant les valeurs de la table utilisateur, et renseigner les id par le chiffre attribué à nos valeurs, exemple: 1 = employé; 2=technicien etc... --
-- Rien à voir, pour rappel MD5 par (exemple: "md5('qhohdnkojf')" pour l'attribut "mot de passe") est une fonction SQL qui permet de hâcher 1 valeur; ici le mot de passe --

insert into utilisateur(nom_utilisateur, prenom_utilisateur,email_utilisateur, password_utilisateur, id_poste) values 
('GARCIA', 'Alexia', 'alga@gmail.com', md5('1234'), 1),
('SALMI', 'Leyla', 'lesa@gmail.com', md5('1234'), 4),
('IATOSTI', 'Dimitri', 'diia@gmail.com', md5('1234'), 3),
('GADJI', 'Raymond', 'raga@gmail.com', md5('1234'), 2),
('OKOU', 'Ange', 'anok@gmail.com', md5('1234'), 2),
('MARIN', 'Kévin', 'kema@gmail.com', md5('1234'), 1),
('SERDA', 'Kévin', 'kese@gmail.com', md5('1234'), 1),
('BRAHIMI', 'Célia', 'cebr@gmail.com', md5('1234'), 2);

-- cliquant sur "schéma -> logiciel -> utilisateur":
-- SELECT * FROM logiciel.utilisateur; 
-- SELECT nom_utilisateur,prenom_utilisateur,nom_poste 
-- FROM utilisateur;

-- -------------------------------------------------------------------------------------------------------- --



-- -------------------------------------------------------------------------------------------------------- --
-- 						Intégration des valeurs de la BDD
-- -------------------------------------------------------------------------------------------------------- --


insert into fabricant (nom_fabricant)
values("acer"), ("nvidia"), ("gigabyte");

insert into type_materiel(nom_type_materiel)
values("ecran"), ("pc portable"), ("desktop"), ("clavier"), ("souris");


insert into materiel (nom_materiel, description_materiel, spare, quantite_materiel, id_fabricant, id_type_materiel)
values ("aa", "aae", false, 8, 1, 1), ("ee", "eea", true, 41, 2, 2);

insert into editeur(nom_editeur)
values("microsoft"),("oracle");

insert into logiciel(nom_logiciel, description_logiciel, quantite_logiciel, id_editeur)
values("photoshop", "photo", 12, 1), ("word", "texte", 5, 1), ("apache", "bdd", 4, 2);


insert into statut(nom_statut)
values ("en cours"), ("traité"), ("à point"), ("saignant");

insert into type_ticket(nom_type_ticket)
values ("pikachu"), ("feu"), ("metro"), ("eau");





-- -------------------------------------------------------------------------------------------------------- --
-- 						ALEXIA
-- -------------------------------------------------------------------------------------------------------- --



-- CONSIGNE 2: Afficher la liste des utilisateurs de type intervenant(technicien) avec leur nom, prénom => fait en cliquant sur "schéma -> logiciel -> utilisateur":

-- SELECT * FROM logiciel.utilisateur; 
-- SELECT nom_utilisateur, prenom_utilisateur, nom_poste FROM utilisateur 
-- INNER JOIN poste 
-- ON utilisateur.id_poste = poste.id_poste 
-- WHERE nom_poste = 'Technicien'; 

-- -------------------------------------------------------------------------------------------------------- --


-- -------------------------------------------------------------------------------------------------------- --
-- 						DIMITRI
-- -------------------------------------------------------------------------------------------------------- --

-- CONSIGNE 7: Afficher la liste des interventions avec le nom, description, date intervention, durée, technicien (nom, prénom), de l’année 2023. --


insert into ticket (nom_ticket, description_ticket, date_ouverture_ticket, id_type_ticket, id_statut, id_materiel, id_utilisateur, id_logiciel)
values ("aeae", "aeaeae", "2023-05-05", 1, 1, 1, 1,1), ("aae", "aeaeae", "2023-05-25", 2, 2, 1, 1,1);


insert into intervention (nom_intervention, description_intervention, date_intervention, duree_intervention, verifie_intervention, id_utilisateur, id_ticket)
values("ABBA", "Depannage service RH", "2024-12-06", "20", false, 1 , 1),
("KING", "Installation compta", "2023-12-06", "20", false, 1 , 1),
 ("AVA", "Logiciel accueil", "2024-12-06", "20", false, 1 , 1),
 ("KIM", "Depannage service marketing", "2023-12-06", "20", false, 2 , 2),
 ("ZOO", "Remplacement service acquisition", "2024-12-06", "20", false, 2 , 2),
 ("NEO", "Dépannage service communication", "2023-12-06", "20", false, 3 , 2);
 

-- SELECT nom_intervention, description_intervention, date_intervention, duree_intervention, nom_utilisateur, prenom_utilisateur -- Si on ne fait pas suivre le nom des attributs par le nom de la table, on peut aussi les indiquer comme suivant: nom_intervention = intervention.nom (table.attribut) --
-- FROM intervention
-- INNER JOIN utilisateur
-- ON intervention.id_utilisateur = utilisateur.id_utilisateur
-- WHERE date_intervention 
-- BETWEEN '2023-01-01' 
-- AND '2024-01-01';





-- -------------------------------------------------------------------------------------------------------- --
-- 						ANTOINE
-- -------------------------------------------------------------------------------------------------------- --















-- -------------------------------------------------------------------------------------------------------- --

-- CONSIGNE 3: Afficher la liste des équipements avec leur nom, description, marque, type, quantité. --


-- table groupe : créer 3 groupes (peinture, vidéo, dessin),

insert into groupe (nom_groupe) values ('peinture'), ('vidéo'), ('dessin');
-- table categorie : créer 3 categorie (new, actualite, oeuvre),
insert into categorie (nom_categorie) values ('new'), ('actualite'), ('oeuvre');
-- table article : créer 4 articles
insert into article(titre_article, date_article, contenu_article, id_categorie, id_utilisateur) values
('Nouveau tableau', '2023-07-10 10:25:00', 'jhoiuiklfaqofjpjsqfokl', 3, 2),
('Nouvelle peinture', '2022-11-08 10:25:00', 'qsldjhfginqsw,fkmjfkf', 3, 4),
('evenement', '2023-05-21 10:25:00', 'eqdgiqjkjgpq', 1, 1),
('Nouveau film', '2022-08-12 10:25:00', 'sqfoiqzihf,nqezog', 3, 4);
-- table media créer 3 média,
insert into media(url_media, nom_media)values ('./img2.png', 'image2'),
('./video4.mp4', 'video4'),
('./video122.mp4', 'video122');
-- table commentaire : créer 5 commentaires (lier au article et utilisateur existant)
insert into commentaire (message_commentaire, date_commentaire, id_article, id_utilisateur)
values ('sfjhuhfjfkkjfj', '2022-10-11', 1, 2),
('sqjjfuhqkslnflljfl', '2023-11-25', 2, 2),
('qdfuZHFJKAQJ', '2023-06-11', 3, 4),
('FSUHfhjkhkkfkdkldlk', '2023-04-21', 3, 4),
('sqffuhazfpiaejf', '2023-08-06', 2, 2);
-- table message : créer 5 messages,
insert into message (contenu_message, date_message) values
('<wfhouhQLFK<SJFF', '2021-02-03'),
('zqFOHzsfjzfpi', '2022-02-03'),
('sojqfhioyzqihofihqzfj', '2021-09-26'),
('sqfu<sohjfnkqeoepfk', '2023-02-03'),
('qesfyiqgefhij', '2023-08-03');
-- ------------------------------------------------------------
-- -table association :
-- table envoyer (1, 3, 1), (1, 4, 2), (2,1,3),(2,3,4), (2,4,5) (expediteur, destinataire, id_message),
insert into envoyer (expediteur, destinataire, id_message) values
(1, 3, 1), (1, 4, 2), (2,1,3),(2,3,4), (2,4,5);
-- table appartenir : (1, 1), (2, 2), (3,2), (4,3) (id_utilisateur, id_groupe),
insert into appartenir (id_utilisateur, id_groupe) values
(1, 1), (2, 2), (3,2), (4,3);
-- table illustrer : (1, 1), (1,2), (2,3), (3,3) (id_article, id_media),
insert into illustrer(id_article, id_media) values
(1, 1), (1,2), (2,3), (3,3);
-- table abonner: (1,2), (1,3),(1,4), (2,1), (2,3), (3,4), (4,1) (utilisateur, abonne). 
insert into abonner (utilisateur, abonne) values
(1,2), (1,3),(1,4), (2,1), (2,3), (3,4), (4,1);