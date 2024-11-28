select {{ source('Jaffleshop', 'fun_test') }}(10.0),{{ source('Jaffleshop', 'fun_test') }}(),* from 
{{ source('Jaffleshop', 'orders') }}