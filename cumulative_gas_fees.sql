select block_time, 
sum(eth_paid_for_tx) over (order by block_time asc) as cumulative_eth_paid_for_tx 
from query_3819474