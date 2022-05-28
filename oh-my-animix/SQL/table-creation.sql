-- establish 'namespace' for related DB entities to exist within
create schema ohmyanimix_app;

-- convenient command to reference schema created above
-- similar to using 'select * from ohmyanimix_app.users;'
set search_path to ohmyanimix_app;

create table user_roles (
    id      int generated always as identity primary key,
    name    varchar unique not null
);

create table app_users (
    id              int generated always as identity,
    display_name    varchar not null,
    email           varchar unique not null,
    username        varchar unique not null check (length(username) >= 4),
    password        varchar not null check (length(password) >= 8),
    role_id         int,

    constraint app_users_pk
    primary key (id)
);

create table categories (
    id      int generated always as identity primary key,
    name        varchar unique not null,
);

create table titles (
    id                  int generated always as identity primary key,
    title_text          varchar not null,
    description_text    varchar not null,
    creator_id          int,
    caregory_id         int,

    constraint title_creator_fk
    foreign key (creator_id)
    references app_users(id),

    constraint title_category_fk
    foreign key (category_id)
    references categories(id)
);

create table anime_list (
    id              int generated always as identity primary key,
    name            varchar not null,
    owner_id        int,
    category_id     int,

    constraint anime_list_owner_fk
    foreign key (owner_id)
    references app_users(id)

    constraint list_category_fk
    foreign key (category_id)
    references categories(id)
);