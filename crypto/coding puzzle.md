# Coding Puzzle

We begin whith this encrypted text: 

MTcxMWJmOTU5YTBjZGQwNzMwYTNhOWU1ZWQwYzY3YzJ9TTI1MjcwMVBNME01ME0wUVFQMjBMODczNzhONU84UTR7TkROZTU3ZTYzNmE5Nzk2NDUzNjJjOTZlMzJlZWFjNTg5NTE

while there's no padding a the end, it does look like some base64 encoding, so we tried to decrypt it using a base64 decoder, and obtained this text:

1711bf959a0cdd0730a3a9e5ed0c67c2}M252701PM0M50M0QQP20L87378N5O8Q4{NDNe57e636a979645362c96e32eeac589NTE

while this does not look like an advancement at firse, we already see some bracket, and the NDN look like it could be a shifted CSC, so we encoded it again with a Caesar cypher.

With an encoding a 15 (or decoding of 11) we obtain: 

1711qu959p0rss0730p3p9t5ts0r67r2}B252701EB0B50B0FFE20A87378C5D8F4{CSCt57t636p979645362r96t32ttpr58951

Now, to put the bracket in the right direction, we onl have to reverse this string: 

15985rptt23t69r263546979p636t75tCSC{4F8D5C87378A02EFF0B05B0BE107252B}2r76r0st5t9p3p0370ssr0p959uq1171

while at first it looked like we still has something to do, the flag is indeed CSC{4F8D5C87378A02EFF0B05B0BE107252B}

note: this challenge was realised using the online tool https://cryptii.com/