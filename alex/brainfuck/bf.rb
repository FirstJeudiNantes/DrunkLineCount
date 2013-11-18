#The MIT License (MIT)
#
#Copyright (c) 2001, Stephen Sykes
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.

class Bf
  def initialize
    @a = [0] * 30000
    @b = []
    @p = 0
    @x = 0
  end

  def r
    @p += 1
  end

  def l
    @p -= 1
  end

  def i
    @a[@p] = (@a[@p] + 1) % 256
  end

  def d
    @a[@p] = (@a[@p] - 1) % 256
  end

  def o
    if @a[@p] == -1
      print 255.chr
    else
      print @a[@p].chr
    end
  end

  def n
    @a[@p] = $stdin.getc || -1
  end

  def j
    @x += 1
    if !$j
      if @a[@p] == 0
        $j = @x
      else
        @b[@x] = $i
      end
    end
  end

  def e
    if $j || @a[@p] == 0
      $j = false if $j == @x
      @x -= 1
    else
      $i = @b[@x]
    end
  end

  def b
    print @p.to_s + " - "
    #10.times {|a| print @a[a].to_s + " "}
    23.times {|a| STDERR.print "o" if a==@p; STDERR.print @a[a].to_s + " "}
    STDERR.print "\n"
  end
end

b = Bf.new
$i = 0
p = $<.readlines.join.tr('^><+\-.,[]#','').tr('><+\-.,[]#', 'rlidonjeb')
while $i < p.size
  c = p[$i].chr
  if !$j || c == "j" || c == "e"
    b.send(c)
  end
  $i += 1
end
