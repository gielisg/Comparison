drop table if exists "informix".people_b2b_resp ;
create table "informix".people_b2b_resp 
  (
    ntwtransid integer not null ,
    trx_seq_code char(10) not null ,
    status char(1),
    status_text varchar(50),
    response_date date,
    service_acc char(10),
    sim_no char(20)
  );

