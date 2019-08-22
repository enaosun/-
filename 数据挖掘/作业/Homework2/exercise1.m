%exercise 1

%��ȡ�ļ�����
data = load('dataForTraining.txt');
data2 = load('dataForTesting.txt');

%��ȡ�Ա�������
x = data(:,1:2);
x2 = data2(:,1:2);
%��ȡ���������
y = data(:,3);
y2 = data2(:,3);
m = length(y);
m2 = length(y2);


%����һ��Ϊ1�����ݣ������Ӧ��b
x = [ones(m,1),x];
x2 = [ones(m2,1),x2];

theta = zeros(3,1);%ϵ����
alpha = 0.00015;   %�Զ����ѧϰ��
max_iter = 150000;  %�Զ���ĵ�������
error = zeros(max_iter,1); %��¼���ֵ
error2 = zeros(max_iter,1);
store = zeros(max_iter*3,1);


for i = 1:max_iter
    theta = theta - alpha/m * x' * ( x * theta - y) ;
    error(i) = sum((x * theta - y).^2) / (2*m);
    error2(i) = sum((x2*theta - y2).^2) /(2*m2);
    
end


for i = 1 : 15
    disp(i);
    disp(error(i*10000));
    disp(error2(i*10000)); 
end






    




