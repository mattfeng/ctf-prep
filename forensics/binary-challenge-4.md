# Binary Zone Digital Forensics Challenge 4

Challenge link: http://www.binary-zone.com/2015/09/16/digital-forensic-challenge-4/

## Writeup

### image

### memdump.mem

#### imageinfo
```
➜  binary-chal-4 vol.py -f memdump.mem imageinfo
Volatility Foundation Volatility Framework 2.5
INFO    : volatility.debug    : Determining profile based on KDBG search...
          Suggested Profile(s) : VistaSP1x86, Win2008SP1x86, Win2008SP2x86, VistaSP2x86
                     AS Layer1 : IA32PagedMemoryPae (Kernel AS)
                     AS Layer2 : FileAddressSpace (/home/forensics/binary-chal-4/memdump.mem)
                      PAE type : PAE
                           DTB : 0x122000L
                          KDBG : 0x81716c90L
          Number of Processors : 1
     Image Type (Service Pack) : 1
                KPCR for CPU 0 : 0x81717800L
             KUSER_SHARED_DATA : 0xffdf0000L
           Image date and time : 2015-09-03 10:04:05 UTC+0000
     Image local date and time : 2015-09-03 03:04:05 -0700
```
* Likely a Windows Server 2008 (not R2) box, running Service Pack 1?

#### pslist
```
➜  binary-chal-4 vol.py -f memdump.mem --profile=Win2008SP1x86 pslist   
Volatility Foundation Volatility Framework 2.5
Offset(V)  Name                    PID   PPID   Thds     Hnds   Sess  Wow64 Start                          Exit                          
---------- -------------------- ------ ------ ------ -------- ------ ------ ------------------------------ ------------------------------
0x82f57910 System                    4      0    105      504 ------      0 2015-08-23 20:27:20 UTC+0000                                 
0x838382d0 smss.exe                420      4      4       28 ------      0 2015-08-23 20:27:20 UTC+0000                                 
0x83912208 csrss.exe               484    472     11      400      0      0 2015-08-23 20:27:22 UTC+0000                                 
0x8392d530 csrss.exe               524    516      9      536      1      0 2015-08-23 20:27:28 UTC+0000                                 
0x8392c9f8 wininit.exe             532    472      3      102      0      0 2015-08-23 20:27:28 UTC+0000                                 
0x8387ed90 winlogon.exe            560    516      4      125      1      0 2015-08-23 20:27:28 UTC+0000                                 
0x8393bd90 services.exe            608    532      7      238      0      0 2015-08-23 20:29:06 UTC+0000                                 
0x83942020 lsass.exe               620    532     19      628      0      0 2015-08-23 20:29:18 UTC+0000                                 
0x83945d90 lsm.exe                 628    532     10      166      0      0 2015-08-23 20:29:19 UTC+0000                                 
0x839d4020 svchost.exe             792    608      8      305      0      0 2015-08-23 20:29:45 UTC+0000                                 
0x839ded90 VBoxService.exe         836    608      8      115      0      0 2015-08-23 20:29:46 UTC+0000                                 
0x839f0020 svchost.exe             892    608      7      262      0      0 2015-08-23 10:29:52 UTC+0000                                 
0x83a06020 svchost.exe             984    608     15      306      0      0 2015-08-23 10:29:52 UTC+0000                                 
0x83a18020 svchost.exe            1012    608      6      147      0      0 2015-08-23 10:29:53 UTC+0000                                 
0x83a0eb88 svchost.exe            1024    608     37      913      0      0 2015-08-23 10:29:53 UTC+0000                                 
0x83a1e020 SLsvc.exe              1040    608      4       75      0      0 2015-08-23 10:29:53 UTC+0000                                 
0x83a35630 svchost.exe            1108    608     23      450      0      0 2015-08-23 10:29:54 UTC+0000                                 
0x83a365d0 svchost.exe            1176    608     22      257      0      0 2015-08-23 10:29:56 UTC+0000                                 
0x83a3e020 svchost.exe            1204    608     18      518      0      0 2015-08-23 10:29:56 UTC+0000                                 
0x838ed8c8 svchost.exe            1352    608     18      271      0      0 2015-08-23 10:29:58 UTC+0000                                 
0x83acad90 spoolsv.exe            1476    608     17      282      0      0 2015-08-23 10:30:04 UTC+0000                                 
0x83adfd90 svchost.exe            1512    608      9      117      0      0 2015-08-23 10:30:04 UTC+0000                                 
0x83ae4af0 svchost.exe            1556    608      5      123      0      0 2015-08-23 10:30:05 UTC+0000                                 
0x83ae6c28 svchost.exe            1568    608      3       73      0      0 2015-08-23 10:30:05 UTC+0000                                 
0x83af2d90 svchost.exe            1680    608      5       44      0      0 2015-08-23 10:30:05 UTC+0000                                 
0x83dca020 taskeng.exe            1984   1024      5      135      0      0 2015-08-23 10:30:08 UTC+0000                                 
0x83b2b020 taskeng.exe            1444   1024     10      245      1      0 2015-08-23 10:30:34 UTC+0000                                 
0x83e2f168 dwm.exe                1688   1176      3       77      1      0 2015-08-23 10:30:34 UTC+0000                                 
0x83e368e0 explorer.exe            816    676     22      756      1      0 2015-08-23 10:30:34 UTC+0000                                 
0x83e652a0 VBoxTray.exe           1816    816      8      114      1      0 2015-08-23 10:30:38 UTC+0000                                 
0x83e7b7f8 cmd.exe                 612    816      1       72      1      0 2015-08-23 10:30:44 UTC+0000                                 
0x83f84d90 svchost.exe            2424    608      9      227      0      0 2015-08-23 10:31:51 UTC+0000                                 
0x83f8e5d0 msdtc.exe              2620    608     11      165      0      0 2015-08-23 10:32:10 UTC+0000                                 
0x83faa020 xampp-control.e        2768    816      2      119      1      0 2015-08-23 10:32:17 UTC+0000                                 
0x83e4d7c0 httpd.exe              2796   2768      1       92      1      0 2015-08-23 10:32:21 UTC+0000                                 
0x83f9ec70 mysqld.exe             2804   2768     23      570      1      0 2015-08-23 10:32:23 UTC+0000                                 
0x83fd5200 FileZillaServer        2856   2768      5       35      1      0 2015-08-23 10:32:25 UTC+0000                                 
0x83fd77a8 httpd.exe              2880   2796    155      483      1      0 2015-08-23 10:32:26 UTC+0000                                 
0x8427c730 wuauclt.exe            2516   1024      2      140      1      0 2015-09-02 09:01:13 UTC+0000                                 
0x84259100 cmd.exe                1972    816      1       19      1      0 2015-09-02 09:28:30 UTC+0000                                 
0x8324cb70 TrustedInstalle        3848    608      5      110      0      0 2015-09-03 10:03:06 UTC+0000                                 
0x83f68300 FTK Imager.exe         2120    816     13      382      1      0 2015-09-03 10:03:37 UTC+0000
```

#### pstree
```
➜  binary-chal-4 vol.py -f memdump.mem --profile=Win2008SP1x86 pstree
Volatility Foundation Volatility Framework 2.5
Name                                                  Pid   PPid   Thds   Hnds Time
-------------------------------------------------- ------ ------ ------ ------ ----
 0x8392c9f8:wininit.exe                               532    472      3    102 2015-08-23 20:27:28 UTC+0000
. 0x8393bd90:services.exe                             608    532      7    238 2015-08-23 20:29:06 UTC+0000
.. 0x83a0eb88:svchost.exe                            1024    608     37    913 2015-08-23 10:29:53 UTC+0000
... 0x8427c730:wuauclt.exe                           2516   1024      2    140 2015-09-02 09:01:13 UTC+0000
... 0x83dca020:taskeng.exe                           1984   1024      5    135 2015-08-23 10:30:08 UTC+0000
... 0x83b2b020:taskeng.exe                           1444   1024     10    245 2015-08-23 10:30:34 UTC+0000
.. 0x8324cb70:TrustedInstalle                        3848    608      5    110 2015-09-03 10:03:06 UTC+0000
.. 0x83a1e020:SLsvc.exe                              1040    608      4     75 2015-08-23 10:29:53 UTC+0000
.. 0x83a365d0:svchost.exe                            1176    608     22    257 2015-08-23 10:29:56 UTC+0000
... 0x83e2f168:dwm.exe                               1688   1176      3     77 2015-08-23 10:30:34 UTC+0000
.. 0x839d4020:svchost.exe                             792    608      8    305 2015-08-23 20:29:45 UTC+0000
.. 0x839ded90:VBoxService.exe                         836    608      8    115 2015-08-23 20:29:46 UTC+0000
.. 0x83ae6c28:svchost.exe                            1568    608      3     73 2015-08-23 10:30:05 UTC+0000
.. 0x83a3e020:svchost.exe                            1204    608     18    518 2015-08-23 10:29:56 UTC+0000
.. 0x83a18020:svchost.exe                            1012    608      6    147 2015-08-23 10:29:53 UTC+0000
.. 0x83f8e5d0:msdtc.exe                              2620    608     11    165 2015-08-23 10:32:10 UTC+0000
.. 0x83acad90:spoolsv.exe                            1476    608     17    282 2015-08-23 10:30:04 UTC+0000
.. 0x838ed8c8:svchost.exe                            1352    608     18    271 2015-08-23 10:29:58 UTC+0000
.. 0x83a35630:svchost.exe                            1108    608     23    450 2015-08-23 10:29:54 UTC+0000
.. 0x83a06020:svchost.exe                             984    608     15    306 2015-08-23 10:29:52 UTC+0000
.. 0x83af2d90:svchost.exe                            1680    608      5     44 2015-08-23 10:30:05 UTC+0000
.. 0x83adfd90:svchost.exe                            1512    608      9    117 2015-08-23 10:30:04 UTC+0000
.. 0x83f84d90:svchost.exe                            2424    608      9    227 2015-08-23 10:31:51 UTC+0000
.. 0x83ae4af0:svchost.exe                            1556    608      5    123 2015-08-23 10:30:05 UTC+0000
.. 0x839f0020:svchost.exe                             892    608      7    262 2015-08-23 10:29:52 UTC+0000
. 0x83942020:lsass.exe                                620    532     19    628 2015-08-23 20:29:18 UTC+0000
. 0x83945d90:lsm.exe                                  628    532     10    166 2015-08-23 20:29:19 UTC+0000
 0x83912208:csrss.exe                                 484    472     11    400 2015-08-23 20:27:22 UTC+0000
 0x83e368e0:explorer.exe                              816    676     22    756 2015-08-23 10:30:34 UTC+0000
. 0x83e652a0:VBoxTray.exe                            1816    816      8    114 2015-08-23 10:30:38 UTC+0000
. 0x83f68300:FTK Imager.exe                          2120    816     13    382 2015-09-03 10:03:37 UTC+0000
. 0x83faa020:xampp-control.e                         2768    816      2    119 2015-08-23 10:32:17 UTC+0000
.. 0x83e4d7c0:httpd.exe                              2796   2768      1     92 2015-08-23 10:32:21 UTC+0000
... 0x83fd77a8:httpd.exe                             2880   2796    155    483 2015-08-23 10:32:26 UTC+0000
.. 0x83fd5200:FileZillaServer                        2856   2768      5     35 2015-08-23 10:32:25 UTC+0000
.. 0x83f9ec70:mysqld.exe                             2804   2768     23    570 2015-08-23 10:32:23 UTC+0000
. 0x83e7b7f8:cmd.exe                                  612    816      1     72 2015-08-23 10:30:44 UTC+0000
. 0x84259100:cmd.exe                                 1972    816      1     19 2015-09-02 09:28:30 UTC+0000
 0x82f57910:System                                      4      0    105    504 2015-08-23 20:27:20 UTC+0000
. 0x838382d0:smss.exe                                 420      4      4     28 2015-08-23 20:27:20 UTC+0000
 0x8392d530:csrss.exe                                 524    516      9    536 2015-08-23 20:27:28 UTC+0000
 0x8387ed90:winlogon.exe                              560    516      4    125 2015-08-23 20:27:28 UTC+0000
```
#### cmdscan
```
➜  binary-chal-4 vol.py -f memdump.mem --profile=Win2008SP1x86 cmdscan
Volatility Foundation Volatility Framework 2.5
**************************************************
CommandProcess: csrss.exe Pid: 524
CommandHistory: 0x5a24708 Application: cmd.exe Flags: Allocated, Reset
CommandCount: 17 LastAdded: 16 LastDisplayed: 16
FirstCommand: 0 CommandCountMax: 50
ProcessHandle: 0x2d8
Cmd #0 @ 0xe907c8: ipconfig
Cmd #1 @ 0xe91af8: cls
Cmd #2 @ 0xe91db0: ipconfig
Cmd #3 @ 0x5a34bd0: net user user1 user1 /add
Cmd #4 @ 0x5a34eb8: net user user1 root@psut /add
Cmd #5 @ 0x5a34c10: net user user1 Root@psut /add
Cmd #6 @ 0x5a24800: cls
Cmd #7 @ 0x5a34c58: net /?
Cmd #8 @ 0x5a34d88: net localgroup /?
Cmd #9 @ 0x5a34f48: net localgroup "Remote Desktop Users" user1 /add
Cmd #10 @ 0x5a34c70: net /?
Cmd #11 @ 0xe911b0: netsh /?
Cmd #12 @ 0xe907e8: netsh firewall /?
Cmd #13 @ 0xe91218: netsh firewall set service type = remotedesktop /?
Cmd #14 @ 0xe91288: netsh firewall set service type = remotedesktop enable
Cmd #15 @ 0xe91300: netsh firewall set service type=remotedesktop mode=enable
Cmd #16 @ 0xe91380: netsh firewall set service type=remotedesktop mode=enable scope=subnet
**************************************************
CommandProcess: csrss.exe Pid: 524
CommandHistory: 0x5a30950 Application: cmd.exe Flags: Allocated, Reset
CommandCount: 2 LastAdded: 1 LastDisplayed: 1
FirstCommand: 0 CommandCountMax: 50
ProcessHandle: 0x7ec
Cmd #0 @ 0xe91970: netsh fireall set service type=remotedesktop mode=enable scope=subnet
Cmd #1 @ 0x5a17b58: netsh firewall set service type=remotedesktop mode=enable scope=subnet
Cmd #38 @ 0x5a30bc8:                 
Cmd #39 @ 0x5a24890: et.exe
Cmd #48 @ 0x5a24890: et.exe
Cmd #49 @ 0xe91af8: cls
**************************************************
CommandProcess: csrss.exe Pid: 524
CommandHistory: 0x5a30ad0 Application: httpd.exe Flags: Allocated
CommandCount: 0 LastAdded: -1 LastDisplayed: -1
FirstCommand: 0 CommandCountMax: 50
ProcessHandle: 0x3bc
```
