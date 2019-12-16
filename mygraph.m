%% 清空界面，释放存储空间
clc
clear
hold off
%% （1）分析不同密度情况下生命周期
% 1、本文所提算法，数据

% 2、最新算法，数据
%% （2）数据采集比较
Get_Data_Time = [0 500,1000,1500,2000,2500,3000,3500,4000];
% 1、本文所提算法，数据
ThisPaper = [0 162112, 246112, 1228912, 1448032, 1680424, 2514808, 2752984, 3011128];
% 2、最新算法，数据
ComparePaper = [0 268144, 531984, 838640, 1033160, 1231336, 1315336, 1399336, 2114136];
figure(1)
% 画图
plot(Get_Data_Time, ThisPaper,'b-o','LineWidth', 1, 'MarkerFaceColor', 'b')
hold on
plot(Get_Data_Time, ComparePaper, 'r-d', 'LineWidth', 1,'MarkerFaceColor', 'r');
axis auto
% x轴和y轴加标签
xlabel('时间(秒)')
ylabel('DCV收集的数据量(bit)')
% legend命令提供一种简易方式来辨别不同函数作图
legend('MDCWC', 'MDCWET')
% 设置网格线
grid on
figure(2)
%% （3）能耗比较
Energy_Time = [0 500	1000	1500	2000	2500	3000	3500	4000];

% 1、本文所提算法，数据
ThisPaper = [0 0.9045	1.3732	6.8574	8.08	9.3768	14.0327	15.3617	16.8022];
% 2、最新算法，数据
ComparePaper = [0 1.4956	2.9678	4.679	5.7644	6.8702	7.339	7.8077	11.7962];
% 画图
plot(Energy_Time, ThisPaper,'b-o','LineWidth', 1, 'MarkerFaceColor', 'b')
hold on
plot(Energy_Time, ComparePaper, 'r-d', 'LineWidth', 1,'MarkerFaceColor', 'r');
axis auto
% x轴和y轴加标签
xlabel('时间(秒)')
ylabel('能量消耗(j)')
% legend命令提供一种简易方式来辨别不同函数作图
legend('MDCWC', 'MDCWET')
% 设置网格线
grid on
figure(3)
%% （4）无线充电效率WCV_eta对实验结果影响
WCV_eta = [	0.4	0.5	0.6	0.7	0.8	0.9	0.95	0.97	0.98	0.99	1
];
% 
% % 1、本文所提算法，数据
ThisPaper = [15645.048	15315.048	14640.248	14470.248	14354.248	14266.248	14222.248	14207.248	14200.248	14200.248	14200.248
];
% 
% % 2、最新算法，数据
ComparePaper = [19115.548	18830.548	18640.548	18493.548	18393.5475	18317.5475	18279.5475	18265.5475	18260.5475	18260.5475	18260.5475
];
% 画图
plot(WCV_eta, ThisPaper,'b-o','LineWidth', 1, 'MarkerFaceColor', 'b')
hold on
plot(WCV_eta, ComparePaper, 'r-d', 'LineWidth', 1,'MarkerFaceColor', 'r');
axis auto
% x轴和y轴加标签
xlabel('无线充电效率(WCV-eta)')
ylabel('能量消耗(j)')
% legend命令提供一种简易方式来辨别不同函数作图
legend('Our Scheme', 'MDCWET')
% 设置网格线
grid on
figure(4)
%% （5）不同网络拓扑对实验结果的影响
TimeList = [0 500	1000	1500	2000	2500];
% % 数据收集情况
Node_100_GetDate = [0 162112	246112	1228912	1448032	1680424];
Node2_100_GetDate = [0 215952	636392	1458960	1547488	2268160];
Node4_100_GetDate = [0 702736	1655840	2617264	3269360	4058544];

% 画图
plot(TimeList, Node_100_GetDate,'b-o','LineWidth', 1, 'MarkerFaceColor', 'b')
hold on
plot(TimeList, Node2_100_GetDate, 'r-d', 'LineWidth', 1,'MarkerFaceColor', 'r');
hold on
plot(TimeList, Node4_100_GetDate, 'g--s', 'LineWidth', 1,'MarkerFaceColor', 'g');
axis auto
% x轴和y轴加标签
xlabel('时间(秒)')
ylabel('DCV收集的数据量(bit)')
% legend命令提供一种简易方式来辨别不同函数作图
legend('Node-100', 'Node2-100', 'Node4-100')
% 设置网格线
grid on
figure(5)
% 能量消耗情况
Node_100_Energy = [0 0.9045	1.3732	6.8574	8.08	9.3768];
Node2_100_Energy = [0 1.205	3.5511	8.1411	8.635	12.6563];
Node4_100_Energy = [0 3.9212	9.2396	14.6043	18.243	22.6466];
% 画图
plot(TimeList, Node_100_Energy,'b-o','LineWidth', 1, 'MarkerFaceColor', 'b')
hold on
plot(TimeList, Node2_100_Energy, 'r-d', 'LineWidth', 1,'MarkerFaceColor', 'r');
hold on
plot(TimeList, Node4_100_Energy, 'g--s', 'LineWidth', 1,'MarkerFaceColor', 'g');
axis auto
% x轴和y轴加标签
xlabel('时间(秒)')
ylabel('能量消耗(j)')
% legend命令提供一种简易方式来辨别不同函数作图
legend('Node-100', 'Node2-100', 'Node4-100')

% 设置网格线
grid on
