select
*
from {{ source('demo', 'PETS') }}

limit 10;