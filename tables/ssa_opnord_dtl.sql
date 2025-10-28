drop table if exists "informix".ssa_opnord_dtl ;
create table "informix".ssa_opnord_dtl 
  (
    ssa_samid integer not null ,
    event_ref integer not null ,
    ssa_rec_num serial not null ,
    ssa_line_no varchar(64),
    ssa_due_date varchar(32),
    ssa_order_class varchar(64)
  );

