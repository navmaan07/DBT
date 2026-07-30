WITH daily_weather AS (

select 
date(time) as daily_weather,
weather,
pressure,
humidity,
clouds

from {{ source('demo', 'WEATHER') }}


),

daily_weather_agg as (

select daily_weather,
weather,
round(avg(TEMP),2),
avg(pressure),
round(avg(humidity),2),
avg(clouds)

from daily_weather

group by daily_weather, weather
qualify row_number() OVER (PARTITION BY daily_weather order by count(weather) desc) = 1

)

select * from daily_weather_agg