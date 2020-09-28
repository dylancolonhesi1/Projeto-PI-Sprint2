<<<<<<< HEAD
create database site;
use site;

create table site(
iDsite int primary key,
Paginas varchar(70),
PNGs_number int2,
color varchar(10),
Quantidade_de_paragrafos int3,
links_presentes varchar(70) 
);

create table background_site1(
idBackSi int primary key,
file_VsCode varchar(70),
images_quantidade int2,
colors int4,
fonts varchar(10)
);

create table background_site_photoshop(
iDPhoto int primary key,
PSD varchar (70),
image_common varchar(10),
vetorial_images varchar (10), 
fonts varchar (20) 
);
=======
create database site;
use site;

create table site(
iDsite int primary key,
Paginas varchar(70),
PNGs_number int2,
color varchar(10),
Quantidade_de_paragrafos int3,
links_presentes varchar(70) 
);

create table background_site1(
idBackSi int primary key,
file_VsCode varchar(70),
images_quantidade int2,
colors int4,
fonts varchar(10)
);

create table background_site_photoshop(
iDPhoto int primary key,
PSD varchar (70),
image_common varchar(10),
vetorial_images varchar (10), 
fonts varchar (20) 
);
>>>>>>> 17f36c7040d7e532d0d42c24b2a33775b7f51ca6
