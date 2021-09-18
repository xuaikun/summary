# summary
总结相关经验
避免再次入坑  

Step1：Methodology：针对某一问题提出xxx解决思路，设计算法予以解决，形成一个解决方案 --->解决方案最重要，整个文章的核心  
Step2：Experimental Evaluation（实验过程）和Related Word（相关工作）一并开展(调研相关工作，寻找合适的对比实验【近三年】--->前期调研，找到某一待解决或可优化的问题)  备注：Step2为Step1提供研究背景和基础，Step1为解决Step2中的待解决或可优化问题，提出可行的解决方案    
Step3：写Introduction and conclusion  
Step4：最后写Abstract

对于上面步骤，必须将Step1过程完整的表述出来，并由导师判断可行不，若可行，则继续做。  

段落的开头不能用And，结论为完成时，图和表可以用文本框进行与题注等结合在一起   
为避免图或表在图中乱飞，可选择将多张图合并到一起，并采用上下环绕模式，若发现某处文字空缺，则可以将图剪切，文字自动复原，然后将图进行粘贴  

记得一定要用IEEE会议或者期刊的模板，论文中文字的大小和行间距一定要相符  

如果可以的话，以后直接用英文写论文，不要从中文翻译到英文(想写啥，直接翻译)  
读论文技巧：https://blizzard.cs.uwaterloo.ca/keshav/home/Papers/data/07/paper-reading.pdf  
来源：https://mp.weixin.qq.com/s/5oiHcsgNPYND9TF8oVcKBQ?client=tim&ADUIN=727850024&ADSESSION=1577593670&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882

写论文技巧：https://mp.weixin.qq.com/s/gAsaa7fAraE5B-vm_izFTg?client=tim&ADUIN=727850024&ADSESSION=1570493231&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882&client=tim&ADUIN=727850024&ADSESSION=1577595981&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882  
https://mp.weixin.qq.com/s/EvlmChTzd9Od_g-UHeN4Vg?client=tim&ADUIN=727850024&ADSESSION=1577595981&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882  

写完论文要检查有没有中文的标点符号，如"句号。"和"逗号，"

clone部分GitHub中的目录： https://zhuanlan.zhihu.com/p/54581830   //首先会遍历所有的目录，所以开始时会有点慢，保持网络通畅
$ mkdir models # 创建一个与要clone的仓库同名或不同命的目录  
$ cd models  
$ git init #初始化  
$ git remote add origin  https://github.com/tensorflow/models.git # 增加远端的仓库地址  
$ git config core.sparsecheckout true # 设置Sparse Checkout 为true   
$ echo "research/deeplab" >> .git/info/sparse-checkout # 将要部分clone的目录相对根目录的路径写入配置文件  

GPU选择建议：https://mp.weixin.qq.com/s/a-b4q3_o19KGXF125qBa_A?client=tim&ADUIN=727850024&ADSESSION=1584534264&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882
$ git pull origin master #pull下来代码  “确定是不是-‘master’”

### 百度 AI Studio的使用
https://aistudio.baidu.com/aistudio/index
项目->创建项目->默认设置->上传代码->在终端运行->爽歪歪(GPU算力，真香)

### Q10. 我在AI Studio Notebook项目中pip install的Python package在下次运行时为什么不见了?  
如果需要进行持久化安装, 需要使用持久化路径, 如下方代码示例:  

!mkdir /home/aistudio/external-libraries  
!pip install beautifulsoup4 -t /home/aistudio/external-libraries  
### 同时添加如下代码, 这样每次环境(kernel)启动的时候只要运行下方代码即可:(一定要添加，不容会出问题)  
import sys  
sys.path.append('/home/aistudio/external-libraries')   
其中的路径不用"../"而是用'./'
### pip3 安装和更新的语句：（重要）  
python3 -m pip install --upgrade pip

### centos中安装Numpy
https://blog.csdn.net/genghaihua/article/details/44305949

### Endnote 激活码
https://www.newasp.net/soft/385188.html
https://cnzhx.net/blog/endnote-output-style-cnzhx/  endnote的中文标准解决方法，不能用时，用endnote打开，另存为即可   
https://danny.li/notes/endnote-style-file-for-ieee-transaction/  IEEE Trans的模板  

### Endnote 生成参考文献方法  
1、 利用Google scholars搜索按钮搜索想要添加的文章  
2、点击文献右上角双引号  
3、点击底下的"EndNote"，即可下载当前文献EndNotes的参考文献格式  
4、点击所下载的的Endnotes文件，即可将所下载文件的参考文件形式导入到Endnotes的库中(已存在Endnotes库中)  
5、打开Word文档，点击EndNote按钮，进入EndNotes模式  
6、点击左上角"Insert Citation"即可选择导入你想要的文献  
7、修改Style，可以修改导入参考文献的格式  



GPU选择建议：https://mp.weixin.qq.com/s/a-b4q3_o19KGXF125qBa_A?client=tim&ADUIN=727850024&ADSESSION=1584534264&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882  

清华大学刘洋老师谈论文写作
https://mp.weixin.qq.com/s?__biz=MzI2NjA3MzM5MA==&mid=2649955575&idx=1&sn=b0cba28d16eb2af6672862064dca2ac8&chksm=f29418b6c5e391a0af6810385fdc25c36fade0562348469a5b28195b9c46309ee1c7b873c280&mpshare=1&scene=1&srcid=&sharer_sharetime=1584592533008&sharer_shareid=8e04d2500bb4393b31c11bcc3e1beef5&exportkey=A2K5MGk3SpLm8Hv8%2FJFLnUk%3D&pass_ticket=Y7xylP2Ewxo8OKeJS9UOOmowGAq35rZ%2BKZ%2BoPmf11MxPFc971x1AtFGMM0OOAlvI#rd


# Latex避坑： 
1. 记得安装最新版(旧版很多东西没有，很多坑)，最完整版(建议稳定版、高校开源镜像)：资源：http://www.ctex.org/CTeXDownload  
2. 找不到的包，从该资源中找：https://ctan.org/pkg  
备注大佬介绍可以多看：https://blog.csdn.net/Jiajikang_jjk/article/details/80243788?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522159678024819726869031671%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=159678024819726869031671&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~top_click~default-3-80243788.first_rank_ecpm_v3_pc_rank_v2&utm_term=CTex&spm=1018.2118.3001.4187
3. [.eps如何放到latex中使用，直接在代码最前面加：\usepackage{epstopdf}紧跟着加\usepackage{graphicx}](https://tex.stackexchange.com/questions/29664/latex-error-unknown-graphics-extension-eps)
4. texstudio似乎不能处理.eps文件，针对matlab生成的.eps数据文件，我的处理方法：用Adobe Acrobat Pro DC打开.eps文件，即可自动转化为.pdf文档，另存文档为.pdf，即可用latex进行导入。


# Illustrator 虚线的设置
窗口-->描边-->虚线，虚线 5pt，间隙 5pt
https://helpx.adobe.com/cn/illustrator/using/stroke-object.html

# 网络问题：能登陆微信，但是不能访问浏览器
改DNS，114，114，114，114；114，114，114，115；

# Origin问题
1. 当前界面嵌入到大窗口中了，如何解决？答：点击【Duplicate】按钮即可
2. [origin画图修改横坐标](https://blog.csdn.net/s_sunnyy/article/details/79687306)-->适用于横坐标间隔不同的情况下的处理


# 如何通过visio生成.eps或pdf?
1. 用visio画好图，打印当前页为pdf文档；
2. 用Adobe Acrobat Pro打开pdf文档；
3. 点击编辑选项-->裁剪页面-->双击后确定；
4. 点击文件-->导出到-->内嵌式(即：.eps文件)；

# .csv的双引号如何处理？导入没了，输出也没了？
解决方案：https://blog.csdn.net/dugushangliang/article/details/81477419


# 徐爱昆(Aikun Xu)
## 欢迎来到徐爱昆的主页
### 我坚信“天道酬勤”
### 并继续坚持“感恩，奉献，尊重，共享”
### 相信“千里马常有，伯乐不常有”
### 愿意“用十分专注的努力换一分踏实的收获”
### 懂得“笨鸟先飞”
### 明白“知规矩，懂常识”的重要性
### “己所不欲勿施于人”
### “穷则独善其身，达则兼济天下”
<figure>
<a><img src="https://github.com/xuaikun/xuaikun.github.io/blob/main/photo.JPG"></a>
</figure>

我目前在中南大学计算机学院攻读硕士学位(中国，[长沙](https://mp.weixin.qq.com/s/rtFh1uchnULp-ZG7WmLqbg))。我在中南民族大学计算机科学学院获得学士学位(中国，武汉)。

我的研究方向：前期主要做WSN和WRSN中的网络优化以及Shared E-Bike和EV背景下的充电调度，目前主要做与深度学习相关的研究，比如：图神经网络。

目前在投SCI期刊论文2篇，录用期刊论文2篇，已发表期刊和会议论文3篇(导师一作，本人二作)：
1. 1篇被MSN'19录用并发表；
2. 1篇被[PMC](https://www.sciencedirect.com/science/article/pii/S1574119221000560?dgcid=coauthor)录用并发表；
3. 1篇被[IJSNET](https://www.inderscience.com/login.php)录用；
4. 1篇[IJCS老投稿系统](https://mc.manuscriptcentral.com/ijcs),[IJCS主页](https://onlinelibrary.wiley.com/journal/10991131)，[IJCS新投稿系统](https://wiley.atyponrex.com/qualifications/949f7f1a-bdea-422d-8232-91aa5cadaf01)录用并发表；
5. 1篇被软件学报录用；
6. 1篇[IEEE TVT](https://mc.manuscriptcentral.com/tvt-ieee)一审（2021-5-25投）SCI 2区;
7. 1篇[IEEE T-ITS](https://mc.manuscriptcentral.com/t-its)一审（2021-7-15投）SCI 1区 交通领域顶刊.https://www.ieee-itss.org/its-transactions

链接：[https://faculty.csu.edu.cn/zhongping/zh_CN/xsxx/76785/content/1763.htm#xsxx](https://faculty.csu.edu.cn/zhongping/zh_CN/xsxx/76785/content/1763.htm#xsxx)

（Aikun Xu is currently a master's student in the School of Computer Science and Engineering, Central South University, Changsha, China. He received a B.S. degree from the School of Computer Science at South-Central University for Nationalities, Wuhan, China, in 2019. His research interests include machine learning, scheduling, electric vehicles, and wireless networks.）

## 教育经历
1. 2015年9月~2019年8月 中南民族大学 学士学位，共青团员（导师：康怡琳 [CV](https://www.scuec.edu.cn/jky/info/1027/2289.htm)，南洋理工大学）
2. 2019年9月至今 中南大学 硕士学位（2019级在读学术型硕士研究生，推免），中共预备党员（导师：钟萍 [CV](https://faculty.csu.edu.cn/zhongping/zh_CN/index/76687/list/index.htm)，剑桥大学）

### 实习经历
2018年11月~2019年1月 [武汉全品教育科技有限公司](http://www.canpointlive.com/) 图像处理项目(已开源)
1. [利用百度SDK对人脸图片进行抠图处理的程序](https://github.com/xuaikun/BaiduSDK_FaceMatch)
2. [利用虹软SDK对人脸图片进行筛图处理的程序](https://github.com/xuaikun/ArcsoftSDK_FaceMatch)

### 我的论文
1. [Zhong P, **Xu A**, Chen Y, et al. An Optimization Deployment Scheme for Static Charging Piles Based on Dynamic of Shared E-Bikes[C]//2019 15th International Conference on Mobile Ad-Hoc and Sensor Networks (MSN). IEEE, 2019: 343-347.  CCF C类. (导师一作，本人二作)](https://ieeexplore.ieee.org/document/9066134) 
2. [Zhong P, **Xu A**, Zhang S, et al. EMPC: Energy-Minimization Path Construction for data collection and wireless charging in WRSN[J]. Pervasive and Mobile Computing, 2021: 101401. JCR Q1. (导师一作，本人二作)](https://www.sciencedirect.com/science/article/pii/S1574119221000560?dgcid=coauthor)
3. Zhong P, **Xu A**, Lin S and Kui X. A Prediction Model of Death Probability for Guiding Wireless Recharging in Sensor Networks[J]. International Journal of Sensor Networks (IJSNET), 2021. JCR Q2. (导师一作，本人二作).
4. [Zhong P, **Xu A**, et al. An Efficient On-Demand Charging Scheduling Scheme for Mobile Charging Vehicle[J]: International Journal of Communication Systems (IJCS), 2021. JCR Q2. (导师一作，本人二作)](https://onlinelibrary.wiley.com/doi/10.1002/dac.4919)
5. Zhong P, **Xu AK**, Zhang YW, Li YT, Zhang YM, Huang JW, Wang JX. An effective low-energy scheme for mobile data collection and wireless charging. Ruan Jian Xue Bao/Journal of Software, 2021,32(9):124 (in Chinese). http://www.jos.org.cn/ 1000-9825/5975.htm (导师一作，本人二作)【钟萍,徐爱昆,张艺雯,李亚婷,张一鸣,黄家玮,王建新.一种高效低能耗移动数据采集与无线充电策略.软件学
报,2021,32(9):2867−2886. http://www.jos.org.cn/1000-9825/5975.htm】
6. [**徐爱昆**,康怡琳,顾珉光, 等.智慧校园储物柜的多功能控制系统设计[J].单片机与嵌入式系统应用,2019,19(1):69-72.](https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFDLAST2019&filename=DPJY201901021&v=tH0Kn33q%25mmd2F7UZudb65i%25mmd2FgqhTDCoLIsxUT9lBnD8jjC9fq7T0a7%25mmd2BQplELMwKsxmnhy)
7. [**徐爱昆**,康怡琳,冀子超, 等.基于树莓派摄像头的双轮循迹平衡车设计[J].单片机与嵌入式系统应用,2018,18(12):74-77.](https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFDLAST2019&filename=DPJY201812024&v=2SfVHxkspGP9kiYWz2DL2eIgPMoHS9rCcDnSJoSq7TgaArTlU0pNRuWu4kyt90O2)

### 我的专利
[中南大学.基于团划分的静态充电桩部署方法:CN201910132418.0[P].2019-06-11. (导师第一发明人，本人第二发明人)](https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=SCPD&dbname=SCPD2019&filename=CN109872070A&v=ainDd5pT%25mmd2BGh%25mmd2FLwgxlXusvvmrZPlup7MIwRrnrOLlBexQllz9VJH0nnquSOZMRS95)

### 论文列表
dblp: [https://dblp.org/pid/264/1873.html](https://dblp.org/pid/264/1873.html)

### 我的项目
1. 2020年 中南大学 创新类研究生项目《面向厂区货车的融合式导航系统研究》 "the Innovation Training Grant for Students of Central South University (No. GCX2020347Y)", 主持, 已结题.
2. 2021年 中南大学 研究生创新训练项目《具有个性化和情境感知的多模态交通推荐算法研究》“the Fundamental Research Funds for the Central Universities of Central South University (China) under Grant (No. 2021zzts0735）”,主持,在研.
3. 2021年 中南大学 研究生创新训练项目《面向机器人的适应性智能导航与场景感知》“the Fundamental Research Funds for the Central Universities of Central South University (China) under Grant (No. 2021zzts0753）”, 参与,在研.

### 竞赛获奖
1. 中南大学第六届智慧城市技术与创新设计大赛 二等奖
2. 第六届中南大学“互联网+”大学生创新创业大赛 一等奖

### 在校荣誉
1. 2015-2016年度 国家奖学金
2. 2016-2017年度 国家励志奖学金
3. 2019年 中南大学推免奖学金
4. 2019-2020年度硕士研究生学业奖学金 一等奖
5. 2019-2020年度中南大学  校级优秀团员
6. 2020年湖南省“大数据与人工智能”国际研究生暑期学校暨创新论坛 优秀学员

### 科研工具
1. [查找&下载论文的重要链接](https://github.com/xuaikun/xuaikun.github.io/blob/main/file/%E6%9F%A5%E6%89%BE%26%E4%B8%8B%E8%BD%BD%E8%AE%BA%E6%96%87%E7%9A%84%E9%87%8D%E8%A6%81%E9%93%BE%E6%8E%A5.md)
2. [科学上网-步骤(翻墙)](https://github.com/xuaikun/Science_Online)
3. [翻墙软件(最新)](https://www.scto04.xyz/auth/register?code=PRdC)
4. [在线版Latex](https://www.overleaf.com/)
5. [阿里开源图库](https://www.iconfont.cn/search/index?q=)
6. [GPU选购指南-2019](https://mp.weixin.qq.com/s/a-b4q3_o19KGXF125qBa_A?client=tim&ADUIN=727850024&ADSESSION=1584534264&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882)
7. [文献管理工具-Mendeley](https://www.mendeley.com/download-desktop-new/)
8. [Mendeley的简单使用教程](https://zhuanlan.zhihu.com/p/65992720)
9. [论文&代码Papers With Code](https://mp.weixin.qq.com/s/FiLbFVCIo8v1Dx-FQktHAA)
10. [NLP研究索引神器，3000+代码库，一键查找论文、GitHub库](https://index.quantumstat.com/)
11. [查论文神器](https://www.connectedpapers.com/)
12. [在线PDF转Word](https://www.pdfonline.com/pdf-to-word-converter/)
13. [在线语法检测](https://app.grammarly.com/ddocs/931980245)
14. [检查句子的工具](https://linggle.com/)
15. [论文公式工具](https://mathpix.com/)
16. [实用工具](https://mmbiz.qpic.cn/mmbiz_jpg/33P2FdAnjuib5kjO87jW2sH7QspAqpO9ELVFFiciapSjsDUJEtZ3yD1eDLTySvyzOnBZv57hric7e3VL3Sib4uo91fA/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)
17. [中南大学自动打卡程序-老蒋的](http://www.jzystc.com/sign/)
18. [复制即翻译](https://github.com/CopyTranslator/CopyTranslator/blob/master/README_zh.md)


### 科研经验
1. [厦门大学纪荣嵘老师团队的科研资源](https://mac.xmu.edu.cn/resources.htm)
2. [中国人民大学赵鑫-AI科研入坑指南](https://mp.weixin.qq.com/s/h00VmCi1E7IhIDCj7X1ZjQ)
3. [MIT-温斯顿教授-如何演讲 How to Speak？](https://mp.weixin.qq.com/s/fLl0i_1bQ6Eyr7FHRp8BWw)
4. [毕导-一个科研老狗给研究生新生的99条建议](https://mp.weixin.qq.com/s/ULVleOmXSfTR2AVgFvJeIw)
5. [告研究生新生书](https://mp.weixin.qq.com/s/GZ8plpfZcpypKAn-38gW1Q)
6. [暑假即将开始，导师十问课题组研究生！](https://mp.weixin.qq.com/s/1OQd-s24n5X-bXT4adgwag)
7. [真正优秀的学生是不用导师push](https://mp.weixin.qq.com/s/d1c6ZVw5XSSHOXsuKqrGnA)
8. [中国人民大学-赵鑫-计算机系本科生开展科研学习的九问九答](https://mp.weixin.qq.com/s/Xql8W2bbDLT2ouE_E5mYCA)
9. [微软-沈向洋-自述：在实现职业目标的道路上，我得到了七个教训](https://mp.weixin.qq.com/s/cN-85yTCx9ax9X3FxZeZrQ)
10. [中科院-包云岗：是什么造成了学术界的科学精神之殇？](https://mp.weixin.qq.com/s/XCHm4pLGSZNjolChAW--aw)
11. [哥大-5年博士总结](https://mp.weixin.qq.com/s/A_FWUR7N204LId8ZFGv0BA)
12. [施一公：学生如何提高科研中的英文阅读能力](https://mp.weixin.qq.com/s/69a4T_mmMY3rlz7dPqTkfw)

### 论文经验
1. [研究生的早期科研之路](https://mp.weixin.qq.com/s/MDB_er6rfKhXkDp-m1w-tg)
2. [南京大学-周志华-如何做研究与论文](https://mp.weixin.qq.com/s/gAsaa7fAraE5B-vm_izFTg?client=tim&ADUIN=727850024&ADSESSION=1577595981&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882)
3. [微软-童欣：研究之味](https://mp.weixin.qq.com/s/sC-Ei_5_AGrsv-kKCph9XQ)
4. [清华-刘知远：好的研究想法从哪里来](https://mp.weixin.qq.com/s/6ZIHdj_j9Z86YOnWWoPlyg)
5. [沈向洋、华刚：读科研论文的三个层次、四个阶段与十个问题](https://mp.weixin.qq.com/s/GKgwudxwUN4kvZfjeoUdEg)
6. [读文献效率提升 5 倍，这些方法值得一试](https://mp.weixin.qq.com/s/tD8DMRGHKKYNiZMhnUqSpA)
7. [剑桥大学-教授-读论文技巧](https://mp.weixin.qq.com/s/5oiHcsgNPYND9TF8oVcKBQ?client=tim&ADUIN=727850024&ADSESSION=1577593670&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882)
8. [清华大学-刘洋-浅谈研究生学位论文选题方法](https://mp.weixin.qq.com/s/dK53a5M79VJnH7sas0BcUQ)
9. [SCI论文写作指南](https://mp.weixin.qq.com/s/Py7VCZeQuaSfh6_OnzPi7Q)
10. [如何撰写科研论文的引言部分？干货分享！](https://mp.weixin.qq.com/s/PyRQhRyYy5UAl4wXnQ9NQg)
11. [SCI论文 Introduction常用句式总结（上）](https://zhuanlan.zhihu.com/p/259626565?utm_source=wechat_session&utm_medium=social&utm_oi=1009513959996628992&s_r=0)
12. [SCI论文 Introduction常用句式总结（下）](https://zhuanlan.zhihu.com/p/261293787?utm_source=wechat_session&utm_medium=social&utm_oi=1009513959996628992&s_r=0)
13. [喻海良：研究生第一篇学术论文普遍存在的9个问题](https://mp.weixin.qq.com/s/fQMISTI8lpCNDePs2ZYbHQ)
14. [好论文是如何炼成的](http://blog.sina.com.cn/s/blog_4caedc7a0100kie4.html)
15. [“你的论文充斥着垃圾，写作一塌糊涂，我读着读着都想撕了它”](https://mp.weixin.qq.com/s/TyJDV8ffjVDXQs8NQm-mbQ)
16. [我的第一篇学术论文诞生的故事](https://mp.weixin.qq.com/s/eB56SnrSkkItoR6_jaZAWQ)
17. [如何查找外文文献？从阅读到写作，这一篇讲全了](https://mp.weixin.qq.com/s/zBlcOL-glA2mSK7NrnEe8g)

### 写作经验
1. [简单点，让论文写作简单点，老牌名校助理教授给出8个建议](https://mp.weixin.qq.com/s/91EEiq8tMb4lG2ldyW6e-Q)
2. [剑桥大学：语言和写作决定人生发展的潜力](http://www.isee-ai.cn/~zhwshi/writing.pdf)

<figure>
<a><img src="https://github.com/xuaikun/xuaikun.github.io/blob/main/paper-scheme.jpg"></a>
</figure>

### 重要课程
1. [斯坦福大学——人工智能本科4年课程清单](https://mp.weixin.qq.com/s/FiLbFVCIo8v1Dx-FQktHAA)
2. [高考分数火热出炉！一份最全人工智能专业填报指南请收好](https://mp.weixin.qq.com/s/H_Awrq7evpvwvReECG0Q-A)

### 图神经网络
1. [从图(Graph)到图卷积(Graph Convolution): 漫谈图神经网络 (一)](https://zhuanlan.zhihu.com/p/108294485)
2. [从图(Graph)到图卷积(Graph Convolution): 漫谈图神经网络 (二)](https://zhuanlan.zhihu.com/p/108298787)
3. [从图(Graph)到图卷积(Graph Convolution): 漫谈图神经网络 (三)](https://zhuanlan.zhihu.com/p/108299847)
4. [我们真的需要深度图神经网络吗？](https://mp.weixin.qq.com/s/Y0m5ziWoRCK0PeWu7ztERg)
5. [清华大学发布首个自动图机器学习工具包AutoGL，开源易用可扩展，支持自定义模型](https://mp.weixin.qq.com/s/Khk7M_lamzbQdYvnuAzSzw)
6. [图神经网络从入门到入门](https://mp.weixin.qq.com/s/Eolw4YHgXtcKq32Is2ysBw)
7. [21年最新最全Graph Learning算法](https://mp.weixin.qq.com/s/FpBawuJrD54Hk1_GMO4tSg)
8. [北邮王啸：图神经网络的两面性](https://mp.weixin.qq.com/s/gNGqqAQP7OCozrjUKYVxgw)

### Attention机制
1. [重新思考深度学习中的Attention机制](https://mp.weixin.qq.com/s/xHU-9tnDZyMi64Fvs_0ioA)
2. [LinkedIN最新《注意力模型》综述论文大全，20页pdf](https://mp.weixin.qq.com/s/bl1MsrvSvgQQnqigQjvVdw)
3. [Transformer家族简史（PART I）](https://mp.weixin.qq.com/s?__biz=MzIxMzkwNjM2NQ==&mid=2247491693&idx=2&sn=2032f9a45e49fafc13a6e3ded23e1c39&chksm=97ad06bfa0da8fa9f60a0f6dca283acf281695eba4db1a5d7837b39750019d8c402384681497&scene=21#wechat_redirect)
4. [Transformer家族简史（PART II）](https://mp.weixin.qq.com/s/SPllU8IxvnqEK8Xud-1w-w)
5. [再谈Attention机制](https://mp.weixin.qq.com/s/5HzgYTEjHc4hhjIW-8NWnA)

### 多模态深度学习
1. [多模态深度学习综述：网络结构设计和模态融合方法汇总](https://mp.weixin.qq.com/s/_LTxBrLSyMV3BIze7D56LA)

### 选boss经验
1. [导师评价网数据-GitHub链接](https://github.com/kgco/RateMySupervisor?utm_source=wechat_session&utm_medium=social&utm_oi=858349756462821376)
2. [导师评价网-网页](https://kgco.github.io/RateMySupervisor/html/index.html?utm_source=wechat_session&utm_medium=social&utm_oi=858349756462821376)
3. [导师评价网--翻墙--有偿](https://www.mysupervisor.org/)
4. [《自然》2020年度最受欢迎的导师是怎么带学生的？](https://mp.weixin.qq.com/s/3tHZQY9NOR1PkD8kaFC9kg)
5. [26岁一年一作发4篇Cell，他说搞科研要有“十诫”](https://mp.weixin.qq.com/s/kyfExXdH5ur8Hus1s1l2Hg)

### 生活经验
1. [总觉得累？是您放松方式没找对！](https://mp.weixin.qq.com/s/0UnLN4kNkdYHqDNgT7pjjw)

### 申请博士
1. [如何申请国内博士](https://zhuanlan.zhihu.com/p/56189172?utm_source=wechat_session&utm_medium=social&s_r=0)
2. [我是如何在3个月内写出博士论文的？](https://mp.weixin.qq.com/s/NtBnDcgUmnEuqd-uVe9Hqg)
3. [蒲慕明：博士研究生如何做创新性研究？](https://mp.weixin.qq.com/s/YM5e-PmM13BtwJ-WIog71A)
4. [我的考博故事：选择大于努力，一位好导师的助力](https://mp.weixin.qq.com/s/VLVJO8f7Oz-TACQO9fHxHQ)
5. [哪些人适合读博？中南大学博导：如果符合这几条，或不适合读博](https://mp.weixin.qq.com/s/LkFWONZa1sYvVO0Fdhw0Tw)

### 读博经验
1. [如何做出牛的研究？GAT作者DeepMind研究科学家Petar谈论自己读博科研经验，为您指点一二](https://mp.weixin.qq.com/s/XqpYda2hX_TCPfuTPk2vdg)
(1) 要找大牛组实习；
(2) 对自己的想法“硬编码”验证；
(3) 先投Workshop来通过圈内人Review反馈自己的工作；

### 读博可看
1. [UC伯克利马毅ICML投稿得到4个评审接收却仍遭AC拒绝！自称论文泄露了深度学习的天机](https://mp.weixin.qq.com/s/i1JsgVdLi_kxjpnSe-OL3w)
2. [博士这五年-李沐](https://zhuanlan.zhihu.com/p/25099638)
3. [清华姚班教师劝退文：读博，你真的想好了吗？](https://mp.weixin.qq.com/s/l0EHkx9QkvtHfQbmMh-Rvg)
4. [Doing_the_PhD](https://github.com/shengyp/doing_the_PhD)

### 投资理财
1. [全球货币大放水的时代，普通人该如何投资？](https://mp.weixin.qq.com/s/UopAKWYuDcQmdCioyJf8Yw)  
2. [股市再突破，普通人能从中获利吗？](https://mp.weixin.qq.com/s/9oV2w_ft0jJlGpZFUboHaQ)  
3. [在不久的未来，股市可能有一场大暴跌！](https://mp.weixin.qq.com/s/5jf7Eo7CPmIyjm9De7jC7Q)  
4. [股市大调整，基金需要赎回吗？](https://mp.weixin.qq.com/s/Ci0WmQONPMXmboaDG6XpIA)  
5. [理财工具之华宝zhengquan](https://mp.weixin.qq.com/s/8hdr6-C-c7wV1QwValp0uQ)

### 工作经验
1. [「冒名顶替综合征，还是我真的不行？」硕士学位、4年CS工作经验，但我感觉自己什么都不会](https://mp.weixin.qq.com/s/GyqtyEuZssaZHDi9hR6oGg)
2. [计算机类工作面试经验](https://github.com/xuaikun/CS-Notes)
3. [经典的编程书单大全](https://github.com/xuaikun/awesome-cs-books)
4. [955公司名单](https://github.com/xuaikun/955.WLB)
5. [Leetcode经验](https://github.com/xuaikun/fucking-algorithm)
6. [牛客网-->笔试，动态规划，双指针，背包问题，二分查找](https://www.nowcoder.com/)
7. [leetcode-->面试，链表等](https://leetcode-cn.com/problemset/all/)
8. [OJ在线编程常见输入输出练习](https://www.nowcoder.com/test/27976983/summary#question)
9. 华为：第一题：100，第二题：200，第三题：300，超100分，过笔试
10. [李沐：工作五年反思](https://mp.weixin.qq.com/s/f0DdF9OnUB9HG8M2S6gCSQ)
11. [毕业啦！职场前辈给新人的10条忠告，让你少走弯路](https://mp.weixin.qq.com/s/lNqRd8q7BKu80QHy63RrNQ)

### 产品经理成长之路
1. [PDCA]-->某个大任务
2. [SMARK]-->某一件事

### 编码工具
1. [c++编辑+编译器~dev](https://sourceforge.net/projects/orwelldevcpp/)

### 公务员
1. [各地公务员收入分别是多少？](https://www.zhihu.com/question/441857563/answer/1737438814)

### 联系方式
Email:[aikunxu@csu.edu.cn](aikunxu@csu.edu.cn)

## Note
### 解决github无法显示图片的方法：https://blog.csdn.net/qq_38232598/article/details/91346392
### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).
