
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

00:00:062

00:00:062	
539.1882	
235.691Z17-268h px� 
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
53*	vivadotcl2o
msynth_design -top MB_hello_world_writer_0_11 -part xc7a35tcpg236-1 -incremental_mode off -mode out_of_contextZ4-113hpx� 
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
M
#Helper process launched with PID %s4824*oasys2
3588Z8-7075hpx� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1400.266 ; gain = 448.633
h px� 
�
synthesizing module '%s'%s4497*oasys2
MB_hello_world_writer_0_112
 2�
�c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_hello_world_writer_0_11/synth/MB_hello_world_writer_0_11.v2
538@Z8-6157hpx� 
�
synthesizing module '%s'%s4497*oasys2
hello_world_writer2
 2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
18@Z8-6157hpx� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hello_world_writer2
 2
02
12_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
18@Z8-6155hpx� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MB_hello_world_writer_0_112
 2
02
12�
�c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_hello_world_writer_0_11/synth/MB_hello_world_writer_0_11.v2
538@Z8-6155hpx� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
debug_state_reg2
hello_world_writer2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
828@Z8-7137hpx� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
debug_awvalid2
hello_world_writer2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
168@Z8-3848hpx� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
debug_wvalid2
hello_world_writer2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
178@Z8-3848hpx� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
debug_bready2
hello_world_writer2_
[C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.srcs/sources_1/new/CRC32.v2
188@Z8-3848hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
debug_awvalid2
hello_world_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
debug_wvalid2
hello_world_writerZ8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
debug_bready2
hello_world_writerZ8-7129hpx� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1515.922 ; gain = 564.289
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1515.922 ; gain = 564.289
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1515.922 ; gain = 564.289
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
00:00:00.0032

1515.9222
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

00:00:002

00:00:002

1612.1092
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
00:00:00.0172

1612.4262
0.316Z17-268h px� 
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
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1612.426 ; gain = 660.793
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
hello_world_writerZ8-802hpx� 
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
_                    ADDR |                               01 |                               01
hp
x
� 
y
%s
*synth2a
_                    DATA |                               10 |                               10
hp
x
� 
y
%s
*synth2a
_                    RESP |                               11 |                               11
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

sequential2
hello_world_writerZ8-3354hpx� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
.	               32 Bit    Registers := 2     
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
.	                3 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
hp
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 4     
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
,	   4 Input    2 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
hp
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 2     
hp
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 10    
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
debug_awvalid2
MB_hello_world_writer_0_11Z8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
debug_wvalid2
MB_hello_world_writer_0_11Z8-7129hpx� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
debug_bready2
MB_hello_world_writer_0_11Z8-7129hpx� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
hp
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
}Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
|Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
vFinished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
|1     |CARRY4 |     8|
h px� 
2
%s*synth2
|2     |LUT2   |    33|
h px� 
2
%s*synth2
|3     |LUT3   |     3|
h px� 
2
%s*synth2
|4     |LUT4   |     1|
h px� 
2
%s*synth2
|5     |LUT5   |     6|
h px� 
2
%s*synth2
|6     |LUT6   |     8|
h px� 
2
%s*synth2
|7     |FDCE   |    35|
h px� 
2
%s*synth2
|8     |FDRE   |     2|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
hp
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 1612.426 ; gain = 564.289
hp
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1612.426 ; gain = 660.793
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
00:00:00.0012

1612.4262
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
8Z29-17hpx� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28hpx� 
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

00:00:002

00:00:002

1612.4262
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111hpx� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

d56ab444Z4-1430hpx� 
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

00:00:232

00:00:242

1612.4262

1057.594Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1612.4262
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.runs/MB_hello_world_writer_0_11_synth_1/MB_hello_world_writer_0_11.dcpZ17-1381hpx� 
�
Executing command : %s
56330*	planAhead2
}report_utilization -file MB_hello_world_writer_0_11_utilization_synth.rpt -pb MB_hello_world_writer_0_11_utilization_synth.pbZ12-24828hpx� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Nov  3 16:03:38 2024Z17-206hpx� 


End Record