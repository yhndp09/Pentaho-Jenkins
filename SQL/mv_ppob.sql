-- View: datamart.mv_ppob

-- DROP MATERIALIZED VIEW IF EXISTS datamart.mv_ppob;

CREATE MATERIALIZED VIEW IF NOT EXISTS datamart.mv_ppob
TABLESPACE pg_default
AS
 SELECT transaction_date,
    transaction_id,
    source_cif_number,
    channel,
    transaction_type,
    depo_name,
    transaction_sub_type_1,
    aggregator_name,
    transaction_status,
    transaction_sub_type_2,
    biller_name,
    transaction_status_description,
    transaction_amount,
    transaction_fee + bank_fee + partner_fee + aggregator_fee + transaction_tip AS total_fee
   FROM staging.transaksi_ppob
  ORDER BY transaction_date DESC
WITH DATA;

ALTER TABLE IF EXISTS datamart.mv_ppob
    OWNER TO postgres;