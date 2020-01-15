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
