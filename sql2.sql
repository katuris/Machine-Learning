/*1) */ 
CREATE TABLE PARK_SUPERVISOR (
    EmpID int not null PRIMARY KEY,
    LastName varchar(255) not null,
    FirstName varchar(255) not null,
    phone int null,
    emailaddress varchar(255) not null
);

/*2)*/
CREATE TABLE PARK (
    ParkID int NOT NULL,
    ParkName varchar(255) NOT NULL,
    ParkType  varchar(255) NOT NULL,
    ParkStatus varchar(255) NOT NULL,
    DateCompleted Date NULL,
    Supervisor  int    NOT NULL,
    PRIMARY KEY (ParkID),
 CONSTRAINT FK_Supervisor FOREIGN KEY(Supervisor)
    REFERENCES PARK_SUPERVISOR(EmpID)
    );

/*3) */
insert into park_supervisor values ('1', 'Swanson', 'Ron',NULL, 'libertarian@pawneeparks.org');
insert into park_supervisor values('2', 'Knope', 'Leslie', 812-867-5309, 'womeningov@pawneeparks.org');
insert into park_supervisor values('3', 'Haverford', 'Tom ',812-555-5505, 'treatyoself@pawneeparks.org');
insert into park_supervisor values('4', 'Dwire', 'Andy',812-123-4567, 'mouserat@hotmail.com');

/*4) */
 
insert into PARK  values (1 ,'Librarians', 'Unknown',' Closed', '27-Feb-05', 1);

insert into PARK  values (2, 'Old Park' ,'Family' ,'Active' ,'01-Feb-99' ,2);

insert into PARK  values (3, 'Lil Sebastian', 'Memorial' ,'Active', '17-Jul-16', 1);
insert into PARK  values (4, 'Meadows', 'Family', 'Renovation' ,'05-May-11', 3);
insert into PARK  values (5 ,'Shoreview', 'Dog Park',' Active', '06-Jun-19', 2);
insert into PARK  values (6 ,'Lot 48', 'Unknown' ,'Pit', NULL, 2);
insert into PARK  values (7 ,'Elm Street', 'Family', 'Active', '11-Dec-10', 4);

/*5)*/
ALTER TABLE park ADD Rangers varchar(255);
/*6)*/
UPDATE park SET Rangers = 'Carl' WHERE parktype = 'Family';
/*7)*/
UPDATE park SET Rangers = 'Greg' WHERE parktype = 'Memorial';
/*8)*/
ALTER TABLE Park MODIFY parktype varchar(50)  NULL;
Update park set parktype = NULL where parktype = 'Unknown';
/*9)*/
select * from park;
/*10)*/
select * from park_supervisor;
/*11)*/
DELETE FROM park WHERE parkstatus=' Closed';
/*12)*/
delete from park;
/*13) */
delete from park_supervisor;