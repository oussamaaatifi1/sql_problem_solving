create table Invités(
	id_invite int primary key ,
	nom varchar(30),
	status varchar(30)
);

create table Rooms(
	id_room int primary key ,
	nom varchar(30)
);


create table Mouvements(
	id int primary key ,
	time date,
	id_invite int,
	id_room int,
	FOREIGN KEY (id_invite) REFERENCES Invités(id_invite),
	FOREIGN KEY (id_room) REFERENCES Rooms(id_room));


create table Objets(
	id_objet int primary key ,
	nom_objet varchar(50),
	id_room int,
	FOREIGN KEY (id_room) REFERENCES Rooms(id_room));

create table Indices (
	id_indice int primary key ,
	description varchar(250),
	id_room int,
	FOREIGN KEY (id_room) REFERENCES Rooms(id_room));



INSERT INTO Invités (id_invite, nom, status) VALUES (1,
'Jean Dupont'
,
'Suspect');
INSERT INTO Invités (id_invite, nom, status) VALUES (2,
'Marie Curie'
,
'Innocent');
INSERT INTO Invités (id_invite, nom, status) VALUES (3,
'Albert Einstein'
,
'Suspect');
INSERT INTO Invités (id_invite, nom, status) VALUES (4,
'Isaac Newton'
,
'Innocent');
INSERT INTO Invités (id_invite, nom, status) VALUES (5,
'Niels Bohr'
,
'Suspect');


INSERT INTO rooms (id_room, nom) VALUES (1,
'Salle de Bal');
INSERT INTO rooms (id_room, nom) VALUES (2,
'Bibliothèque');
INSERT INTO rooms (id_room, nom) VALUES (3,
'Cuisine');
INSERT INTO rooms (id_room, nom) VALUES (4,
'Salon');
INSERT INTO rooms (id_room, nom) VALUES (5,
'Jardin');
