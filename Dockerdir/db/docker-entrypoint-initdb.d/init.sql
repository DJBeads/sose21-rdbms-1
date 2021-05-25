create table users (
    id int unsigned not null auto_increment unique primary key,
    name tinytext not null
);

create table moods (
    score tinyint not null,
    timestamp datetime not null,
    user_id int unsigned not null,
    constraint `fk_mood_user`
                   foreign key (user_id) references users (id)
);
