# WIP

## Command Line Usage
```
usage: change-commit-date COMMIT_HASH TIME
```

### Examples

Using the `date` shell command to get the current date:
```
$ ./change-commit-date d12de27a8ee8347a663e6b0e36504b0468cd59f5 "$(date)"
```

Using a past date:
```
$ ./change-commit-date 3e4bb9ae8dc7caa2da0805f7a048350f93673577 "Fri Feb 17 06:42:58 PM PST 2023"
```
