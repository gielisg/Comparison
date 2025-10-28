drop table if exists "informix".evnt_team_member ;
create table "informix".evnt_team_member 
  (
    event_ref integer not null ,
    team_id integer not null ,
    contact_code char(10) not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

