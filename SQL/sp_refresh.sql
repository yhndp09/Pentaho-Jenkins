-- PROCEDURE: staging.sp_refresh_transaksi_ppob()

-- DROP PROCEDURE IF EXISTS staging.sp_refresh_transaksi_ppob();

CREATE OR REPLACE PROCEDURE staging.sp_refresh_transaksi_ppob(
	)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    DELETE FROM staging.transaksi_ppob
    WHERE transaction_date >= (date_trunc('month',CURRENT_DATE) - INTERVAL '3 months');
    
    INSERT INTO staging.transaksi_ppob
    SELECT *
    FROM raw.transaksi_ppob
    WHERE transaction_date >= (date_trunc('month',CURRENT_DATE) - INTERVAL '3 months');
END;
$BODY$;
ALTER PROCEDURE staging.sp_refresh_transaksi_ppob()
    OWNER TO postgres;
