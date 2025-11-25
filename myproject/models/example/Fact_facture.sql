{{ config(
    materialized='table'
) }}

SELECT
  'AHS' as abh_id,
    Numero_Facture       AS num_facture,
    Exercice_Id,
    CONVERT(INT, TO_CHAR(Date_Facture, 'YYYYMMDD')) AS date_id,
    P_eau_Id             AS p_eau_id,

    -- champ non présent dans la source → à adapter OU mettre NULL
    Unite_Id              AS usagers_id,

    Montant_Sold         AS montant_anterieur,
    Montant_Net         AS montant_payé,
    Montant_Brute        AS montant_total,
    Volume               AS volume

FROM public."factures"
