drop table if exists "informix".tasktyp_stat_sla ;
create table "informix".tasktyp_stat_sla 
  (
    status_id integer not null ,
    type_id integer not null ,
    seq_num smallint not null ,
    init_sla_period integer,
    subs_sla_period integer,
    max_sla_notifs smallint,
    open_sla_period integer,
    usr_prompt_mins integer,
    res_prompt_mins integer
  );

