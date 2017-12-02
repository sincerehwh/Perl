
#!usr/bin/perl

# --------数组--------

@array_int = (1,2,3,4,5);

print "array_int[0] = @array_int[0] \n";

@array_str = ("C","Objective-C","R","Python","Swift","Java","Perl");

print "array_str[0] = @array_str[0] \n";


#
@hits = (25, 30, 40);             
@names = ("google", "runoob", "taobao");
 
print "\$hits[0] = $hits[0]\n";
print "\$hits[1] = $hits[1]\n";
print "\$hits[2] = $hits[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";


@array = (1, 2, 'Hello');
@array = qw/这是 一个 数组/;

# 它返回字符串列表，数组元素以空格分隔
@sites = qw/google taobao runoob/; 
print "$sites[0]\n";
print "$sites[1]\n";
print "$sites[2]\n";
print "$sites[-1]\n";    # 负数，反向读取

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);
 
print "\n@var_10\n";   # 输出 1 到 10
print "@var_20\n";   # 输出 10 到 20
print "@var_abc\n";  # 输出 a 到 z


=pod
   数组大小
=cut

@array = (1,2,3);
$array[50] = 4;
 
$size = @array;
$max_index = $#array; # 数组的物理大小
 
print "\n数组大小:  $size\n";
print "最大索引: $max_index\n\n";

# 创建一个简单是数组
@sites = ("google","runoob","taobao");
print "\@sites  = @sites\n\n";
 
# 在数组结尾添加一个元素
push(@sites, "baidu");
print "数组结尾添加一个元素 push:\@sites  = @sites\n\n";
 
# 在数组开头添加一个元素
unshift(@sites, "weibo");
print "数组开头添加一个元素 unshift:\@sites  = @sites\n\n";
 
# 删除数组末尾的元素
pop(@sites);
print "删除数组末尾的元素 pop:\@sites  = @sites\n\n";
 
# 移除数组开头的元素
shift(@sites);
print "移除数组开头的元素 shift:\@sites  = @sites\n\n";

=pod
   切割数组
=cut

# 间隔索引
@sites = qw/google taobao runoob weibo qq facebook 网易/; 
@sites2 = @sites[3,4,5];
print "@sites2\n";


# 连续索引
@sites = qw/google taobao runoob weibo qq facebook 网易/;
@sites2 = @sites[3..5];
print "@sites2\n";

# 替换数组元素
# splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
# @ARRAY：要替换的数组。
# OFFSET：起始位置。
# LENGTH：替换的元素个数。
# LIST：替换元素列表。

@nums = (1..20);
print "替换前 - @nums\n";
 
splice(@nums, 5, 5, 21..25); 
print "替换后 - @nums\n\n";

# split [ PATTERN [ , EXPR [ , LIMIT ] ] ]
# 参数说明：
# PATTERN：分隔符，默认为空格。
# EXPR：指定字符串数。
# LIMIT：如果指定该参数，则返回该数组的元素个数。

# 定义字符串
$var_test = "runoob";
$var_string = "www-runoob-com";
$var_names = "google,taobao,runoob,weibo";
 
# 字符串转为数组
@test = split('', $var_test);
@string = split('-', $var_string);
@names  = split(',', $var_names);
 
print "$test[3]\n";  # 输出 o
print "$string[2]\n";  # 输出 com
print "$names[3]\n";   # 输出 weibo


# 将数组转换为字符串
# join EXPR, LIST
# 参数说明：
# EXPR：连接符。
# LIST：列表或数组。

# 定义字符串
$var_string = "www-runoob-com";
$var_names = "google,taobao,runoob,weibo";
# 字符串转为数组
@string = split('-', $var_string);
@names  = split(',', $var_names);
# 数组转为字符串
$string1 = join( '-', @string );
$string2 = join( ',', @names );
 
print "$string1\n";
print "$string2\n";


# 数组排序
# sort [ SUBROUTINE ] LIST
# 参数说明：
# SUBROUTINE：指定规则。
# LIST：列表或数组。

# 定义数组
@sites = qw(google taobao runoob facebook);
print "排序前: @sites\n";
# 对数组进行排序
@sites = sort(@sites);
print "排序前: @sites\n";


# 特殊变量： $[
# 特殊变量 $[ 表示数组的第一索引值，一般都为 0 ，如果我们将 $[ 设置为 1，则数组的第一个索引值即为 1，第二个为 2，以此类推
# 定义数组
@sites = qw(google taobao runoob facebook);
print "网站: @sites\n";
# 设置数组的第一个索引为 1
$[ = 1;
print "\@sites[1]: $sites[1]\n";
print "\@sites[2]: $sites[2]\n\n";


# 合并数组
# 数组的元素是以逗号来分割，我们也可以使用逗号来合并数组

@numbers = (1,3,(4,5,6));
print "numbers = @numbers\n";
@odd = (1,3,5);
@even = (2, 4, 6);
@numbers = (@odd, @even);
print "numbers = @numbers\n";


# 从列表中选择元素
$var = (5,4,3,2,1)[4];
print "var 的值为 = $var\n";

@list = (5,4,3,2,1)[1..2];
print "list 的值 = @list\n";



