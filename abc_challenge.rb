s0 = 'abc'  #1
s1 = 'aabc' #2
s2 = 'aabbc' #4
s3 = 'abcbc' #3
s4 = 'abcabc' #4
s5 = 'bcd' #0
string = 'aacacabaaaaacccbccbcccababbccbcccbbbbbbacabbacaaaabbbabcabaccbaccabaaabccabacbabaaabaabcabacccabccaababcbacaaabaccaccacccbabbbbbaaacaaacacccaaabcbcabbacccccbaaacbbaccbbcaabcbabbaabbacbccccbaaccccbccacbaaabcaaacaabbcabcbabcbaccbaacbaaabcacccbbabccbbbcacabccccabbcaaaaacaabbaaccabbbccababbbcbabaabcbaabcacbaaaaccccbbcccacabbacccacaaaccbabaabbbcabbabac'
#pattern = /a+b+c/
#puts s3.scan(pattern)

array = [s0, s1, s2, s3, s5, string]

# make an array of letter indexes
puts "Sample string: 'abcabc'"
a_indexes = [0, 3]
b_indexes = [1, 4]
c_indexes = [2, 5]


def build_abc(a_indexes, b_indexes, c_indexes)
  count = 0
  a_indexes.each do |a|
    b_indexes.each do |b|
      c_indexes.each do |c|
        if a < b && b < c
          puts "Valid abc found: #{a}, #{b}, #{c}"
          count += 1
        end
      end
    end
  end
  return count
end
puts build_abc(a_indexes, b_indexes, c_indexes)

def build_indexes(string,letter)


