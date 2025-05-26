--сколько у каждого из типов самолетов всего мест.
-- код самолета (поле aircraft_code из модели stg_flights__seats)
-- количество мест в самолете (количество строк с одинаковым значением aircraft_code)
SELECT
        aircraft_code,
        COUNT(*) AS seat_count
FROM
        {{ ref('stg_flights__seats') }}
GROUP BY
        aircraft_code