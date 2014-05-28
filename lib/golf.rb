class Golf
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

  def self.hole2
    (1..26).map{|q|(q+96).chr}
  end

  def self.hole4(a)
    a.map{|e|e.match(/^man/)?"hat(#{e})":(e.match(/^dog/)?e.split(')')[0]+"(bone))":(e.gsub('cat','dead')if e.match(/^cat/)))}
  end

  def self.hole6(a)
    (1..a).map{|e|
      s=[e%3==0?'fizz':'',e%5==0?'buzz':''].join
      s==''?e:s
    }
  end

  def self.hole8(i)
    a=[1,1]
    (1..i-2).each{|e|a.push(a[-1]+a[-2])}
    a
  end

  def self.hole7(a)
    r=[]
    i=0
    f=a[0]
    while i<a.size
      if a[i] + 1 != a[i+1]
        r << (f  == a[i] ? f.to_s : [f,a[i]].join('-'))
        f = a[i+1]
      end
      i+=1
    end
    r
  end
end
