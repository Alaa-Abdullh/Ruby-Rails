=begin
===============run ruby =====
1)in terminal 
--- pry 

2) in file 
 --- ./filename.rb
 
===============commint=======
1) # (single commint)
2) =begin =end (multi commint)

============Numbers(arth)======
// 1-1 = 0 int 
// 1+1 = 2 int 
// 4*2 =8  int 
// 3/2=1   int 
// 3.0/2=1.5 float 
// 3**2 = 9 int 

============increment&decrement===========
x=1
x+=1 --> in ruby inc only //output (2)
x++ --> 1 -- > 2 but x still 1 

=========note=======
1_000_000 == 100000
 # type any thing use .class
 ex)
 'data'.class  //string
  1.class   //int 
  false.class //falsyclass
  nil.class   //nil.class 

#  methods return array of symbol
1.methods
"string".method


# 
1.+(1) == 1+1 = 2
==========ineql&eql=========

1==1  //true 
1==2 //false

1!=1 //false 

1===1 //true

1.eql? 1 //true
1.equal? 1 //true

=========comparison========
1<10  //true 
1>10  //false 

2<=2 //true 
2>=2 //true

# compile compa (sort)
1<=>10  //-1 (small)
10<=>1 //1(big)
1<=>1 //0 (eql)

=======falsy value=====
1)nil 
2)false 

========truthy value=======
1)0
2)""
3)[]
all true without (nil ,false)

=========strings============
1) "hello"
2) 'hello' 

# string interpolasion 
placeholder ="this string"
--> "add the #{placeholder}"  // add the this string
--> 'add the #{placeholder}'  // add the #{placeholder}

- "string".[](0) == "s"
- "string".[0] == "s"

# conversion num with string 
- 'hello'+3.to_s //hello3
- "hello #{3}"  //hello 3

=========concate=========

1) 'hello'+'world'          //hello world
2) 'hello'.concate('world') //hello world
3) 'hello' << ('world')     //hello world

=======function convert====
1)to_s == to strinf
2)to_sym == to symbol

=============function======
# print use :
---- 1) puts --> string +new line (value nil)
     puts "hello" == puts("hello!")              // outbut hello
                                                       nil

---- 2) print -->string + same line (value nil) //hello nil
      
---- 3) p  --> print string only                 //(hello)


# concat 
     a="hello"
     a.concate(33) // hello 
     a[0] //h
     a[0.3]//hel
     a[0..3] /hell(include 3)
     a[0...3] //hel (not include 3)
     a.capitalize //Hello  ومش هيحصل تغhange يير ف a هيغير اول حرف بس 
     a.capitalize! //Hello ==> a changed
  
---- "hello".include?("lo") // true  ? used (if return true or false) pass by ref 
# ruby !
! by referane 
! by value 


# raise !

---- User.find_by --> not found (nil)
     User.find_by! --> not found (error)

---- "hello".index('e') == 1
    
---- "hello".insert(0,'x')== xhello



ri string.concate ==> doc concate


# symbol
 :pending 
 :pending.class == symbol

  :pending.yo_s == ""
  "pending".to_sym ==:pending 


#ranges
(1..10).class == range 
(1..10).to_a  == [1...10]
(1...10).to_a ==[1..9]
digit=-1..8 ==-1..8
digit.to_a == [-1..8]
digit.include?(10) ==false
digit.min == -1
digit.max==8
digit.reject {|ele| ele<5}  == [5,6,7,8]   # {|ele| ele<5}  call codeblock

# regex
/[0-9]/.class == regexp
/Ruby/.match("ruby") == #<match
m1.to_s == "ruby"

m2 ="the ruby" =~/Ruby/ == first index ele match == 5

# nill 
nil.class --> object nilclass 
nil.to_a == []
nil.to_s == ""


# type conversion & kernal methode 

==================variable==========================

1) local
x=25 == 25
x=y=10 == x=10,y=10
x=5 y=3 ==> x , y=y ,x [3,5]
snake_case=true (use in ruby)
_26

2)global $
$ded
$_
$cudd

3)instance var @ context window 
@name
@_

4) class @@ 
@@name

5) constance &class name 
NameClass

==================method========================

1) def say_hello(name,age)
    puts "hello,#{name} and age #{age}"
end 


say_hello("ali")
or 
say_hello "Ahmed",30

.......................

2) def say_hello(name:,age:)
    puts "hello,#{name} and age #{age}"
end 

say_hello(name:"ali")
say_hello name:"Ahmed",age:30 //must 

.............................
3)
def say_hello(name:,age=20)
    puts "hello,#{name} and age #{age}"
end 
say_hello(name:"ali")
say_hello name:"Ahmed",age:30


.............

4)
x=20
def isGood(degree)
    if degree>=20
        return true 
    end 
    return false 
end 

isGood x    // no rvale 
puts isGood //true 



def isGood(degree)
    if degree>=20
        return true 
    end 
     false  // end line not have return
end 

isGood x    
puts isGood //false 


def isGood(degree)
    if degree>=20
        puts true 
    else 
                puts false 
    end 
     false  // end line not have return
end 

isGood x    
puts isGood //false 

==========alias============== 

def oldmtd
    "old"
end 

alias same_old oldmtd

puts same_old //old
puts oldmtd   //old

def oldmtd
    "old improved method"
end 

puts same_old //old 
puts oldmtd   //old improved method


method save as a symbole
def  oldmtd
:oldmtd

by ref !


a=alaa
a.upcase ==ALAA
a == Alaa 
===========condition ================

1)if 

# && , and , || , or 
if (true || false) && false 
elseif  false 
else 

-- def isGood(degree)
     return true if degree>=20
     false  
end 

puts isGood 23 //true 
puts isGood 14 //false  

-- x =5 
unless == if not $ to change if -->  && to || + ! all data
puts 5 if x==5   
puts 'not 10'   unless x==5  //not 10
puts 'not 10'   if x !=5


=============flow contr=========

condition ? true :false 

age = 15
puts (13...19).include?(age)? "teenage" : "notteen"


# case 
year =2000
def isLeep?(year)
    # leap=case
    # when year %400 ==0 then true 
    # when year % 100 ==0 then false 
    # else year % 4 ==0 
    # end 
    leap
end

puts isLeep?(2005)


==========loops===============
1)while 
weight =2

while weight <100
# code 
end 

square =2
square =square*square while square <1000
puts square 
end 

2)for  codeblock {},do end
for a in 1..5 do 
# code 
end 

3)loop
loop do 
    # code 
    break if condition 

end 

4)times do 
    puts "data"
end 


=============array=============
# int
array =[1,2,3]
# all type
array =["all",2,true,:symb]
# string
1)array =["foo","boo"]
2)%w(foo boo) ["foo","boo"]
# symbol
1)%i(foo boo)  //[:foo ,:boo]

arr.length == arr.size
arr.last 
arr.first 

# append  arr
1)arr.append(6)
2)arr << 7
3)arr.push(8)

# sort arr
new_arr=[45,23,1,55,90]
new_arr.sort ---> [1,23,45,55,90]
new_arr.sort {|a,b| a<=>b}
new_arr.sort {|a,b| b<=>a} [90,55,...1]


a=1,2,3 == [1,2,3]

a==[1,2,3] // by value (true)
a==[1,2,30] //by value (false)


arr.method (know method in arr)

=========hash obj =======
1) 
hash ={'color' => 'green','number' => 5}
   hash['color']   //green
   hash['dadd']   //nil
   hash.key?"color" //true 

2) use symbol
hash ={:color => 'green',:number => 5}
   hash[:color]     // green
   hash['color']    //nil

3)
hash ={color:'green',number:5} //didnt use space --> color : 'green'  //error
   hash[:color]     // green
   hash['color']    //nil

========code block===========
x=10
5.times do |x|
    puts "x inside the code #{x}" // 0 1 2 3 4 (x founded)
end 
puts "x outside the code #{x}"  10

x=10
5.times do |y|
    puts "x inside the code #{x}" // 10 10 10 10 10 
end 
puts "x outside the code #{x}"  10

==========array of string========
arr=['a','b','c']

--print all ele in arr
1) arr.each {|arr| puts arr} // a b c
2) for ele in arr do 
    puts ele
end 

-- print ele and index 
1) arr.each_with_index{|arr,index| puts "ele is #{arr} and index is #{index}"}   // ele is a and index is 0


========exception handling ==========

begin 
    # code migth raise an error 
    raise NoMemoryError,"You ran out of memory" if false
    raise RuntimeError,"You ran out of memory" if true

    rescue  NoMemoryError => message
     puts "no memory raise & #{message}"

    rescue  RuntimeError => message
     puts " RuntimeError raise & #{message}"
    else   
        puts "this code will run if no error "
    ensure(finally)
     puts "always run"
end


==========files============ 
1) read mode 
File.open('./user.txt','r') do |f1|
    while line=f1.gets
        puts line 
    end 

2) write mode 
File.open('./user1.txt','w') do |f1|
        f1.puts "welcome" 
end 

*****Notes****
-- laod (path)
-- require (namefile)      // import one time 
-- require_relative (path) // import exist file 

========class======

class Person 
    # initialize (constractor)
    def initialize(name)
        @name=name // instance var 
        @age=age
        @job=job
    end 
    def chile
        puts "omar"
    end 
end
p1=Person.new("ali")
 p1.chile   //omar
puts p1.chile.name //error

========inhertance class < ======
# atter_accssor (getter,setter)
# atter_reader (gett`er)
# atter_writer (setter)


class Person 
    atter_accssor:name,:age,:job
    def initialize(name,age,job)
        @name=name
        @age=age
        @job=job
    end 
end

class Student<Person //class inistance
    # variable in class 
    @@student_no=0
    def initialize(name,age,job,branch)
        super(name,age,job)
        @branch=branch
        @@student_no+=1

    end

    def self.number_of_student  //class method 
        @@student_no

    end 

end 


s1=Student.new "ahmed",23,"student","men"
puts s1.name //ahmed 
s2=Student.new "ahmed",23,"student","men"
puts s2.number_of_student //ahmed 


.............

class OR
    def mtd
        puts "f1"
    end

    def mtd
        puts "f2"
    end

end 

OR.new.mtd //f2

.....override....
class A 
    def a 
        puts "a"
    end
end 

class  B < A 
    def a 
        puts "in b "
    end
end 

B.new.a   //in b


....accsess mod....

1)
class Parent 

    def m1
        puts "m1"
    end
    protected

    def m2
        puts "m2"
    end
    
    private 
    def m3
        puts "m3"
    end


end

p=Parent.new
p.m1 //m1
p.m2 //error
p.m3 //error 


2)
class Parent 

    def m1
        puts "m1"
    end
    protected

    def m2
        puts "m2"
    end
    
    private 
    def m3
        puts "m3"
    end


end

class Child < Parent 
    def m4
       m1
    end

    end 
p=Parent.new
p.m1 //m1
p.m2 //error
p.m3 //error 

c=Child.new
c.m4 //m1

private runn? //searrch

===========module=> function & class=========
module Rails
    class Application 
    end 
    def func 

    end

end 

app = Rails::Application.new

=========# mixins (include module inside class)
module Greeting
   
    def hello 
puts "hello"
    end

     class Person
     include  Greeting 
    end 


end 

Person.new.hello  //hello
=end

