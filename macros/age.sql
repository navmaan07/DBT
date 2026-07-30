{% macro age_of_person(age) %}

CASE WHEN age>18 
    then 'adult'
    else 'child' 
    end 


{% endmacro %}