SELECT
  a.country_name,
  a.year,
  b.series_code,
  a.indicator_name,
  a.value
FROM
  worldbank_wdi.data AS a
INNER JOIN
  worldbank_wdi.series_description AS b
ON
  a.indicator_code = b.series_code
WHERE
  a.country_name = 'Indonesia'
  AND b.series_code LIKE '%SN%'
  AND b.long_definition LIKE '%food%'
  AND b.indicator_name LIKE '%undernourishment%'
ORDER BY
  a.year asc
