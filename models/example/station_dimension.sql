with PET as (

select 
* 
from {{ source('demo', 'PETS') }}


limit 10 

)

select * from PET