
提取方法：
1. 编译bjam工具：双击 bootstrap.bat 即可得到bjam.exe //需要很长时间。前提是安装了vs2010，或vs2008
3. 执行bjam tools\bcp，用于提取所需的头文件，完成后在bin.v2\tools\bcp\msvc-9.0\release\link-static\runtime-link-static\threading-multi下可见bcp.exe
4. 拷贝bcp.exe到boost根目录下，并创建新目录c:\boost_x，
   执行
   bcp.exe boost/signals2 g:\projects\jiaojing\project\miniboost
   提取所需要的头文件.
