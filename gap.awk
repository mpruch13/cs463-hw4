#! /bin/awk -f

BEGIN { i = 0; }

/Allocated Chunk/{
    if ($4 > 5000){
        print i;
        i = 0;
    }
    else{
        i++;
    }
}