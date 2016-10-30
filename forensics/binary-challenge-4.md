# Binary Zone Digital Forensics Challenge 4

Challenge link: http://www.binary-zone.com/2015/09/16/digital-forensic-challenge-4/

## Writeup

### image

### memdump.mem
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

