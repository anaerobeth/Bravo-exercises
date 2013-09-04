 string = 'aacacabaaaaacccbccbcccababbccbcccbbbbbbacabbacaaaabbbabcabaccbaccabaaabccabacbabaaabaabcabacccabccaababcbacaaabaccaccacccbabbbbbaaacaaacacccaaabcbcabbacccccbaaacbbaccbbcaabcbabbaabbacbccccbaaccccbccacbaaabcaaacaabbcabcbabcbaccbaacbaaabcacccbbabccbbbcacabccccabbcaaaaacaabbaaccabbbccababbbcbabaabcbaabcacbaaaaccccbbcccacabbacccacaaaccbabaabbbcabbabac'
s0 = 'abc'  #1
s1 = 'aabc' #2
s2 = 'aabbc' #4
s3 = 'abcbc' #3
s4 = 'abcabc' #4
s5 = 'bcd' #0

strings = [s0, s1, s2, s3, s4, s5]

def build_indexes(string)
  a_indexes = []
  b_indexes = []
  c_indexes = []
  count = 0
  total = 0
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
    first_c = (c_indexes.detect { |c| c > first_b}).to_i
    puts "#{a}, #{first_b}, #{first_c}"
    total +=  b_count.size * c_count.size
  end
    puts total
end

strings.each do |s|
  puts s
  build_indexes(s)
end
