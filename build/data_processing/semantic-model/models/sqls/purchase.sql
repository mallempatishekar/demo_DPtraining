SELECT
    customer_id AS p_customer_id,
    CAST(purchase_date AS TIMESTAMP) AS purchase_date,
    recency AS recency_in_days,

    numdealspurchases,
    numwebpurchases,
    numcatalogpurchases,
    numstorepurchases,

    numwebpurchases + numcatalogpurchases + numstorepurchases AS purchases,

    (mntwines
     + mntmeatproducts
     + mntfishproducts
     + mntsweetproducts
     + mntgoldprods
     + mntfruits) AS spend
FROM icebase.training.purchase_data
