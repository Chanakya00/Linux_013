# Linux Exit Status Using `$?`

The `$?` variable stores the exit status of the last executed command.

- `0` = Success
- Non-zero (`1`, `2`, etc.) = Error or Failure

## Linux Exit Status Investigation

```bash
$ pwd
/home/kali
$echo $?
0
```

```bash
$ ls
a1.txt
$echo $?
0
```

```bash
$ ls nofile.txt
ls: cannot access 'nofile.txt': No such file or directory
$echo $?
2
```

```bash
$ mkdir testdir
$echo $?
0
```

```bash
$ mkdir testdir
mkdir: cannot create directory 'testdir': File exists
$echo $?
1
```

## Commands and Exit Status

| Command | Exit Status | Meaning |
|----------|------------|---------|
| `pwd` | `0` | Command executed successfully |
| `ls` | `0` | Directory listed successfully |
| `ls nofile.txt` | `2` | File not found |
| `mkdir testdir` | `0` | Directory created successfully |
| `mkdir testdir` (again) | `1` | Directory already exists |

## What Can a Script Learn from an Exit Status?

A script uses the exit status to determine whether a command succeeded or failed.

- 0 = Success
- Non-zero = Error/Failure
 
This helps scripts perform error handling and automate decisions.

Example:

```bash
mkdir reports

if [ $? -eq 0 ]; then
    echo "Success"
else
    echo "Failed"
fi
