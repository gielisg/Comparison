drop table if exists "informix".inv_reconciled ;
create table "informix".inv_reconciled 
  (
    file_ref integer not null ,
    chg_total decimal(10,2),
    call_total decimal(10,2),
    doc_total decimal(10,2),
    reconciled char(1),
    num_invoices decimal(10,2),
    balance_total decimal(10,2),
    adj_total decimal(10,2),
    inv_total decimal(10,2)
  );

