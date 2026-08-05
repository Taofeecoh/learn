1. Log analysis
    - Investigate the count of error levels in a log file
        
        `grep -ci 'error' file.log`

2. Sort-Count-Filter
    - Count number of unique IPs at known location in the file

        `grep "^[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" file.log` 
        
        OR 
        
        `cut -d " " -f 5 file.log`
    - 