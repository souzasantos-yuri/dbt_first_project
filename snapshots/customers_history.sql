{% snapshot customers_history %}

{{
    config(
      target_schema='l3_consumption',
      unique_key='customerid',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}


SELECT * FROM {{ source('landing', 'customers') }}

{% endsnapshot %}