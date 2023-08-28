SELECT * FROM logiciel.utilisateur;
SELECT nom_utilisateur,prenom_utilisateur,nom_poste FROM utilisateur INNER JOIN poste ON utilisateur.id_poste = poste.id_poste
WHERE nom_poste= 'Technicien';