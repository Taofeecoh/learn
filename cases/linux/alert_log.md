1. Log analysis
    - Investigate the count of error levels in a log file
        
        `grep -ci 'error' file.log`

2. Filter-Sort-Count
    - Count number of unique IPs at known location in the file

        extract >> sort unique >> count : `grep "^[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" file.log | sort | uniq | wc -l`
        
        OR 
        
        `cut -d " " -f 5 file.log | sort | uniq | wc -l`

        OR

        `cut -d " " -f 5 file.log | sort -u | wc -l`
    
    