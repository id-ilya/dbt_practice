select 
    scheduled_departure::date,
    count(*) as cancelled_flights_count
from 
    {{ ref('fct_flights') }}	
where
    departure_airport = 'MJZ' 
    and status = 'Cancelled'
group by 
    scheduled_departure::date