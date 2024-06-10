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

