with 

source as (

    select * from {{ source('retail', 'dim_stores') }}

),

st_dim_stores as (

    select
        sotre_id,
        store_name,
        location,
        manegare_name

    from source

)

select * from st_dim_stores
