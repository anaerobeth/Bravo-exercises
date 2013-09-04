# s0 = 'abc'  #1
# s1 = 'aabc' #2
# s2 = 'aabbc' #4
# s3 = 'abcbc' #3
# s4 = 'abcabc' #4
# s5 = 'bcd' #0
 string = 'aacacabaaaaacccbccbcccababbccbcccbbbbbbacabbacaaaabbbabcabaccbaccabaaabccabacbabaaabaabcabacccabccaababcbacaaabaccaccacccbabbbbbaaacaaacacccaaabcbcabbacccccbaaacbbaccbbcaabcbabbaabbacbccccbaaccccbccacbaaabcaaacaabbcabcbabcbaccbaacbaaabcacccbbabccbbbcacabccccabbcaaaaacaabbaaccabbbccababbbcbabaabcbaabcacbaaaaccccbbcccacabbacccacaaaccbabaabbbcabbabac'
#pattern = /a+b+c/
#puts s3.scan(pattern)



# array = [s0, s1, s2, s3, s5, string]

# # make an array of letter indexes
# puts "Sample string: 'abcabc'"
# a_indexes = [0, 3]
# b_indexes = [1, 4]
# c_indexes = [2, 5]


def build_abc(a_indexes, b_indexes, c_indexes)
  count = 0
  a_indexes.each do |a|
    b_indexes.each do |b|
      c_indexes.each do |c|
        if a < b && b < c
          #puts "Valid abc found: #{a}, #{b}, #{c}"
          count += 1
        end
      end
    end
  end
  return count
end
# puts build_abc(a_indexes, b_indexes, c_indexes)

# string = ''

# File.open('abc_challenge.txt', 'r') do |f|
#   string << f.read
# end

def build_indexes(string)
  a_indexes = []
  b_indexes = []
  c_indexes = []
  count = 0
  first_b = 0
  string.each_char do |letter|
    case
      when letter == 'a'
        a_indexes << count
      when letter == 'b'
        b_indexes << count
      when letter == 'c'
        c_indexes << count
    end
    count += 1
  end
  a_indexes.each do |a|
    b_count = b_indexes.find_all { |b| b > a}
    first_b = (b_indexes.detect { |b| b > a}).to_i
    c_count = c_indexes.find_all { |c| c > first_b}
    puts b_count.size
  end



  #puts c_indexes.inspect
  #puts build_abc(a_indexes, b_indexes, c_indexes)
end
build_indexes(string)
#print string