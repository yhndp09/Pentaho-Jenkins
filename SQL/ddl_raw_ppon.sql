-- Table: raw.transaksi_ppob

-- DROP TABLE IF EXISTS "raw".transaksi_ppob;

CREATE TABLE IF NOT EXISTS "raw".transaksi_ppob
(
    transaction_id character varying(36) COLLATE pg_catalog."default",
    channel character varying(6) COLLATE pg_catalog."default",
    transaction_type character varying(8) COLLATE pg_catalog."default",
    transaction_sub_type_1 character varying(10) COLLATE pg_catalog."default",
    aggregator_name character varying(42) COLLATE pg_catalog."default",
    transaction_date timestamp without time zone,
    transaction_status character varying(7) COLLATE pg_catalog."default",
    transaction_reference_number character varying(13) COLLATE pg_catalog."default",
    correlation_id character varying(36) COLLATE pg_catalog."default",
    reference_code character varying(9) COLLATE pg_catalog."default",
    source_cif_number bigint,
    source_account_number bigint,
    currency character varying(3) COLLATE pg_catalog."default",
    notes boolean,
    additional_info text COLLATE pg_catalog."default",
    is_payroll boolean,
    created_date character varying(26) COLLATE pg_catalog."default",
    updated_date timestamp without time zone,
    transaction_sub_type_2 character varying(7) COLLATE pg_catalog."default",
    biller_name character varying(42) COLLATE pg_catalog."default",
    provider_product_code character varying(10) COLLATE pg_catalog."default",
    product_denom bigint,
    transaction_status_description character varying(8) COLLATE pg_catalog."default",
    mb_transaction_reference_number character varying(13) COLLATE pg_catalog."default",
    source_account_name character varying(33) COLLATE pg_catalog."default",
    transaction_amount numeric(9,1),
    transaction_fee numeric(7,1),
    sales_price numeric(18,5),
    bank_fee numeric(15,5),
    partner_fee numeric(8,2),
    aggregator_fee numeric(8,2),
    transaction_tip numeric(6,1),
    depo_name character varying(11) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "raw".transaksi_ppob
    OWNER to postgres;