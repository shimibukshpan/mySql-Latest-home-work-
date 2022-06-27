create database RealeEstate;
use RealeEstate;
create table Agents(
Agents_id int auto_increment unique,
Agents_name varchar(20) not null,
Agents_Seniority int not null,
Agents_phone int(10) not null
);
insert into Agents(Agents_name,Agents_Seniority,Agents_phone) values
('shimi bukshpan', 2,547735899),
('moshe viner', 1,583376587);
select * from Agents;

create table homs(
homs_id int auto_increment unique,
homs_rooms int not null,
homs_balconies int not null,
homs_age int not null,
homs_price int not null,
homs_Agents_id int
);
insert into homs(homs_rooms,homs_balconies,homs_age,homs_price,homs_Agents_id) values
(2,3,20,2000,1),
(1,4,30,7000,2),
(2,3,20,2000,1),
(5,2,35,5000,2);
select * from homs;
alter table homs add constraint homs_for_agents foreign key(homs_Agents_id) references Agents(Agents_id);
CALL `realeestate`.`homeworkloop`();
CALL `realeestate`.`homeworkloppinnerjoin`();


