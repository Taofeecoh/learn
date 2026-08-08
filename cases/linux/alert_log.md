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

## fix scripting file that summarizes log file
- After fixing the script, run it. It should print exactly three lines:

    - error_count:<number>
    - unique_error_ips:<number>
    - top_error_endpoint:<METHOD> <PATH>

## fact check config file

```
I want to make sure the config wasn't clobbered during last night's maintenance window.
```

## investigate backup archive

```
The monthly backup archive monthly_backup_2026-05.tar.gz is in your workspace. Somewhere inside it there's an April deployment log CSV. I need to know how many deployments had a failed status. Extract the archive, find the right file, and give me the count.
```

## configure and fix cron job bugs
```
The SRE team is planning a maintenance window and needs to know exactly how many cron jobs are active on the production host — and which ones fire multiple times per hour.
```

## build stock report
```
The warehouse manager needs a quick report on out-of-stock and damaged inventory: 

"Build me a three-line stock report. First line should be the header STOCK CHECK REPORT. Second line: how many SKUs are completely out of stock (quantity is zero). Third line: how many items are marked as damaged. Write it to a file called report.txt in your working directory, then print it. I want the format exactly as described — we are feeding it into a dashboard script."
```
