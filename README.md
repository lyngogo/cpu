# cpu
8位简易cpu，risic V 5级流水线 现有5条指令 
顶层文件 cpu.bdf ， test.vwf 是仿真文件。
顶层文件中的输出端口均是测试仿真用的
在rom模块中存有几个指令，有sd ld add sub halt ，实现从reg写入mem，寄存器加减法，从mem中load和halt
需要提的一点是，模块命名不是太规范
以下是几个操作的操作数
加法   1000
减法   1100
ld   0010
sd  0100      例如0100 01 11    sd x1 11   指令位数原因，没有用寄存器的数，而是直接用的两位地址，当然这样能用的地址就很少
jump  1010  （未完成）
jump_neg  0101  （未完成）
halt   0000
目前的设计并没有考虑冒险，所以就没有旁路，跳转指令需要控制PC值，时间原因，还没有实现，有兴趣的可以加上去。
