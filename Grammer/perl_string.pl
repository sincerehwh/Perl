#!usr/bin/perl

# 今天开始学习Perl,目标是：一下午掌握基本语法

=pod
	上面是单行注视，这个是多行注释

=cut

# 字符串
$str = "This is a string";
print "$str --> 这个是单行的字符串\n";

$lines = <<"PPP";
这个是一个多行的字符串
行行重行行，
与君生别离，
相去万余里，
各在天一涯。
PPP
print "$lines -->这个是多行的字符串\n";

$line2 = "
这个是一个多行的字符串
行行重行行，
与君生别离，
相去万余里，
各在天一涯。"


=pod 转意符号

\\	反斜线
\'	单引号
\"	双引号
\a	系统响铃
\b	退格
\f	换页符
\n	换行
\r	回车
\t	水平制表符
\v	垂直制表符
\0nn	创建八进制格式的数字
\xnn	创建十六进制格式的数字
\cX	控制字符，x可以是任何字符
\u	强制下一个字符为大写
\l	强制下一个字符为小写
\U	强制将所有字符转换为大写
\L	强制将所有的字符转换为小写
\Q	将到\E为止的非单词（non-word）字符加上反斜线
\E	结束\L、\U、\Q

=cut

print "😊转意符号是：\"\\\"可以用来转意哟";
print '😊转意符号是：\"\\\"在单引号的行无法起作用\n';

# 换行 \n 位于双引号内，有效
$str = "\nwww.runoob.com";
print "$str\n";
 
# 换行 \n 位于单引号内，无效
$str = '\nwww.runoob.com';
print "$str\n";
 
# \u 
$str = "\urunoob";
print "$str\n";
 
# 所有的字母都会转换为大写
$str = "\Urunoob";
print "$str\n";
 
# 指定部分会转换为大写\U
$str = "Welcome to \Urunoob\E.com!"; 
print "$str\n";
 
# 将到\E为止的非单词（non-word）字符加上反斜线
$str = "\QWelcome to runoob's family";
print "$str\n";

