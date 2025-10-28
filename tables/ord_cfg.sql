drop table if exists "informix".ord_cfg ;
create table "informix".ord_cfg 
  (
    email_temp_dir varchar(254),
    word_temp_dir varchar(254),
    word_doc_dir varchar(254),
    email_doc_dir varchar(254)
  );

