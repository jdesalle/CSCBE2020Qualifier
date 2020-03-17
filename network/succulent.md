# Succulent security

The first think which came in mind was to do a fuzzing to see if something was hidden. To do this **dirb**.

Once we've launched dirb whit the common.txt dictionnary, it found a **.git/HEAD** file. We can thus conclude that there is a git folders on the site.

Unfortunately we cannot use **wget** to get the directory, we then use [gitbuster](https://github.com/internetwache/GitTools/tree/master/Dumper).

Once the repository was on our computer, we started looking at the git log. We found a old commit called "improved security", and when we check we see that this commit 
contains credentials to connect to a [firebase](https://firebase.google.com/) datase.

The using those credential and this [script](Succulent/firebase.py) we were able to dump the entire database and find the flag.