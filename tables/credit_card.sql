drop table if exists "informix".credit_card ;
create table "informix".credit_card 
  (
    cred_card_code char(2) not null ,
    cred_card_narr char(18) not null ,
    display_ord smallint not null 
  );

