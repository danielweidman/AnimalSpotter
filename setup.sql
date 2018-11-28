--
-- Example setup file for a web database project.
--

-- create database and user, grant privileges to user
create database AnimalSpotter;
create user 'mysql_username'@'localhost' identified by 'mysql_password';
grant all on AnimalSpotter.* to 'mysql_username'@'localhost';
flush privileges;

-- select the database and create tables
use AnimalSpotter;
create table user (

user_id varchar(128),

primary key (user_id));



create table sighting(

id varchar(36),

time numeric(20,0),

points numeric(8,0),

description varchar(500),

primary key (id));



create table location(

id varchar(36),

name varchar(36),

primary key (id));



create table animal(

id varchar(36),

type varchar(36),

information varchar(500),

primary key (id));



create table user_sighting(

user_id varchar(36),

sighting_id varchar(36),

primary key (user_id, sighting_id),

foreign key user_id references user (user_id),

foreign key sighting_id references sighting (id));



create table animal_location(

animal_id varchar(36),

location_id varchar(36)m

primary key (animal_id, location_id),

foreign key animal_id references animal (id),

foreign key location_id references location (id));



create table sighting_location(

sighting_id varchar(36),

location_id varchar(36),

primary key (sighting_id, location_id),

foreign key sighting_id references sighting (id),

foreign key location_id references location (id));

-- insert data into database

insert into animal values ('001','Canada goose','The Canada goose (Branta canadensis) is a large wild goose species with a black head and neck, white cheeks, white under its chin, and a brown body. Native to arctic and temperate regions of North America, its migration occasionally reaches northern Europe. It has been introduced to the United Kingdom, New Zealand, Argentina, Chile, and the Falkland Islands. Like most geese, the Canada goose is primarily herbivorous and normally migratory; it tends to be found on or close to fresh water.');



insert into animal values ('002','Horse','The horse (Equus ferus caballus) is one of two extant subspecies of Equus ferus. It is an odd-toed ungulate mammal belonging to the taxonomic family Equidae. The horse has evolved over the past 45 to 55 million years from a small multi-toed creature, Eohippus, into the large, single-toed animal of today. Humans began domesticating horses around 4000 BC, and their domestication is believed to have been widespread by 3000 BC.');



insert into animal values ('003','Squirrel','Squirrels are members of the family Sciuridae, a family that includes small or medium-size rodents. The squirrel family includes tree squirrels, ground squirrels, chipmunks, marmots (including woodchucks), flying squirrels, and prairie dogs amongst other rodents. Squirrels are indigenous to the Americas, Eurasia, and Africa, and were introduced by humans to Australia.');



insert into animal values ('004','Cat','So cute!');



insert into animal values ('005','Rabit','Rabbits are small mammals in the family Leporidae of the order Lagomorpha (along with the hare and the pika). Oryctolagus cuniculus includes the European rabbit species and its descendants, the world s 305 breeds of domestic rabbit. Sylvilagus includes thirteen wild rabbit species, among them the seven types of cottontail.');



insert into animal values ('006','Raccoon','The raccoon is a medium-sized mammal native to North America. The raccoon is the largest of the procyonid family, having a body length of 40 to 70 cm (16 to 28 in) and a body weight of 5 to 26 kg (11 to 57 lb). Its grayish coat mostly consists of dense underfur which insulates it against cold weather. Three of the raccoon\'s most distinctive features are its extremely dexterous front paws, its facial mask, and its ringed tail, which are themes in the mythologies of the indigenous peoples of the Americas. Raccoons are noted for their intelligence, with studies showing that they are able to remember the solution to tasks for at least three years.They are usually nocturnal and omnivorous, eating about 40% invertebrates, 33% plants, and 27% vertebrates.');




insert into animal values ('007','Owl','Owls are birds from the order Strigiformes, which includes about 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl. Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except polar ice caps and some remote islands.');



insert into animal values ('008','Eagle','Eagle is the common name for many large birds of prey of the family Accipitridae. Eagles belong to several groups of genera, not all of which are closely related. Most of the 60 species of eagle are from Eurasia and Africa.[1] Outside this area, just 14 species can be found—2 in North America, 9 in Central and South America, and 3 in Australia.');



insert into animal values ('009','Skunk','Skunks are North and South American mammals in the family Mephitidae. Not related to polecats which are in the weasel family, the closest Old World relative to the skunk is the stink badger. The animals are known for their ability to spray a liquid with a strong unpleasant smell. Different species of skunk vary in appearance from black-and-white to brown, cream or ginger colored, but all have warning coloration.');



insert into animal values ('010','Engineer','Engineers are poor creatures who needs extra care');

insert into location values (‘001’,’South side’);

insert into location values (‘002’,’North side’);

insert into location values (‘003’,’University center’);

insert into location values (‘004’,’Lagoon’);

insert into location values (‘005’,’Wade Oval’);

insert into location values (‘006’,’Main Quad’);
