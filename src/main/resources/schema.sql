create table jobs(
    job_id int unique not null generated always as identity,
    job_name varchar(15) unique not null,
    primary key (job_id)
);

create table quickenings(
    quickening_id int unique not null generated always as identity,
    quickening_name varchar(20) unique not null,
    lp_cost int not null,
    primary key (quickening_id)
);

create table espers(
    esper_id int unique not null generated always as identity,
    esper_name varchar(30) unique not null,
    lp_cost int not null,
    primary key (esper_id)
);

create table regions(
    region_id int unique not null generated always as identity,
    job_id int not null,
    description varchar(255),
    primary key (region_id),
    foreign key (job_id) references jobs(job_id)
);

create table license_types(
    license_type_id int unique not null generated always as identity,
    license_type varchar(30) unique not null,
    primary key (license_type_id)
);

create table licenses(
    license_id int unique not null generated always as identity,
    license_name varchar(30) unique not null,
    description varchar(255) not null,
    lp_cost int not null,
    license_type_id int not null,
    subtype varchar(255),
    primary key (license_id),
    foreign key (license_type_id) references license_types(license_type_id)
);

create table license_links(
    license_link_id int unique not null generated always as identity,
    license_id int not null,
    region_id int not null,
    primary key (license_link_id),
    foreign key (license_id) references licenses(license_id),
    foreign key (region_id) references regions(region_id)
);