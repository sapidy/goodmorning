create table ͼ��1907(
  ���� char(10),
  ��� char(10),
  ���� char(30),
  ���� number(10)
);
insert into ͼ��1907 values('Ц��','������','zxy',9000000);
insert into ͼ��1907 values('�Ƹ�','������','zxy',9000000);
insert into ͼ��1907 values('֪ʶ','��ѧ��','zxy',9000000);

--��ѯ���
select * from ͼ��1907;

--insert into ����������1,����2,...��values(ֵ1,ֵ2,...);
--��ͼ��1907�����һ��������������
insert into ͼ��1907(����,����) values('ϣ��','zxy');

--��ϰ�������� ���ﳵ1907���� ��Ʒ���� �۸� ���� �˷�������
--���������3�������Լ�3������������Ϣ
select * from ���ﳵ1907;
create table ���ﳵ1907(
      ��Ʒ���� char(30),
      �۸� number(8,2),
      ���� number(2),
      �˷� number(3)
);
insert into ���ﳵ1907 values('����',24.55,2,9);
insert into ���ﳵ1907 values('������',9.9,10,8);
insert into ���ﳵ1907 values('�׾�',325,10,150);
insert into ���ﳵ1907(��Ʒ����,�۸�) values('Ь��',299);
insert into ���ﳵ1907(��Ʒ����,�۸�) values('����',5);
insert into ���ﳵ1907(��Ʒ����,�۸�) values('�·�',129);

--delete from ���� where ������
delete from ���ﳵ1907;
--��������ɾ��
delete from ���ﳵ1907 where �۸�<100;
--ɾ�����ﳵ�в����ʵ���Ʒ
delete from ���ﳵ1907 where �˷�>0;
--ɾ�����ﳵ1907�м۸񳬹�200����Ʒ
delete from ���ﳵ1907 where �۸�>200;
--ɾ��ͼ��1907����������1000����Ϣ
delete from ͼ��1907 where ����<1000;
--ɾ��ͼ��1907����������
delete from ͼ��1907 ;

--update ���� set ����=ֵ where ����;
--���±�ְ���е����ݣ�������ְ���Ļ��������ϵ�200Ԫ
select * from ְ��;
update ְ�� set ��������=��������+200;
--����ְ���������������500���µ�100Ԫ
update ְ�� set ����=����-100 where ����>500;
--����ְ������ʵ�ʵ��ֵ���6000��Ա�����������ϵ�500
update ְ�� set ��������=��������+500 where (��������+����-ҽ�Ʊ���-���ϱ���)<6000;

--��ϰ�������� ��Ӱ1907 ������Ӱ�� ���� ���� Ʊ���⼸��
create table ��Ӱ1907(
     ��Ӱ�� char(30),
     ���� char(30),
     ���� char(30),
     Ʊ�� number(10)
);
--����в���4����������Ϣ��2����������Ϣ
insert into ��Ӱ1907 values('ɨ��','sd','���»�','2000000000');
insert into ��Ӱ1907 values('��Ƥ��','lps','lps','9000000');
insert into ��Ӱ1907 values('��ս','az','az','100000');
insert into ��Ӱ1907 values('֩����','zxx','zxx','400000');
insert into ��Ӱ1907(��Ӱ��,Ʊ��) values('�˰�','600000000');
insert into ��Ӱ1907(��Ӱ��,Ʊ��) values('Ħ�����','800000');
--ɾ������Ʊ������50�����Ϣ
delete from ��Ӱ1907 where Ʊ��<500000;
--�����е�Ӱ��Ʊ������10��
update ��Ӱ1907 set Ʊ��=Ʊ��+100000;
--����ӰƱ������100�������30%
update ��Ӱ1907 set Ʊ��=Ʊ��*1.3 where Ʊ��<1000000;
--�����е�Ӱ��Ʊ������500�򵫲�����1000��
update ��Ӱ1907 set Ʊ��=Ʊ��+5000000 ;
update ��Ӱ1907 set Ʊ��=10000000 where Ʊ��>=10000000;
select * from ��Ӱ1907;

--��ѯ�� �ʼǱ���Ʒ��Ϣ
select *from �ʼǱ���Ʒ��Ϣ;
--��ѯ����Ʒ���Լ������������Ϣ
select Ʒ��,��� from �ʼǱ���Ʒ��Ϣ;
--��ѯ����Ʒ�������۵���Ʒ�����Լ��۸�--where
select ��Ʒ����,�۸� from �ʼǱ���Ʒ��Ϣ where Ʒ��='����';
--��ѯƷ�������� �۸� ����4000����Ʒ����--and
select ��Ʒ���� from �ʼǱ���Ʒ��Ϣ where Ʒ��='����' and �۸�<4000;
--��ѯƷ�������ۻ��������Ʒ��Ϣ--or
select * from �ʼǱ���Ʒ��Ϣ where Ʒ��='����' or Ʒ��='����';
--��ѯƷ�Ʋ���Apple����Ʒ��Ϣ--not
select * from �ʼǱ���Ʒ��Ϣ where not Ʒ��='Apple';
--��ϰ����ѯƷ�Ʋ���Apple�ʹ�������Ʒ��Ϣ������д������
select * from �ʼǱ���Ʒ��Ϣ where not Ʒ��='Apple' and not Ʒ��='����';
select * from �ʼǱ���Ʒ��Ϣ where not (Ʒ��='Apple' or Ʒ��='����');
select * from �ʼǱ���Ʒ��Ϣ where Ʒ��!='Apple' and Ʒ��!='����';
select * from �ʼǱ���Ʒ��Ϣ where not Ʒ��='Apple' and Ʒ��!='����';
select * from �ʼǱ���Ʒ��Ϣ where Ʒ��='����' or Ʒ��='����' or Ʒ��='����';

--select ͳ�ƺ������У�as ���� from ����;
--��ѯ�� ��Ʊ
select * from ��Ʊ;
--��ѯ���������۸�����Ƕ���--max
select max(�����۸�)as ������߼� from ��Ʊ;
--��ѯ����һ�����۸�����Ƕ���--min
select min(һ�����۸�) as һ������ͼ� from ��Ʊ;
--��ѯ���ж���������һ�����ж���--sum
select sum(����������) as ���������� from ��Ʊ;
--��ѯ����һ������ƽ����--avg
select avg(һ�����۸�) as һ����ƽ���� from ��Ʊ;
--��ѯ���й��ж��ٸ�����--count
select count(����) as �ܳ��� from ��Ʊ;
--��ѯ���������۸���ߵĻ�Ʊ��Ϣ
select * from ��Ʊ where �����۸�=(select max(�����۸�) from ��Ʊ);--�Ӳ�ѯ



select * from ѧ��;
select * from ��ʦ;
select * from �γ�;
select * from �ɼ�;
--�����Ӳ�ѯ
--��ѯѧ����������ȳ������ѧ����Ϣ
select * from ѧ�� where ѧ������>(select ѧ������ from ѧ�� where ѧ������='����');
--��ѯѧ����������ƽ���ֵ�ѧ�����
select ѧ����� from �ɼ� where ѧ������>(select avg(ѧ������) from �ɼ�);
--����Ӳ�ѯ���ҹ��ԣ�
--���ĵ�ƽ���ɼ������ԣ�ѧ����ţ�
select avg(ѧ������)as ���ĵ�ƽ���� from �ɼ� where 
ѧ�����=(select ѧ����� from ѧ�� where ѧ������='����');  
--��ѯ������ʦ�����Ŀγ���
select �γ��� from �γ� where 
�γ̱��=(select �γ̱�� from ��ʦ where ��ʦ����='����');
--��ѯJava Web���ſ����������ѧ����Ϣ
--a.���ݿγ�����ѯ�γ̱��---�γ̱�
select �γ̱�� from �γ� where �γ���='Java Web';
--b.���ݿγ̱�Ų�ѯ��߷�---�ɼ���
select max(ѧ������) from �ɼ� where �γ̱��=
(select �γ̱�� from �γ� where �γ���='Java Web');
--c.������߷ֲ�ѯѧ�����---�ɼ���
select ѧ����� from �ɼ� where ѧ������=(select max(ѧ������) from �ɼ� where �γ̱��=
(select �γ̱�� from �γ� where �γ���='Java Web'));
--d.����ѧ����Ų�ѯѧ����Ϣ--ѧ����
select * from ѧ�� where ѧ�����=(select ѧ����� from �ɼ� where ѧ������
=(select max(ѧ������) from �ɼ� where �γ̱��
=(select �γ̱�� from �γ� where �γ���='Java Web')));

select * from ѧ�� where ѧ�����=(select ѧ����� from �ɼ� where ѧ������
=(select max(ѧ������) from �ɼ� where �γ̱��
=(select �γ̱�� from �γ� where �γ���='Java Web')));