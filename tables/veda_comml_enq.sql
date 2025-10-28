drop table if exists "informix".veda_comml_enq ;
create table "informix".veda_comml_enq 
  (
    request_id integer not null ,
    industry_type varchar(32),
    industry_subtype varchar(32),
    legal_name varchar(64),
    trading_name varchar(64),
    brn varchar(32),
    acn varchar(32),
    abn varchar(32),
    no_of_directors smallint,
    property_name varchar(64),
    unit_no char(5),
    street_no char(8),
    street_name varchar(25),
    street_type char(3),
    suburb varchar(22),
    state char(3),
    post_code char(4),
    country_code char(2),
    time_at_addr smallint
  );

