with CTE as (

select
t.*
from {{ ref('trip_fact') }} t

limit 10

)

select 
*
from CTE