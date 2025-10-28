drop table if exists "informix".adj_params ;
create table "informix".adj_params 
  (
    adj_item_ref integer not null ,
    seq_num integer not null ,
    param_id integer not null ,
    param_value varchar(254,20) not null 
  );

