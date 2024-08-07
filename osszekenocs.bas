1pp=peek(53265)
2pO53265,pp or64
3pO53281,11
4pO53282,1
5pO53283,15
6pO53284,6
7fOi=0to999
8ev=i+1025
9if ev>=2010tH25
10if ev>=1990tH26
11if ev>=1945tH27
12if ev>=1920tH28
13if ev=1919tH27
14if ev>=1868tH29
15if 1848=ev or1849=ev tH26
16l=11:c=1
17if ev-int(ev/100)*100=1tH30 
18if ev-int(ev/11)*11=0tH31
19if1867<ev or1848=ev or1849=ev tH32
20pO1024+i,l
21pO55296+i,c
22nE
23pO198,0:wA198,1:pO53265,pp:pO53281,6
24? chr$(147):eN
25l=20:c=5:gO17
26l=43:c=8:gO17
27l=42:c=2:gO17
28l=8:c=12:gO17
29l=1:c=14:gO17
30l=192 or l:gO20
31l=128 or l:gO20
32l=64 or l:gO20