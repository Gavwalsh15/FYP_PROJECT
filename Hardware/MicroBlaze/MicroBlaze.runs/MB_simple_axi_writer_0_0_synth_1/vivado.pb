
�
�You are suppressing all messages of type '%s'. You may potentially disregard important DRC, CDC, and implementation messages that can negatively impact your design.  If this is not desired, please run 'reset_msg_config -suppress -severity {%s}' to undo this change.598*common2	
WARNING2	
WARNINGZ17-1355h px� 
�
�You are suppressing all messages of type '%s'. You may potentially disregard important DRC, CDC, and implementation messages that can negatively impact your design.  If this is not desired, please run 'reset_msg_config -suppress -severity {%s}' to undo this change.598*common2
CRITICAL WARNING2
CRITICAL WARNINGZ17-1355h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:052	
506.7502	
127.246Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234hpx� 
G
"No user IP repositories specified
1154*coregenZ19-1704hpx� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313hpx� 
�
Command: %s
53*	vivadotcl2m
ksynth_design -top MB_simple_axi_writer_0_0 -part xc7a35tcpg236-1 -incremental_mode off -mode out_of_contextZ4-113hpx� 
:
Starting synth_design
149*	vivadotclZ4-321hpx� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347hpx� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349hpx� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403hpx� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227hpx� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079hpx� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078hpx� 
N
#Helper process launched with PID %s4824*oasys2
24100Z8-7075hpx� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1368.582 ; gain = 447.926
h px� 
�
synthesizing module '%s'%s4497*oasys2
MB_simple_axi_writer_0_02
 2�
�c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_simple_axi_writer_0_0/synth/MB_simple_axi_writer_0_0.v2
538@Z8-6157hpx� 
�
synthesizing module '%s'%s4497*oasys2
simple_axi_writer2
 2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
28@Z8-6157hpx� 
R
%s
*synth2:
8	Parameter AXI_ADDR_WIDTH bound to: 32 - type: integer 
hp
x
� 
R
%s
*synth2:
8	Parameter AXI_DATA_WIDTH bound to: 32 - type: integer 
hp
x
� 
V
%s
*synth2>
<	Parameter READ_ADDR bound to: -1073741824 - type: integer 
hp
x
� 
W
%s
*synth2?
=	Parameter WRITE_ADDR bound to: -1073741568 - type: integer 
hp
x
� 
�
synthesizing module '%s'%s4497*oasys2
sha2562
 2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
2838@Z8-6157hpx� 
�
-case statement is not full and has no default155*oasys2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3988@Z8-155hpx� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sha2562
 2
02
12_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
2838@Z8-6155hpx� 
�
-case statement is not full and has no default155*oasys2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
2178@Z8-155hpx� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
simple_axi_writer2
 2
02
12_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
28@Z8-6155hpx� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MB_simple_axi_writer_0_02
 2
02
12�
�c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_simple_axi_writer_0_0/synth/MB_simple_axi_writer_0_0.v2
538@Z8-6155hpx� 
�
+Unused sequential element %s was removed. 
4326*oasys2
T1_reg2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
4428@Z8-6014hpx� 
�
+Unused sequential element %s was removed. 
4326*oasys2
T2_reg2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
4438@Z8-6014hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[0]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[1]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[2]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[3]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[4]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[5]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[6]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[7]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[8]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

W_reg[9]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[10]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[11]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[12]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[13]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[14]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[15]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[16]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[17]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[18]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[19]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[20]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[21]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[22]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[23]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[24]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[25]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[26]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[27]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[28]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[29]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[30]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[31]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[32]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[33]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[34]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[35]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[36]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[37]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[38]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[39]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[40]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[41]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[42]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[43]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[44]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[45]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[46]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[47]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[48]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[49]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[50]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[51]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[52]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[53]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[54]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[55]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[56]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[57]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[58]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[59]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[60]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[61]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[62]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
	W_reg[63]2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
3408@Z8-7137hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

hash_reg2
sha2562_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
4738@Z8-7137hpx� 
�
+Unused sequential element %s was removed. 
4326*oasys2
final_hash_reg2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
1198@Z8-6014hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_BRESP[1]2
simple_axi_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_BRESP[0]2
simple_axi_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_RRESP[1]2
simple_axi_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_RRESP[0]2
simple_axi_writerZ8-7129hpx� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1506.551 ; gain = 585.895
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1506.551 ; gain = 585.895
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1506.551 ; gain = 585.895
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0662

1506.5512
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570hpx� 
>

Processing XDC Constraints
244*projectZ1-262hpx� 
=
Initializing timing engine
348*projectZ1-569hpx� 
H
&Completed Processing XDC Constraints

245*projectZ1-263hpx� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1600.6992
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111hpx� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0622

1606.7622
6.062Z17-268h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008hpx� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
j
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
sha256Z8-802hpx� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
hp
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
hp
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
hp
x
� 
y
%s
*synth2a
_                    IDLE |                               00 |                               00
hp
x
� 
y
%s
*synth2a
_                 PROCESS |                               01 |                               01
hp
x
� 
y
%s
*synth2a
_                  FINISH |                               10 |                               10
hp
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
hp
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
sha256Z8-3354hpx� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
hp
x
� 
(
%s
*synth2
+---Adders : 
hp
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit       Adders := 1     
hp
x
� 
F
%s
*synth2.
,	   5 Input   32 Bit       Adders := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 11    
hp
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
hp
x
� 
&
%s
*synth2
+---XORs : 
hp
x
� 
H
%s
*synth20
.	   3 Input     32 Bit         XORs := 5     
hp
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
hp
x
� 
+
%s
*synth2
+---Registers : 
hp
x
� 
H
%s
*synth20
.	              512 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	              256 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 75    
hp
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 10    
hp
x
� 
'
%s
*synth2
+---Muxes : 
hp
x
� 
F
%s
*synth2.
,	   2 Input  512 Bit        Muxes := 2     
hp
x
� 
F
%s
*synth2.
,	  11 Input  512 Bit        Muxes := 2     
hp
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 13    
hp
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 24    
hp
x
� 
F
%s
*synth2.
,	  11 Input   32 Bit        Muxes := 3     
hp
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   3 Input    6 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 3     
hp
x
� 
F
%s
*synth2.
,	  11 Input    4 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   7 Input    2 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 84    
hp
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 54    
hp
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 6     
hp
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 12    
hp
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 1     
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
6
%s
*synth2
Start Part Resource Summary
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
9
%s
*synth2!
Finished Part Resource Summary
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_BRESP[1]2
simple_axi_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_BRESP[0]2
simple_axi_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_RRESP[1]2
simple_axi_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_RRESP[0]2
simple_axi_writerZ8-7129hpx� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
W
%s*synth2?
=+------------+------------+---------------+----------------+
h px� 
X
%s*synth2@
>|Module Name | RTL Object | Depth x Width | Implemented As | 
h px� 
W
%s*synth2?
=+------------+------------+---------------+----------------+
h px� 
X
%s*synth2@
>|sha256      | K          | 64x32         | LUT            | 
h px� 
X
%s*synth2@
>|sha256      | p_0_out    | 64x32         | LUT            | 
h px� 
X
%s*synth2@
>+------------+------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
4
%s
*synth2
Start Timing Optimization
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
3
%s
*synth2
Start Technology Mapping
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
-
%s
*synth2
Start IO Insertion
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
hp
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
/
%s
*synth2

Report BlackBoxes: 
hp
x
� 
8
%s
*synth2 
+-+--------------+----------+
hp
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
hp
x
� 
8
%s
*synth2 
+-+--------------+----------+
hp
x
� 
8
%s
*synth2 
+-+--------------+----------+
hp
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |   184|
h px� 
2
%s*synth2
|2     |LUT1   |     3|
h px� 
2
%s*synth2
|3     |LUT2   |   614|
h px� 
2
%s*synth2
|4     |LUT3   |   446|
h px� 
2
%s*synth2
|5     |LUT4   |   100|
h px� 
2
%s*synth2
|6     |LUT5   |   215|
h px� 
2
%s*synth2
|7     |LUT6   |  2868|
h px� 
2
%s*synth2
|8     |MUXF7  |   832|
h px� 
2
%s*synth2
|9     |MUXF8  |   256|
h px� 
2
%s*synth2
|10    |FDCE   |   265|
h px� 
2
%s*synth2
|11    |FDPE   |   272|
h px� 
2
%s*synth2
|12    |FDRE   |  2950|
h px� 
2
%s*synth2
|13    |FDSE   |     5|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1606.762 ; gain = 686.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
hp
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1606.762 ; gain = 585.895
hp
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1606.762 ; gain = 686.105
hp
x
� 
B
 Translating synthesized netlist
350*projectZ1-571hpx� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0562

1606.7622
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1272Z29-17hpx� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28hpx� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
MB_simple_axi_writer_0_02
sha256Z29-101hpx� 
K
)Preparing netlist for logic optimization
349*projectZ1-570hpx� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138hpx� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1606.7622
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111hpx� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

55373793Z4-1430hpx� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83hpx� 
}
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
02
02
22
0Z4-41hpx� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42hpx� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:362

00:00:372

1606.7622

1088.457Z17-268h px� 
>
Renamed %s cell refs.
330*coretcl2
2Z2-1174hpx� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0112

1606.7622
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.runs/MB_simple_axi_writer_0_0_synth_1/MB_simple_axi_writer_0_0.dcpZ17-1381hpx� 
�
Executing command : %s
56330*	planAhead2{
yreport_utilization -file MB_simple_axi_writer_0_0_utilization_synth.rpt -pb MB_simple_axi_writer_0_0_utilization_synth.pbZ12-24828hpx� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Mar 21 12:31:46 2025Z17-206hpx� 


End Record