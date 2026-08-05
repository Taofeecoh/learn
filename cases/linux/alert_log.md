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
    
## `find` missing file
1. With a known name
    - find the file starting from base baths (`~/`) is the production standard approach.

        `find "~/" -name "filename-or-folder"`

## find payment endpoint and status code
From file.log, find:

- The total number of requests to /api/v1/payments (any method, any status code).
- The number of those payment requests that returned HTTP status 502.
