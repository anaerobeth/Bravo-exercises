s0 = 'abc'  #1
s1 = 'aabc' #2
s2 = 'aabbc' #4
s3 = 'abcbc' #3
s5 = 'bcd' #0
string = 'aacacabaaaaacccbccbcccababbccbcccbbbbbbacabbacaaaabbbabcabaccbaccabaaabccabacbabaaabaabcabacccabccaababcbacaaabaccaccacccbabbbbbaaacaaacacccaaabcbcabbacccccbaaacbbaccbbcaabcbabbaabbacbccccbaaccccbccacbaaabcaaacaabbcabcbabcbaccbaacbaaabcacccbbabccbbbcacabccccabbcaaaaacaabbaaccabbbccababbbcbabaabcbaabcacbaaaaccccbbcccacabbacccacaaaccbabaabbbcabbabac'
#pattern = /a+b+c/
#puts s3.scan(pattern)

array = [s0, s1, s2, s3, s5, string]
total_a = s3.count('a')
total_b = s3.count('b')
total_c = s3.count('c')
total_abc = total_a * total_b * total_c
puts total_abc

