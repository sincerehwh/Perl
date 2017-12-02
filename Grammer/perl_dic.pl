
#!usr/bin/perl


# 创建字典 - 方法一：
%data = ('google', 'google.com', 'github', 'github.com', 'taobao', 'taobao.com');
print "\$data{'google'} = $data{'google'}\n";
print "\$data{'github'} = $data{'github'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n\n";

%data1 = ('google'=>'google.com', 'github'=>'github.com', 'taobao'=>'taobao.com');
print "\$data{'google'} = $data1{'google'}\n";
print "\$data{'github'} = $data1{'github'}\n";
print "\$data{'taobao'} = $data1{'taobao'}\n\n";

%data2 = (-google=>'google.com', -github=>'github.com', -taobao=>'taobao.com');
print "\$data{'google'} = $data2{-google}\n";
print "\$data{'github'} = $data2{-github}\n";
print "\$data{'taobao'} = $data2{-taobao}\n\n";


# 创建字典 - 方法二：
%new_data = ();
$new_data{'google'} = 'google.com';
$new_data{'github'} = 'github.com';
$new_data{'taobao'} = 'taobao.com';
print "$new_data{'google'}";
print "$new_data{'github'}";
print "$new_data{'taobao'}";


# 访问哈希元素
$data{'google'};

# 访问哈希值
@array = @data{'taobao'};

# 读取哈希的 key 和 value : keys %HASH
@keys = keys %data;
print "$keys[0]\n";
print "$keys[1]\n";
print "$keys[2]\n\n";

@values = values %data;
print "$values[0]\n";
print "$values[1]\n";
print "$values[2]\n\n";

# 检查元素是否存在
if( exists($data{'facebook'} ) ){
   print "facebook 的网址为 $data{'facebook'} \n";
}else{
   print "facebook 键不存在\n\n";
}


# 获取哈希大小
@keys = keys %data;
$size = @keys;
print "哈希Keys大小: $size\n";
 
@values = values %data;
$size = @values;
print "哈希Values大小: $size\n\n";


# 哈希中添加或删除元素
$data{'facebook'} = 'facebook.com';
@keys = keys %data;
$size = @keys;
print "添加后,哈希Keys大小: $size\n";
 
# 删除哈希中的元素
delete $data{'google'};
@keys = keys %data;
$size = @keys;
print "删除后，哈希Keys大小: $size\n";




