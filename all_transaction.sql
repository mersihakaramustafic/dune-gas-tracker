select 
    block_time,
    success,
    gas_price/POWER(10, 9) as gas_price,
    gas_used,
    (gas_price * gas_used)/POWER(10, 9) as eth_paid_for_tx
from ethereum.transactions
where "from" = 0x4E60bE84870FE6AE350B563A121042396Abe1eaF
group by 
    block_time,
    success,
    gas_price,
    gas_used