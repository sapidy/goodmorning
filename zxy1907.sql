create table 图书1907(
  书名 char(10),
  类别 char(10),
  作者 char(30),
  销量 number(10)
);
insert into 图书1907 values('笑话','娱乐类','zxy',9000000);
insert into 图书1907 values('财富','金融类','zxy',9000000);
insert into 图书1907 values('知识','文学类','zxy',9000000);

--查询语句
select * from 图书1907;

--insert into 表名（列名1,列名2,...）values(值1,值2,...);
--向图书1907中添加一条不完整的数据
insert into 图书1907(书名,作者) values('希望','zxy');

--练习：创建表 购物车1907包含 商品名称 价格 数量 运费这四则
--向其中添加3条完整以及3条不完整的信息
select * from 购物车1907;
create table 购物车1907(
      商品名称 char(30),
      价格 number(8,2),
      数量 number(2),
      运费 number(3)
);
insert into 购物车1907 values('杯子',24.55,2,9);
insert into 购物车1907 values('方便面',9.9,10,8);
insert into 购物车1907 values('白酒',325,10,150);
insert into 购物车1907(商品名称,价格) values('鞋子',299);
insert into 购物车1907(商品名称,价格) values('饮料',5);
insert into 购物车1907(商品名称,价格) values('衣服',129);

--delete from 表名 where 条件；
delete from 购物车1907;
--带条件的删除
delete from 购物车1907 where 价格<100;
--删除购物车中不包邮的商品
delete from 购物车1907 where 运费>0;
--删除购物车1907中价格超过200的商品
delete from 购物车1907 where 价格>200;
--删除图书1907中销量低于1000的信息
delete from 图书1907 where 销量<1000;
--删除图书1907中所有数据
delete from 图书1907 ;

--update 表名 set 列名=值 where 条件;
--更新表职工中的数据，将所有职工的基本工资上调200元
select * from 职工;
update 职工 set 基本工资=基本工资+200;
--更新职工表，将奖金数额超过500的下调100元
update 职工 set 奖金=奖金-100 where 奖金>500;
--更新职工表，将实际到手低于6000的员工基本工资上调500
update 职工 set 基本工资=基本工资+500 where (基本工资+奖金-医疗保险-养老保险)<6000;

--练习：创建表 电影1907 包含电影名 导演 主演 票房这几列
create table 电影1907(
     电影名 char(30),
     导演 char(30),
     主演 char(30),
     票房 number(10)
);
--向表中插入4条完整的信息，2条不完整信息
insert into 电影1907 values('扫毒','sd','刘德华','2000000000');
insert into 电影1907 values('绿皮书','lps','lps','9000000');
insert into 电影1907 values('暗战','az','az','100000');
insert into 电影1907 values('蜘蛛侠','zxx','zxx','400000');
insert into 电影1907(电影名,票房) values('八佰','600000000');
insert into 电影1907(电影名,票房) values('摩天大厦','800000');
--删除表中票房低于50万的信息
delete from 电影1907 where 票房<500000;
--将所有电影的票房增加10万
update 电影1907 set 票房=票房+100000;
--将电影票房低于100万的增加30%
update 电影1907 set 票房=票房*1.3 where 票房<1000000;
--将所有电影的票房增加500万但不超过1000万
update 电影1907 set 票房=票房+5000000 ;
update 电影1907 set 票房=10000000 where 票房>=10000000;
select * from 电影1907;

--查询表 笔记本商品信息
select *from 笔记本商品信息;
--查询表中品牌以及库存这两列信息
select 品牌,库存 from 笔记本商品信息;
--查询表中品牌是神舟的商品名称以及价格--where
select 商品名称,价格 from 笔记本商品信息 where 品牌='神舟';
--查询品牌是联想 价格 低于4000的商品名称--and
select 商品名称 from 笔记本商品信息 where 品牌='联想' and 价格<4000;
--查询品牌是神舟或戴尔的商品信息--or
select * from 笔记本商品信息 where 品牌='神舟' or 品牌='戴尔';
--查询品牌不是Apple的商品信息--not
select * from 笔记本商品信息 where not 品牌='Apple';
--练习：查询品牌不是Apple和戴尔的商品信息（几种写法？）
select * from 笔记本商品信息 where not 品牌='Apple' and not 品牌='戴尔';
select * from 笔记本商品信息 where not (品牌='Apple' or 品牌='戴尔');
select * from 笔记本商品信息 where 品牌!='Apple' and 品牌!='戴尔';
select * from 笔记本商品信息 where not 品牌='Apple' and 品牌!='戴尔';
select * from 笔记本商品信息 where 品牌='联想' or 品牌='惠普' or 品牌='神舟';

--select 统计函数（列）as 别名 from 表名;
--查询表 火车票
select * from 火车票;
--查询表中无座价格最高是多少--max
select max(无座价格)as 无座最高价 from 火车票;
--查询表中一等座价格最低是多少--min
select min(一等座价格) as 一等座最低价 from 火车票;
--查询表中二等座数量一共还有多少--sum
select sum(二等座数量) as 二等座余量 from 火车票;
--查询表中一等座的平均价--avg
select avg(一等座价格) as 一等座平均价 from 火车票;
--查询表中共有多少个车次--count
select count(车次) as 总车次 from 火车票;
--查询表中无座价格最高的火车票信息
select * from 火车票 where 无座价格=(select max(无座价格) from 火车票);--子查询



select * from 学生;
select * from 老师;
select * from 课程;
select * from 成绩;
--单表子查询
--查询学生表中年龄比陈美大的学生信息
select * from 学生 where 学生年龄>(select 学生年龄 from 学生 where 学生姓名='陈美');
--查询学生分数高于平均分的学生编号
select 学生编号 from 成绩 where 学生分数>(select avg(学生分数) from 成绩);
--多表子查询（找共性）
--李四的平均成绩（共性：学生编号）
select avg(学生分数)as 李四的平均分 from 成绩 where 
学生编号=(select 学生编号 from 学生 where 学生姓名='李四');  
--查询刘阳老师所带的课程名
select 课程名 from 课程 where 
课程编号=(select 课程编号 from 老师 where 老师姓名='刘阳');
--查询Java Web这门课中最优秀的学生信息
--a.根据课程名查询课程编号---课程表
select 课程编号 from 课程 where 课程名='Java Web';
--b.根据课程编号查询最高分---成绩表
select max(学生分数) from 成绩 where 课程编号=
(select 课程编号 from 课程 where 课程名='Java Web');
--c.根据最高分查询学生编号---成绩表
select 学生编号 from 成绩 where 学生分数=(select max(学生分数) from 成绩 where 课程编号=
(select 课程编号 from 课程 where 课程名='Java Web'));
--d.根据学生编号查询学生信息--学生表
select * from 学生 where 学生编号=(select 学生编号 from 成绩 where 学生分数
=(select max(学生分数) from 成绩 where 课程编号
=(select 课程编号 from 课程 where 课程名='Java Web')));

select * from 学生 where 学生编号=(select 学生编号 from 成绩 where 学生分数
=(select max(学生分数) from 成绩 where 课程编号
=(select 课程编号 from 课程 where 课程名='Java Web')));