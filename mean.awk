#! /bin/awk -f

NR==2 {size = $5}
/Allocated Chunk/{sum_a += $4; i++}
/Freed Chunk/{sum_b += $4; j++}


END {print size " " (sum_a / i) " " (sum_b / j)}
