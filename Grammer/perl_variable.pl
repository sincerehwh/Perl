#!usr/bin/perl

=pod
  标量 $ 开始， 如$a $b 是两个标量。
  数组 @ 开始 ， 如 @a @b 是两个数组。
  哈希 % 开始 ， %a %b 是两个哈希。
=cut


# --------上下文--------

# 序号	上下文及描述
# 1	标量 − 赋值给一个标量变量，在标量上下文的右侧计算

# 2	列表 − 赋值给一个数组或哈希，在列表上下文的右侧计算。

# 3	布尔 − 布尔上下文是一个简单的表达式计算，查看是否为 true 或 false。

# 4	Void − 这种上下文不需要关系返回什么值，一般不需要返回值。

# 5	插值 −  这种上下文只发生在引号内。

# 这几个我都没看懂。。。。。。

$number = 1;
@array = (1,2,3,4);
%dic = ("1",2,"3",4,"5",6,"7",8);

$new_number = $number; #拷贝一份
$new_number = 100; #修改值
print "number = $number , new_number = $new_number\n"; # 说明拷贝了一份全新的数据

@new_array = @array;
@new_array = ("N","E","W","S");
print "array[0] = $array[0] ,new_array[0] = $new_array[0]\n";

%new_dic = %dic;
%new_dic = ("1",111111,"2",22222222);
print " dic{\"1\"} = $dic{'1'} , new_dic{\"1\"} = $new_dic{\"1\"}\n";

# ??? 不同类型变量转化 ？？？

$array_to_var = @array;
print "\$array_to_var = $array_to_var,数组转标量变成了数组元素个数！\n";

@dic_to_array = %dic;
print "\@dic_to_array = @dic_to_array, 字典转数组变成了键值对的序列，！！无序的！！\n";



# -------- 运算 --------

#拼接字符串
$str = "PPP"."EEE"."RRR"."LLL";
print "\n\nstr+str+:$str\n";

#数值计算
$numer = 10+20+30;
print "number: $number\n";












