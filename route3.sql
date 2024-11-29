create table route3 (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	station VARCHAR(50) NOT NULL,
	bus1 VARCHAR(50) NOT NULL,
	bus2 VARCHAR(50) NOT NULL
);
insert into route3 (station, bus1, bus2) values ('Поляны', '09:00', '14:00');
insert into route3 (station, bus1, bus2) values ('Молодёжное', '09:20', '14:10');
insert into route3 (station, bus1, bus2) values ('Серово', '09:40', '14:40');
insert into route3 (station, bus1, bus2) values ('ЖК Зеленые Холмы', '10:10', '15:10');
insert into route3 (station, bus1, bus2) values ('Белоостров', '10:20', '15:20');
insert into route3 (station, bus1, bus2) values ('ЖК Зеленые Холмы', '10:30', '15:30');
insert into route3 (station, bus1, bus2) values ('Серово', '10:50', '15:50');
insert into route3 (station, bus1, bus2) values ('Молодёжное', '11:10', '16:10');
insert into route3 (station, bus1, bus2) values ('Поляны', '11:30', '16:30');
insert into route3 (station, bus1, bus2) values ('Молодёжное', '14:10', '19:10');
insert into route3 (station, bus1, bus2) values ('Серово', '14:30', '19:20');
insert into route3 (station, bus1, bus2) values ('ЖК Зеленые Холмы', '15:00', '20:10');
insert into route3 (station, bus1, bus2) values ('Белоостров', '15:10', '20:10');
insert into route3 (station, bus1, bus2) values ('ЖК Зеленые Холмы', '15:20', '20:10');
insert into route3 (station, bus1, bus2) values ('Серово', '15:20', '20:20');
insert into route3 (station, bus1, bus2) values ('Молодёжное', '15:40', '20:40');
insert into route3 (station, bus1, bus2) values ('Поляны', '15:55', '21:00');