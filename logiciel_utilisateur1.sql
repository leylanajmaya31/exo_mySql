USE tableLogiciel;
SELECT * FROM utilisateur;


-- -------------------------------------------------------------------------------------------------------- --
-- 						LEYLA
-- -------------------------------------------------------------------------------------------------------- --


-- CONSIGNE 1: Table utilisateur : Afficher la liste des utilisateurs avec leur nom, prénom, fonction dans l’entreprise. --


-- Cliquer sur "schéma -> logiciel -> utilisateur":
		


SELECT id_utilisateur, nom_utilisateur, prenom_utilisateur, nom_poste 		-- Selectionne les colonnes que l'on souhaite --
FROM utilisateur 															-- Selectionne la table principale --
INNER JOIN poste 															-- Sélectionne la 2nd table d'origine de la foreign key, et la lie/connecte à la table principale --
ON utilisateur.id_poste = poste.id_poste; 									-- Renseigne la table principale et la foreign key associée à la table d'origine et son ID -- 
																			-- Affiche le nom du poste --


-- -------------------------------------------------------------------------------------------------------- --

SELECT nom_utilisateur, prenom_utilisateur, id_poste 
FROM utilisateur;																	-- BONUS: Affiche l'ID du poste --

-- -------------------------------------------------------------------------------------------------------- --




-- -------------------------------------------------------------------------------------------------------- --
-- 						ALEXIA
-- -------------------------------------------------------------------------------------------------------- --



-- CONSIGNE 2: Afficher la liste des utilisateurs de type intervenant(technicien) avec leur nom, prénom --

-- Cliquer sur "schéma -> logiciel -> utilisateur" puis sur l'icône grille qui apparait à côté des icônes information et outils --


SELECT nom_utilisateur, prenom_utilisateur, nom_poste 		-- Selectionne les colonnes que l'on souhaite --
FROM utilisateur 											-- Selectionne la table principale --
INNER JOIN poste 											-- Sélectionne la 2nd table d'origine de la foreign key, et la lie/connecte à la table principale --
ON utilisateur.id_poste = poste.id_poste 					-- Renseigne la table principale et la foreign key associée à la table d'origine et son ID -- 
WHERE nom_poste = 'Technicien'; 							-- Filtre l'attribut souhaité --

-- -------------------------------------------------------------------------------------------------------- --




-- -------------------------------------------------------------------------------------------------------- --
-- 						DIMITRI
-- -------------------------------------------------------------------------------------------------------- --

-- CONSIGNE 7: Afficher la liste des interventions avec le nom, description, date intervention, durée, technicien (nom, prénom), de l’année 2023. --

SELECT nom_intervention, description_intervention, date_intervention, duree_intervention, nom_utilisateur, prenom_utilisateur -- Si on ne fait pas suivre le nom des attributs par le nom de la table, on peut aussi les indiquer comme suivant: nom_intervention = intervention.nom (table.attribut) --
FROM intervention
INNER JOIN utilisateur
ON intervention.id_utilisateur = utilisateur.id_utilisateur
WHERE YEAR(date_intervention) = 2023;

-- ou: WHERE date_intervention 
-- BETWEEN '2023-01-01' 
-- AND '2024-01-01';







-- -------------------------------------------------------------------------------------------------------- --
-- 						ANTOINE
-- -------------------------------------------------------------------------------------------------------- --
