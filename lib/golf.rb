class Golf
  def self.hole1(a)
    a.reduce(:*)
  end

  def self.hole3(a)
    (1..a).reduce(:*)
  end

  def self.hole5(array)
    result = []

    array.length.times do |n|
      array.each_with_index do |num, i|
        result += [array[i..i+(n)]]
      end  
    end

    result.uniq

  end

  def self.hole9(a)
    b=[]
    a.split.each{|c|c.length<=10?b<<c : b<<c[0..3]+"..."+c[-3..-1]}
    b.join(" ")
  end
end
