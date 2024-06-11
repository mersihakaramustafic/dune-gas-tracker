select distinct date_trunc('minute', at.block_time) as block_time,
sum(eth_paid_for_tx * price) over (order by date_trunc('minute', at.block_time)) as cum_us_paid_for_tx
from query_3819474 as at
left join (select minute, price from prices.usd where symbol = 'WETH') as p on date_trunc('minute', at.block_time) = p.minute