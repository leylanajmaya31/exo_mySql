	
    -- Creation de la BDD --


create database tableLogiciel;
use tableLogiciel;


	-- Creation des Tables --
    
    
create table ticket(
	id_ticket int primary key auto_increment not null,
    nom_ticket varchar(50) not null,
    description_ticket text,
    date_ouverture_ticket datetime not null,
    date_fermeture_ticket datetime,
    id_logiciel int,
    id_type_ticket int not null,
    id_statut int not null,
    id_materiel int,
    id_utilisateur int not null
    )Engine=InnoDB;

create table utilisateur(
	id_utilisateur int primary key auto_increment not null,
	nom_utilisateur varchar(50) not null,
	prenom_utilisateur varchar(50) not null,
	age_utilisateur int,
	email_utilisateur varchar(50) unique not null,
	password_utilisateur varchar(100) not null,
	id_poste int not null
	)Engine=InnoDB;

create table materiel(
	id_materiel int primary key auto_increment not null,
    nom_materiel varchar(50) not null,
    description_materiel varchar(50),
    spare tinyint(1) default 0 not null,
    quantite_materiel int not null,
    id_fabricant int not null,
    id_type_materiel int not null
	)Engine=InnoDB;

create table solution(
	id_solution int primary key auto_increment not null,
    nom_solution varchar(50) not null,
    description_solution text,
    date_creation_solution datetime not null,
    date_modification datetime,
    id_type_solution int not null,
    id_materiel int,
    id_logiciel int,
    id_utilisateur int not null
	)Engine=InnoDB;
    
create table logiciel(
	id_logiciel int primary key auto_increment not null,
    nom_logiciel varchar(50) not null,
    description_logiciel text,
    quantite_logiciel int not null,
    id_editeur int not null
	)Engine=InnoDB;
    
create table intervention(
	id_intervention int primary key auto_increment not null,
    nom_intervention varchar(50) not null,
    description_intervention varchar(50) not null,
    date_intervention datetime not null,
    duree_intervention time not null,
    verifie_intervention tinyint(1) default 0 not null,
    id_utilisateur int not null,
    id_ticket int not null
	)Engine=InnoDB;

create table editeur(
	id_editeur int primary key auto_increment not null,
    nom_editeur varchar(50) not null
	)Engine=InnoDB;

create table statut(
	id_statut int primary key auto_increment not null,
    nom_statut varchar(50) not null
	)Engine=InnoDB;

create table type_solution(
	id_type_solution int primary key auto_increment not null,
    nom_type_solution varchar(50)
	)Engine=InnoDB;

create table type_materiel(
	id_type_materiel int primary key auto_increment not null,
    nom_type_materiel varchar(50) not null
	)Engine=InnoDB;

create table fabricant(
	id_fabricant int primary key auto_increment not null,
    nom_fabricant varchar(50) not null
	)Engine=InnoDB;

create table poste(
	id_poste int primary key auto_increment not null,
    nom_poste varchar(50) not null
	)Engine=InnoDB;

create table type_ticket(
	id_type_ticket int primary key auto_increment not null,
    nom_type_ticket varchar(50) not null
	)Engine=InnoDB;


	-- Creation des Tables d'association --
    

create table assigner(
	id_utilisateur int,
    id_materiel int,
    reference varchar(50) not null,
    date_assignation datetime not null,
    primary key(id_utilisateur, id_materiel)
	)Engine=InnoDB;

create table installer(
	id_utilisateur int,
    id_logiciel int,
    num_licence varchar(50) not null,
    date_assignation datetime not null,
    primary key(id_utilisateur, id_logiciel)
	)Engine=InnoDB;

create table incorporer(
	id_intervention int,
    id_solution int,
    primary key(id_intervention, id_solution)
	)Engine=InnoDB;


-- Creation des Contraintes foreign key --


alter table ticket
add constraint fk_inclure_logiciel
foreign key(id_logiciel)
references logiciel(id_logiciel);


alter table ticket
add constraint fk_detailler_type_ticket
foreign key(id_type_ticket)
references type_ticket(id_type_ticket);

alter table ticket
add constraint fk_posseder_statut
foreign key(id_statut)
references statut(id_statut);

alter table ticket
add constraint fk_lier_materiel
foreign key(id_materiel)
references materiel(id_materiel);

alter table ticket
add constraint fk_rediger_utilisateur
foreign key(id_utilisateur)
references utilisateur(id_utilisateur);

alter table solution
add constraint fk_classer_type_solution
foreign key(id_type_solution)
references type_solution(id_type_solution);

alter table solution
add constraint fk_appliquer_materiel
foreign key(id_materiel)
references materiel(id_materiel);

alter table solution
add constraint fk_depanner_logiciel
foreign key(id_logiciel)
references logiciel(id_logiciel);

alter table solution
add constraint fk_ecrire_utilisateur
foreign key(id_utilisateur)
references utilisateur(id_utilisateur);

alter table materiel
add constraint fk_fabriquer_fabricant
foreign key(id_fabricant)
references fabricant(id_fabricant);

alter table materiel
add constraint fk_completer_type_materiel
foreign key(id_type_materiel)
references type_materiel(id_type_materiel);

alter table intervention
add constraint fk_ajouter_utilisateur
foreign key(id_utilisateur)
references utilisateur(id_utilisateur);

alter table intervention
add constraint fk_intervenir_ticket
foreign key(id_ticket)
references ticket(id_ticket);

alter table utilisateur
add constraint fk_occuper_poste
foreign key(id_poste)
references poste(id_poste);

alter table logiciel
add constraint fk_editer_editeur
foreign key(id_editeur)
references editeur(id_editeur);




    
    
    
    
    
    
    
    
    
    