# Murder DNS

For this challenge we had 2 information:
1. a pcap file
2. we have to use a given DNS

We started looking at the pcap file and rapidly found a request to an interesting domain **www.i-killed-black.be**. 

We can then use the given DNS to query info with dig about the domain found. We give 1 more infomation, the authority for this domain is **inthelivingroom.i-killed-black**.
There is also a TXT field which told us 
    
   > Congratulation you found the living room
   > in cluedo you still have to found who and how

Then we will ask to the autoritative server a zone transfer. We got a lot of response,but only 3 where interesting:
1. **murder.i-killed-black.be** with a TXT field 
    
     > yes it's me but you still have to found who i am
2. **how.i-killed-black.be** with a TXT field

    > I hit him with-a-candlestick. Now, who am I?
3. **whois.i-killed-black.be**

We rapidely notice that **whois.i-killed-black.be** is a new DNS but he always return an empty response to a query.
We will try to do a nmap on this server.
Bingo the 43 port is open with a **whois** service running. 
We finally only have to query this port to know whois **whois.i-killed-black** which told us it's Colonel Moutarde but we still have to know how.

We the ask whois **with-a-candlestick.i-killed-black.be** and find the flag.