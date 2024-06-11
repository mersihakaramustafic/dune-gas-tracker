select 
block_time, 
count(*) over (order by block_time asc) as cumulative_tx 
from query_3819474