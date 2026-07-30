WITH CTE AS (

select
LASTNAME,
{{age_of_person('age')}} as age_of_persons


from {{ source('demo', 'PETS') }}

)

select * from CTE