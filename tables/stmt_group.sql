drop table if exists "informix".stmt_group ;
create table "informix".stmt_group 
  (
    debtor_code char(10) not null ,
    group_num smallint not null ,
    heading_narr char(32)
  );

