drop table if exists "informix".ord_stat_mail_cfg ;
create table "informix".ord_stat_mail_cfg 
  (
    ord_status_code char(2) not null ,
    sa_template varchar(254),
    sas_template varchar(254),
    sp_template varchar(254),
    cust_template varchar(254),
    dealer_template varchar(254)
  );

