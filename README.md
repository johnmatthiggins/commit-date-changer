# Git Commit Date Changer

Did you submit your homework to GitLab after the deadline and are trying to convince
your professor you're not a lazy student! Well look no further. This is the tool for you!

With the Git Commit Date Changer, you can make it look like you were actually working on your
school when you were actually playing [vimgolf](https://www.vimgolf.com/).

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

After you make these changes, you will have to run `git push --force` to force update the branch's
history.
