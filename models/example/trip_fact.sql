with trips as (

select 
lastname,
age
from {{ source('demo', 'PETS') }}


limit 10 

)

select * from trips