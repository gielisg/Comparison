drop table if exists "informix".evnt_review ;
create table "informix".evnt_review 
  (
    sp_cn_ref integer,
    event_ref integer not null ,
    review_num smallint,
    offer_num smallint,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

