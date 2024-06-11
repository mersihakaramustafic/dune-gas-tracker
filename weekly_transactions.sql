select 
date_trunc('week', block_time) as week, 
count(*) as tx_per_week
from query_3819474
group by block_time