class Golf
  #theirs
  def self.hole1(a)
    a.reduce(:*)
  end

  def self.hole3(a)
    (1..a).reduce(:*)
  end

  def self.hole5(a)
    (1..a.count).map{|n| a.each_cons(n).to_a}.flatten(1)
  end

  def self.hole9(a)
    b=[]
    a.split.each{|c|c.length<=10?b<<c : b<<c[0..3]+"..."+c[-3..-1]}
    b.join(" ")
  end

  #ours
  def self.hole2
    (1..26).map{|q|(q+96).chr}
  end

  def self.hole4(a)
    a.map { |e|
      if e.match(/^man/)
        "hat(#{e})"
      elsif e.match(/^dog/)
        e.split(')')[0]+"(bone))"
      elsif e.match(/^cat/)
        e.gsub('cat','dead')
      end
    }
  end

  def self.hole6(a)
    (1..a).map { |e|
      s=[e%3==0?'fizz':'',e%5==0?'buzz':''].join
      s==''?e:s
    }
  end

  def self.hole8(i)
    a=[1,1]
    (1..i-2).each{|e| a.push(a[-1]+a[-2])}
    a
  end

  def self.hole7(a)
    ra = []
    f=1
    a[0..-1].each { |e|
      f||=e
      if f + 1 != e
        ra << [f,e].join('-')
        f=nil
      end
    }
    ra
  end
end
