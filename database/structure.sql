create database ModelMarket
use database ModelMarket

create table Users(
    user_id int auto_increment not null,
    username varchar(40)  not null,
    password varchar(30) not null
);

create table Models(
    model_id int auto_increment not null,
    model_name varchar(60) not null,
    content varbinary not null
);

create table Keywords(
    keyword varchar(20) not null
);

create table Users_Models(
    user_id int not null,
    model_id int not null,
    foreign key (user_id) REFERENCES Users (user_id),
    foreign key (model_id) REFERENCES Models (model_id)
);

create table Models_Keywords(
    keyword int not null,
    model_id int not null,
    foreign key (user_id) REFERENCES Users (user_id),
    foreign key (model_id) REFERENCES Models (model_id)
)