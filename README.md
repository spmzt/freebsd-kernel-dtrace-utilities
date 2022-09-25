# FreeBSD Kernel DTrace Utilities
## proc.d
```tcsh
root@freebsd:~ # ./proc.d 689
dtrace: buffer size lowered to 1m
Begin:

pid: 689
ppid (parent pid): 688
opid (real parent pid): 688

ucred: 
        cr_ref (reference count): -339
        cr_users (proc + thread using this cred): 2
        cr_uid (effective user id): 1001
        cr_ruid (real user id): 1001
        cr_svuid (saved user id): 1001
        cr_ngroups (number of groups): 3
        cr_rgid (real group id): 1001
        cr_svgid (saved group id): 1001
        cr_flags (credential flags): 0

p_state (process state):1

cpuset: 
             0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f  0123456789abcdef
         0: 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
        10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................


session: 
        s_sid (process group session id): 689
        s_count (number of process group in session): 1
        pg_id (process group id): 689

vmspace: 
vm_map: 
        nentries (number of vm_map_entries): 43
        timestamp (version number): 219
```
