#!/usr/bin/perl -w
#
# Perl/Tk script to read and display Utilite2 CPU speeds
# Utilite2_CPUSpeed.pl
# Revision 0
# Darryl Hassell 2/1/2015

use Tk;


# Create Main Window
$WinMain = MainWindow -> new;
$WinMain -> resizable (0,0);

# Define & Initialize Variables

# Uptime & Idletime
$Uptime_String = '--';
$Uptime = '--';
$Uptime_Label = '--';
$Uptime_Hours = '--';
$Uptime_Minutes = '--';
$Uptime_Seconds = '--';
$Idletime = '--';
$Idletime_Label = '--';
$Idletime_Hours = '--';
$Idletime_Minutes = '--';
$Idletime_Seconds = '--';

# % Time Active & Idle
$Active_Time_Pct = '--';
$Idle_Time_Pct = '--';

# CPU0
$CPU0_Min_Freq = '--';
$CPU0_Min_Label = '--';
$CPU0_Max_Freq = '--';
$CPU0_Max_Label = '--';
$CPU0_Oper_Freq = '--';
$CPU0_Oper_Label = '--';
$CPU0_Time_In_State = '--';
$CPU0_Freq1 = '--';
$CPU0_Ticks1 = '--';
$CPU0_Freq2 = '--';
$CPU0_Ticks2 = '--';
$CPU0_Freq3 = '--';
$CPU0_Ticks3 = '--';
$CPU0_Freq4 = '--';
$CPU0_Ticks4 = '--';
$CPU0_Freq5 = '--';
$CPU0_Ticks5 = '--';
$CPU0_Freq6 = '--';
$CPU0_Ticks6 = '--';
$CPU0_Freq7 = '--';
$CPU0_Ticks7 = '--';
$CPU0_Freq8 = '--';
$CPU0_Ticks8 = '--';
$CPU0_Freq9 = '--';
$CPU0_Ticks9 = '--';
$CPU0_Freq10 = '--';
$CPU0_Ticks10 = '--';
$CPU0_Freq11 = '--';
$CPU0_Ticks11 = '--';
$CPU0_Freq12 = '--';
$CPU0_Ticks12 = '--';
$CPU0_Freq13 = '--';
$CPU0_Ticks13 = '--';
$CPU0_Freq14 = '--';
$CPU0_Ticks14 = '--';
$CPU0_Avg_Freq = '--';
$CPU0_Avg_Label = '--';
$CPU0_Freq1_Time_Pct = '--';
$CPU0_Freq2_Time_Pct = '--';
$CPU0_Freq3_Time_Pct = '--';
$CPU0_Freq4_Time_Pct = '--';
$CPU0_Freq5_Time_Pct = '--';
$CPU0_Freq6_Time_Pct = '--';
$CPU0_Freq7_Time_Pct = '--';
$CPU0_Freq8_Time_Pct = '--';
$CPU0_Freq9_Time_Pct = '--';
$CPU0_Freq10_Time_Pct = '--';
$CPU0_Freq11_Time_Pct = '--';
$CPU0_Freq12_Time_Pct = '--';
$CPU0_Freq13_Time_Pct = '--';
$CPU0_Freq14_Time_Pct = '--';
$CPU0_Mhz1 = '--';
$CPU0_Mhz2 = '--';
$CPU0_Mhz3 = '--';
$CPU0_Mhz4 = '--';
$CPU0_Mhz5 = '--';
$CPU0_Mhz6 = '--';
$CPU0_Mhz7 = '--';
$CPU0_Mhz8 = '--';
$CPU0_Mhz9 = '--';
$CPU0_Mhz10 = '--';
$CPU0_Mhz11 = '--';
$CPU0_Mhz12 = '--';
$CPU0_Mhz13 = '--';
$CPU0_Mhz14 = '--';



# CPU1
$CPU1_Min_Freq = '--';
$CPU1_Min_Label = '--';
$CPU1_Max_Freq = '--';
$CPU1_Max_Label = '--';
$CPU1_Oper_Freq = '--';
$CPU1_Oper_Label = '--';
$CPU1_Time_In_State = '--';
$CPU1_Freq1 = '--';
$CPU1_Ticks1 = '--';
$CPU1_Freq2 = '--';
$CPU1_Ticks2 = '--';
$CPU1_Freq3 = '--';
$CPU1_Ticks3 = '--';
$CPU1_Freq4 = '--';
$CPU1_Ticks4 = '--';
$CPU1_Freq5 = '--';
$CPU1_Ticks5 = '--';
$CPU1_Freq6 = '--';
$CPU1_Ticks6 = '--';
$CPU1_Freq7 = '--';
$CPU1_Ticks7 = '--';
$CPU1_Freq8 = '--';
$CPU1_Ticks8 = '--';
$CPU1_Freq9 = '--';
$CPU1_Ticks9 = '--';
$CPU1_Freq10 = '--';
$CPU1_Ticks10 = '--';
$CPU1_Freq11 = '--';
$CPU1_Ticks11 = '--';
$CPU1_Freq12 = '--';
$CPU1_Ticks12 = '--';
$CPU1_Freq13 = '--';
$CPU1_Ticks13 = '--';
$CPU1_Freq14 = '--';
$CPU1_Ticks14 = '--';
$CPU1_Avg_Freq = '--';
$CPU1_Avg_Label = '--';
$CPU1_Freq1_Time_Pct = '--';
$CPU1_Freq2_Time_Pct = '--';
$CPU1_Freq3_Time_Pct = '--';
$CPU1_Freq4_Time_Pct = '--';
$CPU1_Freq5_Time_Pct = '--';
$CPU1_Freq6_Time_Pct = '--';
$CPU1_Freq7_Time_Pct = '--';
$CPU1_Freq8_Time_Pct = '--';
$CPU1_Freq9_Time_Pct = '--';
$CPU1_Freq10_Time_Pct = '--';
$CPU1_Freq11_Time_Pct = '--';
$CPU1_Freq12_Time_Pct = '--';
$CPU1_Freq13_Time_Pct = '--';
$CPU1_Freq14_Time_Pct = '--';
$CPU1_Mhz1 = '--';
$CPU1_Mhz2 = '--';
$CPU1_Mhz3 = '--';
$CPU1_Mhz4 = '--';
$CPU1_Mhz5 = '--';
$CPU1_Mhz6 = '--';
$CPU1_Mhz7 = '--';
$CPU1_Mhz8 = '--';
$CPU1_Mhz9 = '--';
$CPU1_Mhz10 = '--';
$CPU1_Mhz11 = '--';
$CPU1_Mhz12 = '--';
$CPU1_Mhz13 = '--';
$CPU1_Mhz14 = '--';

# CPU2
$CPU2_Min_Freq = '--';
$CPU2_Min_Label = '--';
$CPU2_Max_Freq = '--';
$CPU2_Max_Label = '--';
$CPU2_Oper_Freq = '--';
$CPU2_Oper_Label = '--';
$CPU2_Time_In_State = '--';
$CPU2_Freq1 = '--';
$CPU2_Ticks1 = '--';
$CPU2_Freq2 = '--';
$CPU2_Ticks2 = '--';
$CPU2_Freq3 = '--';
$CPU2_Ticks3 = '--';
$CPU2_Freq4 = '--';
$CPU2_Ticks4 = '--';
$CPU2_Freq5 = '--';
$CPU2_Ticks5 = '--';
$CPU2_Freq6 = '--';
$CPU2_Ticks6 = '--';
$CPU2_Freq7 = '--';
$CPU2_Ticks7 = '--';
$CPU2_Freq8 = '--';
$CPU2_Ticks8 = '--';
$CPU2_Freq9 = '--';
$CPU2_Ticks9 = '--';
$CPU2_Freq10 = '--';
$CPU2_Ticks10 = '--';
$CPU2_Freq11 = '--';
$CPU2_Ticks11 = '--';
$CPU2_Freq12 = '--';
$CPU2_Ticks12 = '--';
$CPU2_Freq13 = '--';
$CPU2_Ticks13 = '--';
$CPU2_Freq14 = '--';
$CPU2_Ticks14 = '--';
$CPU2_Avg_Freq = '--';
$CPU2_Avg_Label = '--';
$CPU2_Freq1_Time_Pct = '--';
$CPU2_Freq2_Time_Pct = '--';
$CPU2_Freq3_Time_Pct = '--';
$CPU2_Freq4_Time_Pct = '--';
$CPU2_Freq5_Time_Pct = '--';
$CPU2_Freq6_Time_Pct = '--';
$CPU2_Freq7_Time_Pct = '--';
$CPU2_Freq8_Time_Pct = '--';
$CPU2_Freq9_Time_Pct = '--';
$CPU2_Freq10_Time_Pct = '--';
$CPU2_Freq11_Time_Pct = '--';
$CPU2_Freq12_Time_Pct = '--';
$CPU2_Freq13_Time_Pct = '--';
$CPU2_Freq14_Time_Pct = '--';
$CPU2_Mhz1 = '--';
$CPU2_Mhz2 = '--';
$CPU2_Mhz3 = '--';
$CPU2_Mhz4 = '--';
$CPU2_Mhz5 = '--';
$CPU2_Mhz6 = '--';
$CPU2_Mhz7 = '--';
$CPU2_Mhz8 = '--';
$CPU2_Mhz9 = '--';
$CPU2_Mhz10 = '--';
$CPU2_Mhz11 = '--';
$CPU2_Mhz12 = '--';
$CPU2_Mhz13 = '--';
$CPU2_Mhz14 = '--';


# CPU3
$CPU3_Min_Freq = '--';
$CPU3_Min_Label = '--';
$CPU3_Max_Freq = '--';
$CPU3_Max_Label = '--';
$CPU3_Oper_Freq = '--';
$CPU3_Oper_Label = '--';
$CPU3_Time_In_State = '--';
$CPU3_Freq1 = '--';
$CPU3_Ticks1 = '--';
$CPU3_Freq2 = '--';
$CPU3_Ticks2 = '--';
$CPU3_Freq3 = '--';
$CPU3_Ticks3 = '--';
$CPU3_Freq4 = '--';
$CPU3_Ticks4 = '--';
$CPU3_Freq5 = '--';
$CPU3_Ticks5 = '--';
$CPU3_Freq6 = '--';
$CPU3_Ticks6 = '--';
$CPU3_Freq7 = '--';
$CPU3_Ticks7 = '--';
$CPU3_Freq8 = '--';
$CPU3_Ticks8 = '--';
$CPU3_Freq9 = '--';
$CPU3_Ticks9 = '--';
$CPU3_Freq10 = '--';
$CPU3_Ticks10 = '--';
$CPU3_Freq11 = '--';
$CPU3_Ticks11 = '--';
$CPU3_Freq12 = '--';
$CPU3_Ticks12 = '--';
$CPU3_Freq13 = '--';
$CPU3_Ticks13 = '--';
$CPU3_Freq14 = '--';
$CPU3_Ticks14 = '--';
$CPU3_Avg_Freq = '--';
$CPU3_Avg_Label = '--';
$CPU3_Freq1_Time_Pct = '--';
$CPU3_Freq2_Time_Pct = '--';
$CPU3_Freq3_Time_Pct = '--';
$CPU3_Freq4_Time_Pct = '--';
$CPU3_Freq5_Time_Pct = '--';
$CPU3_Freq6_Time_Pct = '--';
$CPU3_Freq7_Time_Pct = '--';
$CPU3_Freq8_Time_Pct = '--';
$CPU3_Freq9_Time_Pct = '--';
$CPU3_Freq10_Time_Pct = '--';
$CPU3_Freq11_Time_Pct = '--';
$CPU3_Freq12_Time_Pct = '--';
$CPU3_Freq13_Time_Pct = '--';
$CPU3_Freq14_Time_Pct = '--';
$CPU3_Mhz1 = '--';
$CPU3_Mhz2 = '--';
$CPU3_Mhz3 = '--';
$CPU3_Mhz4 = '--';
$CPU3_Mhz5 = '--';
$CPU3_Mhz6 = '--';
$CPU3_Mhz7 = '--';
$CPU3_Mhz8 = '--';
$CPU3_Mhz9 = '--';
$CPU3_Mhz10 = '--';
$CPU3_Mhz11 = '--';
$CPU3_Mhz12 = '--';
$CPU3_Mhz13 = '--';
$CPU3_Mhz14 = '--';

# Label Main Window
$myframe = $WinMain -> Frame ();
$myframe -> Label(-text => 'Utilite2 CPU Activity & Frequency Data', -font => "helvetica 15 bold") -> pack ();
$myframe -> pack ();

# Uptime & Idletime
$myframeup = $WinMain -> Frame (-relief => 'groove', -bd => 5);
$Uptime_Label = $myframeup -> Label (-text => 'System Up Time = '."$Uptime_Hours".':'."$Uptime_Minutes".':'."$Uptime_Seconds".'(hr:min:sec)', -foreground => "red", -font => "helvetica 11") -> pack ();
$Idletime_Label = $myframeup -> Label (-text => 'Average System Idle Time (Per Core) = '."$Idletime_Hours".':'."Idletime_Minutes".':'."$Idletime_Seconds".'(hr:min:sec)', -foreground => "red", -font => "helvetica 11") -> pack ();
$Active_Time_Pct_Label = $myframeup -> Label ( - text => 'Average % Time Active = '."$Active_Time_Pct", -foreground => "red", -font => "helvetica 11") -> pack();
$Idle_Time_Pct_Label = $myframeup -> Label ( - text => 'Average % Time Idle = '."$Idle_Time_Pct", -foreground => "red", -font => "helvetica 11") -> pack();
$myframeup -> pack();

# CPU0 Parameters
$myframe0 = $WinMain -> Frame (-relief => 'groove', -bd => 5);
$myframe0 -> Label (-text => 'CPU0', -font => "helvetica 12 bold") -> pack ();
$CPU0_Min_Freq = `sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq`/1000;
$CPU0_Min_Label = $myframe0 -> Label(-text => 'Minimum = '."$CPU0_Min_Freq".' MHz', -foreground => 'blue', -font => "helvetica 11") -> pack ();
$CPU0_Max_Freq = `sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq`/1000;
$CPU0_Max_Label = $myframe0 -> Label (-text => 'Maximum = '."$CPU0_Max_Freq".' MHz', -foreground => 'red', -font => "helvetica 11") -> pack ();
$CPU0_Oper_Label = $myframe0 -> Label (-text => 'Operating = '."$CPU0_Oper_Freq".' MHz', -font => "helvetica 11")->pack();
$CPU0_Avg_Label = $myframe0 -> Label (-text => 'Average = '."$CPU0_Avg_Freq".' MHz', -foreground => 'purple', -font => "helvetica 11")->pack();
$CPU0_Freq1_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz1".'MHz = '."$CPU0_Freq1_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq2_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz2".'MHz = '."$CPU0_Freq2_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq3_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz3".'MHz = '."$CPU0_Freq3_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq4_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz4".'MHz = '."$CPU0_Freq4_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq5_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz5".'MHz = '."$CPU0_Freq5_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq6_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz6".'MHz = '."$CPU0_Freq6_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq7_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz7".'MHz = '."$CPU0_Freq7_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq8_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz8".'MHz = '."$CPU0_Freq8_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq9_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz9".'MHz = '."$CPU0_Freq9_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq10_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz10".'MHz = '."$CPU0_Freq10_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq11_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz11".'MHz = '."$CPU0_Freq11_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq12_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz12".'MHz = '."$CPU0_Freq12_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq13_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz13".'MHz = '."$CPU0_Freq13_Time_Pct", -font => "helvetica 11")->pack();
$CPU0_Freq14_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU0_Mhz14".'MHz = '."$CPU0_Freq14_Time_Pct", -font => "helvetica 11")->pack();
$myframe0 -> pack (-side => 'left');
$myframe0 -> pack (-padx => 10, -pady => 10);

# CPU1 Parameters
$myframe0 = $WinMain -> Frame (-relief => 'groove', -bd => 5);
$myframe0 -> Label (-text => 'CPU1', -font => "helvetica 12 bold") -> pack ();
$CPU1_Min_Freq = `sudo cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_min_freq`/1000;
$CPU1_Min_Label = $myframe0 -> Label(-text => 'Minimum = '."$CPU1_Min_Freq".' MHz', -foreground => 'blue', -font => "helvetica 11") -> pack ();
$CPU1_Max_Freq = `sudo cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_max_freq`/1000;
$CPU1_Max_Label = $myframe0 -> Label (-text => 'Maximum = '."$CPU1_Max_Freq".' MHz', -foreground => 'red', -font => "helvetica 11") -> pack ();
$CPU1_Oper_Label = $myframe0 -> Label (-text => 'Operating = '."$CPU1_Oper_Freq".' MHz', -font => "helvetica 11")->pack();
$CPU1_Avg_Label = $myframe0 -> Label (-text => 'Average = '."$CPU1_Avg_Freq".' MHz', -foreground => 'purple', -font => "helvetica 11")->pack();
$CPU1_Freq1_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz1".'MHz = '."$CPU1_Freq1_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq2_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz2".'MHz = '."$CPU1_Freq2_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq3_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz3".'MHz = '."$CPU1_Freq3_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq4_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz4".'MHz = '."$CPU1_Freq4_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq5_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz5".'MHz = '."$CPU1_Freq5_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq6_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz6".'MHz = '."$CPU1_Freq6_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq7_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz7".'MHz = '."$CPU1_Freq7_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq8_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz8".'MHz = '."$CPU1_Freq8_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq9_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz9".'MHz = '."$CPU1_Freq9_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq10_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz10".'MHz = '."$CPU1_Freq10_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq11_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz11".'MHz = '."$CPU1_Freq11_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq12_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz12".'MHz = '."$CPU1_Freq12_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq13_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz13".'MHz = '."$CPU1_Freq13_Time_Pct", -font => "helvetica 11")->pack();
$CPU1_Freq14_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU1_Mhz14".'MHz = '."$CPU1_Freq14_Time_Pct", -font => "helvetica 11")->pack();
$myframe0 -> pack (-side => 'left');
$myframe0 -> pack (-padx => 10, -pady => 10);

# CPU2 Parameters
$myframe0 = $WinMain -> Frame (-relief => 'groove', -bd => 5);
$myframe0 -> Label (-text => 'CPU2', -font => "helvetica 12 bold") -> pack ();
$CPU2_Min_Freq = `sudo cat /sys/devices/system/cpu/cpu2/cpufreq/cpuinfo_min_freq`/1000;
$CPU2_Min_Label = $myframe0 -> Label(-text => 'Minimum = '."$CPU2_Min_Freq".' MHz', -foreground => 'blue', -font => "helvetica 11") -> pack ();
$CPU2_Max_Freq = `sudo cat /sys/devices/system/cpu/cpu2/cpufreq/cpuinfo_max_freq`/1000;
$CPU2_Max_Label = $myframe0 -> Label (-text => 'Maximum = '."$CPU2_Max_Freq".' MHz', -foreground => 'red', -font => "helvetica 11") -> pack ();
$CPU2_Oper_Label = $myframe0 -> Label (-text => 'Operating = '."$CPU2_Oper_Freq".' MHz', -font => "helvetica 11")->pack();
$CPU2_Avg_Label = $myframe0 -> Label (-text => 'Average = '."$CPU2_Avg_Freq".' MHz', -foreground => 'purple', -font => "helvetica 11")->pack();
$CPU2_Freq1_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz1".'MHz = '."$CPU2_Freq1_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq2_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz2".'MHz = '."$CPU2_Freq2_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq3_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz3".'MHz = '."$CPU2_Freq3_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq4_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz4".'MHz = '."$CPU2_Freq4_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq5_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz5".'MHz = '."$CPU2_Freq5_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq6_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz6".'MHz = '."$CPU2_Freq6_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq7_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz7".'MHz = '."$CPU2_Freq7_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq8_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz8".'MHz = '."$CPU2_Freq8_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq9_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz9".'MHz = '."$CPU2_Freq9_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq10_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz10".'MHz = '."$CPU2_Freq10_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq11_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz11".'MHz = '."$CPU2_Freq11_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq12_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz12".'MHz = '."$CPU2_Freq12_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq13_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz13".'MHz = '."$CPU2_Freq13_Time_Pct", -font => "helvetica 11")->pack();
$CPU2_Freq14_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU2_Mhz14".'MHz = '."$CPU2_Freq14_Time_Pct", -font => "helvetica 11")->pack();
$myframe0 -> pack (-side => 'left');
$myframe0 -> pack (-padx => 10, -pady => 10);

# CPU3 Parameters
$myframe0 = $WinMain -> Frame (-relief => 'groove', -bd => 5);
$myframe0 -> Label (-text => 'CPU3', -font => "helvetica 12 bold") -> pack ();
$CPU3_Min_Freq = `sudo cat /sys/devices/system/cpu/cpu3/cpufreq/cpuinfo_min_freq`/1000;
$CPU3_Min_Label = $myframe0 -> Label(-text => 'Minimum = '."$CPU3_Min_Freq".' MHz', -foreground => 'blue', -font => "helvetica 11") -> pack ();
$CPU3_Max_Freq = `sudo cat /sys/devices/system/cpu/cpu3/cpufreq/cpuinfo_max_freq`/1000;
$CPU3_Max_Label = $myframe0 -> Label (-text => 'Maximum = '."$CPU3_Max_Freq".' MHz', -foreground => 'red', -font => "helvetica 11") -> pack ();
$CPU3_Oper_Label = $myframe0 -> Label (-text => 'Operating = '."$CPU3_Oper_Freq".' MHz', -font => "helvetica 11")->pack();
$CPU3_Avg_Label = $myframe0 -> Label (-text => 'Average = '."$CPU3_Avg_Freq".' MHz', -foreground => 'purple', -font => "helvetica 11")->pack();
$CPU3_Freq1_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz1".'MHz = '."$CPU3_Freq1_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq2_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz2".'MHz = '."$CPU3_Freq2_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq3_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz3".'MHz = '."$CPU3_Freq3_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq4_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz4".'MHz = '."$CPU3_Freq4_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq5_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz5".'MHz = '."$CPU3_Freq5_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq6_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz6".'MHz = '."$CPU3_Freq6_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq7_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz7".'MHz = '."$CPU3_Freq7_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq8_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz8".'MHz = '."$CPU3_Freq8_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq9_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz9".'MHz = '."$CPU3_Freq9_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq10_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz10".'MHz = '."$CPU3_Freq10_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq11_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz11".'MHz = '."$CPU3_Freq11_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq12_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz12".'MHz = '."$CPU3_Freq12_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq13_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz13".'MHz = '."$CPU3_Freq13_Time_Pct", -font => "helvetica 11")->pack();
$CPU3_Freq14_Time_Pct_Label = $myframe0 -> Label (-text => '% Time @ '."$CPU3_Mhz14".'MHz = '."$CPU3_Freq14_Time_Pct", -font => "helvetica 11")->pack();
$myframe0 -> pack (-side => 'left');
$myframe0 -> pack (-padx => 10, -pady => 10);

$WinMain -> repeat(1000,\&GetCPUSpeed);
MainLoop();


#################################### Subroutine #####################################

sub GetCPUSpeed {


###################################### Up Time #######################################

# Read Uptime String
$Uptime_String = `cat /proc/uptime`;

# Store Uptime Into Array
@Uptime_Array = split ' ', $Uptime_String;

# Export Uptime Array Element as Variable
$Uptime = int ($Uptime_Array[0]);

# Compute Hours
$Uptime_Hours = int ($Uptime / 3600);
$Uptime = $Uptime % 3600;

# Compute Minutes
$Uptime_Minutes = int ($Uptime / 60);
$Uptime = $Uptime % 60;

# Compute Seconds
$Uptime_Seconds = $Uptime;


$Uptime_Label -> configure (-text => 'System Up Time = '."$Uptime_Hours".':'."$Uptime_Minutes".':'."$Uptime_Seconds".'(hr:min:sec)');


#################################### % Time Active #####################################

$Active_Time_Pct = sprintf ("%.1f" , (($Uptime_Array[0] - ($Uptime_Array[1]/4)) / $Uptime_Array[0]) * 100);

$Active_Time_Pct_Label -> configure (- text => 'Average % Time Active = '."$Active_Time_Pct");


#################################### % Time Idle #######################################


$Idle_Time_Pct = sprintf ("%.1f" , ((($Uptime_Array[1]/4) / $Uptime_Array[0]) * 100));

$Idle_Time_Pct_Label -> configure (- text => 'Average % Time Idle = '."$Idle_Time_Pct");


###################################### Idle Time #######################################


# Export Idletime Array Element as Variable
$Idletime = int (($Uptime_Array[1])/4);

# Compute Hours
$Idletime_Hours = int ($Idletime / 3600);
$Idletime = $Idletime % 3600;

# Compute Minutes
$Idletime_Minutes = int ($Idletime / 60);
$Idletime = $Idletime % 60;

# Compute Seconds
$Idletime_Seconds = $Idletime;


$Idletime_Label -> configure (-text => 'Average System Idle Time (Per Core) = '."$Idletime_Hours".':'."$Idletime_Minutes".':'."$Idletime_Seconds".'(hr:min:sec)');




####################################### CPU0 ########################################
$CPU0_Oper_Freq = `sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq`/1000;
$CPU0_Oper_Label -> configure (-text => 'Operating = '."$CPU0_Oper_Freq".' MHz');

# Read Time CPU0 Spends at Each Processor Speed
$CPU0_Time_In_State = `sudo cat /sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state`;

# Store CPU0 Time at Each Processor Speed Into Array
@CPU0_Time_Array = split ' ', $CPU0_Time_In_State;

# Export CPU0 Array Elements as Variables
$CPU0_Freq1 = $CPU0_Time_Array[0];
$CPU0_Ticks1 = $CPU0_Time_Array[1];
$CPU0_Freq2 = $CPU0_Time_Array[2];
$CPU0_Ticks2 = $CPU0_Time_Array[3];
$CPU0_Freq3 = $CPU0_Time_Array[4];
$CPU0_Ticks3 = $CPU0_Time_Array[5];
$CPU0_Freq4 = $CPU0_Time_Array[6];
$CPU0_Ticks4 = $CPU0_Time_Array[7];
$CPU0_Freq5 = $CPU0_Time_Array[8];
$CPU0_Ticks5 = $CPU0_Time_Array[9];
$CPU0_Freq6 = $CPU0_Time_Array[10];
$CPU0_Ticks6 = $CPU0_Time_Array[11];
$CPU0_Freq7 = $CPU0_Time_Array[12];
$CPU0_Ticks7 = $CPU0_Time_Array[13];
$CPU0_Freq8 = $CPU0_Time_Array[14];
$CPU0_Ticks8 = $CPU0_Time_Array[15];
$CPU0_Freq9 = $CPU0_Time_Array[16];
$CPU0_Ticks9 = $CPU0_Time_Array[17];
$CPU0_Freq10 = $CPU0_Time_Array[18];
$CPU0_Ticks10 = $CPU0_Time_Array[19];
$CPU0_Freq11 = $CPU0_Time_Array[20];
$CPU0_Ticks11 = $CPU0_Time_Array[21];
$CPU0_Freq12 = $CPU0_Time_Array[22];
$CPU0_Ticks12 = $CPU0_Time_Array[23];
$CPU0_Freq13 = $CPU0_Time_Array[24];
$CPU0_Ticks13 = $CPU0_Time_Array[25];
$CPU0_Freq14 = $CPU0_Time_Array[26];
$CPU0_Ticks14 = $CPU0_Time_Array[27];


# Compute Average Speed of CPU0
$CPU0_Avg_Freq = sprintf ("%.1f" , ((($CPU0_Freq1 * $CPU0_Ticks1) + ($CPU0_Freq2 * $CPU0_Ticks2) + ($CPU0_Freq3 * $CPU0_Ticks3) + ($CPU0_Freq4 * $CPU0_Ticks4) + ($CPU0_Freq5 * $CPU0_Ticks5) + ($CPU0_Freq6 * $CPU0_Ticks6) + ($CPU0_Freq7 * $CPU0_Ticks7) + ($CPU0_Freq8 * $CPU0_Ticks8) + ($CPU0_Freq9 * $CPU0_Ticks9) + ($CPU0_Freq10 * $CPU0_Ticks10) + ($CPU0_Freq11 * $CPU0_Ticks11) + ($CPU0_Freq12 * $CPU0_Ticks12) + ($CPU0_Freq13 * $CPU0_Ticks13) + ($CPU0_Freq14 * $CPU0_Ticks14)) / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14) / 1000));

$CPU0_Avg_Label -> configure (-text => 'Average = '."$CPU0_Avg_Freq".' MHz');

# Compute % Time CPU0 Operates at Each Frequency

# Frequency 1
$CPU0_Freq1_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks1 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz1 = $CPU0_Freq1 / 1000;
$CPU0_Freq1_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz1".'MHz = '."$CPU0_Freq1_Time_Pct");

# Frequency 2
$CPU0_Freq2_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks2 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz2 = $CPU0_Freq2 / 1000;
$CPU0_Freq2_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz2".'MHz = '."$CPU0_Freq2_Time_Pct");


# Frequency 3
$CPU0_Freq3_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks3 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz3 = $CPU0_Freq3 / 1000;
$CPU0_Freq3_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz3".'MHz = '."$CPU0_Freq3_Time_Pct");

# Frequency 4
$CPU0_Freq4_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks4 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz4 = $CPU0_Freq4 / 1000;
$CPU0_Freq4_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz4".'MHz = '."$CPU0_Freq4_Time_Pct");

# Frequency 5
$CPU0_Freq5_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks5 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz5 = $CPU0_Freq5 / 1000;
$CPU0_Freq5_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz5".'MHz = '."$CPU0_Freq5_Time_Pct");

# Frequency 6
$CPU0_Freq6_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks6 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz6 = $CPU0_Freq6 / 1000;
$CPU0_Freq6_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz6".'MHz = '."$CPU0_Freq6_Time_Pct");

# Frequency 7
$CPU0_Freq7_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks7 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz7 = $CPU0_Freq7 / 1000;
$CPU0_Freq7_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz7".'MHz = '."$CPU0_Freq7_Time_Pct");

# Frequency 8
$CPU0_Freq8_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks8 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz8 = $CPU0_Freq8 / 1000;
$CPU0_Freq8_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz8".'MHz = '."$CPU0_Freq8_Time_Pct");

# Frequency 9
$CPU0_Freq9_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks9 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz9 = $CPU0_Freq9 / 1000;
$CPU0_Freq9_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz9".'MHz = '."$CPU0_Freq9_Time_Pct");

# Frequency 10
$CPU0_Freq10_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks10 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz10 = $CPU0_Freq10 / 1000;
$CPU0_Freq10_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz10".'MHz = '."$CPU0_Freq10_Time_Pct");

# Frequency 11
$CPU0_Freq11_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks11 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz11 = $CPU0_Freq11 / 1000;
$CPU0_Freq11_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz11".'MHz = '."$CPU0_Freq11_Time_Pct");

# Frequency 12
$CPU0_Freq12_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks12 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz12 = $CPU0_Freq12 / 1000;
$CPU0_Freq12_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz12".'MHz = '."$CPU0_Freq12_Time_Pct");

# Frequency 13
$CPU0_Freq13_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks13 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz13 = $CPU0_Freq13 / 1000;
$CPU0_Freq13_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz13".'MHz = '."$CPU0_Freq13_Time_Pct");

# Frequency 14
$CPU0_Freq14_Time_Pct = sprintf ("%.2f" , (($CPU0_Ticks14 / ($CPU0_Ticks1 + $CPU0_Ticks2 + $CPU0_Ticks3 + $CPU0_Ticks4 + $CPU0_Ticks5 + $CPU0_Ticks6 + $CPU0_Ticks7 + $CPU0_Ticks8 + $CPU0_Ticks9 + $CPU0_Ticks10 + $CPU0_Ticks11 + $CPU0_Ticks12 + $CPU0_Ticks13 + $CPU0_Ticks14)) * 100));
$CPU0_Mhz14 = $CPU0_Freq14 / 1000;
$CPU0_Freq14_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU0_Mhz14".'MHz = '."$CPU0_Freq14_Time_Pct");





####################################### CPU1 ########################################
$CPU1_Oper_Freq = `sudo cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_cur_freq`/1000;
$CPU1_Oper_Label -> configure (-text => 'Operating = '."$CPU1_Oper_Freq".' MHz');

# Read Time CPU1 Spends at Each Processor Speed
$CPU1_Time_In_State = `sudo cat /sys/devices/system/cpu/cpu1/cpufreq/stats/time_in_state`;

# Store CPU1 Time at Each Processor Speed Into Array
@CPU1_Time_Array = split ' ', $CPU1_Time_In_State;

# Export CPU1 Array Elements as Variables
$CPU1_Freq1 = $CPU1_Time_Array[0];
$CPU1_Ticks1 = $CPU1_Time_Array[1];
$CPU1_Freq2 = $CPU1_Time_Array[2];
$CPU1_Ticks2 = $CPU1_Time_Array[3];
$CPU1_Freq3 = $CPU1_Time_Array[4];
$CPU1_Ticks3 = $CPU1_Time_Array[5];
$CPU1_Freq4 = $CPU1_Time_Array[6];
$CPU1_Ticks4 = $CPU1_Time_Array[7];
$CPU1_Freq5 = $CPU1_Time_Array[8];
$CPU1_Ticks5 = $CPU1_Time_Array[9];
$CPU1_Freq6 = $CPU1_Time_Array[10];
$CPU1_Ticks6 = $CPU1_Time_Array[11];
$CPU1_Freq7 = $CPU1_Time_Array[12];
$CPU1_Ticks7 = $CPU1_Time_Array[13];
$CPU1_Freq8 = $CPU1_Time_Array[14];
$CPU1_Ticks8 = $CPU1_Time_Array[15];
$CPU1_Freq9 = $CPU1_Time_Array[16];
$CPU1_Ticks9 = $CPU1_Time_Array[17];
$CPU1_Freq10 = $CPU1_Time_Array[18];
$CPU1_Ticks10 = $CPU1_Time_Array[19];
$CPU1_Freq11 = $CPU1_Time_Array[20];
$CPU1_Ticks11 = $CPU1_Time_Array[21];
$CPU1_Freq12 = $CPU1_Time_Array[22];
$CPU1_Ticks12 = $CPU1_Time_Array[23];
$CPU1_Freq13 = $CPU1_Time_Array[24];
$CPU1_Ticks13 = $CPU1_Time_Array[25];
$CPU1_Freq14 = $CPU1_Time_Array[26];
$CPU1_Ticks14 = $CPU1_Time_Array[27];


# Compute Average Speed of CPU1
$CPU1_Avg_Freq = sprintf ("%.1f" , ((($CPU1_Freq1 * $CPU1_Ticks1) + ($CPU1_Freq2 * $CPU1_Ticks2) + ($CPU1_Freq3 * $CPU1_Ticks3) + ($CPU1_Freq4 * $CPU1_Ticks4) + ($CPU1_Freq5 * $CPU1_Ticks5) + ($CPU1_Freq6 * $CPU1_Ticks6) + ($CPU1_Freq7 * $CPU1_Ticks7) + ($CPU1_Freq8 * $CPU1_Ticks8) + ($CPU1_Freq9 * $CPU1_Ticks9) + ($CPU1_Freq10 * $CPU1_Ticks10) + ($CPU1_Freq11 * $CPU1_Ticks11) + ($CPU1_Freq12 * $CPU1_Ticks12) + ($CPU1_Freq13 * $CPU1_Ticks13) + ($CPU1_Freq14 * $CPU1_Ticks14)) / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14) / 1000));

$CPU1_Avg_Label -> configure (-text => 'Average = '."$CPU1_Avg_Freq".' MHz');

# Compute % Time CPU1 Operates at Each Frequency

# Frequency 1
$CPU1_Freq1_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks1 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz1 = $CPU1_Freq1 / 1000;
$CPU1_Freq1_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz1".'MHz = '."$CPU1_Freq1_Time_Pct");

# Frequency 2
$CPU1_Freq2_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks2 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz2 = $CPU1_Freq2 / 1000;
$CPU1_Freq2_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz2".'MHz = '."$CPU1_Freq2_Time_Pct");


# Frequency 3
$CPU1_Freq3_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks3 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz3 = $CPU1_Freq3 / 1000;
$CPU1_Freq3_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz3".'MHz = '."$CPU1_Freq3_Time_Pct");

# Frequency 4
$CPU1_Freq4_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks4 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz4 = $CPU1_Freq4 / 1000;
$CPU1_Freq4_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz4".'MHz = '."$CPU1_Freq4_Time_Pct");

# Frequency 5
$CPU1_Freq5_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks5 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz5 = $CPU1_Freq5 / 1000;
$CPU1_Freq5_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz5".'MHz = '."$CPU1_Freq5_Time_Pct");

# Frequency 6
$CPU1_Freq6_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks6 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz6 = $CPU1_Freq6 / 1000;
$CPU1_Freq6_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz6".'MHz = '."$CPU1_Freq6_Time_Pct");

# Frequency 7
$CPU1_Freq7_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks7 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz7 = $CPU1_Freq7 / 1000;
$CPU1_Freq7_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz7".'MHz = '."$CPU1_Freq7_Time_Pct");

# Frequency 8
$CPU1_Freq8_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks8 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz8 = $CPU1_Freq8 / 1000;
$CPU1_Freq8_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz8".'MHz = '."$CPU1_Freq8_Time_Pct");

# Frequency 9
$CPU1_Freq9_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks9 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz9 = $CPU1_Freq9 / 1000;
$CPU1_Freq9_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz9".'MHz = '."$CPU1_Freq9_Time_Pct");

# Frequency 10
$CPU1_Freq10_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks10 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz10 = $CPU1_Freq10 / 1000;
$CPU1_Freq10_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz10".'MHz = '."$CPU1_Freq10_Time_Pct");

# Frequency 11
$CPU1_Freq11_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks11 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz11 = $CPU1_Freq11 / 1000;
$CPU1_Freq11_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz11".'MHz = '."$CPU1_Freq11_Time_Pct");

# Frequency 12
$CPU1_Freq12_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks12 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz12 = $CPU1_Freq12 / 1000;
$CPU1_Freq12_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz12".'MHz = '."$CPU1_Freq12_Time_Pct");

# Frequency 13
$CPU1_Freq13_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks13 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz13 = $CPU1_Freq13 / 1000;
$CPU1_Freq13_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz13".'MHz = '."$CPU1_Freq13_Time_Pct");

# Frequency 14
$CPU1_Freq14_Time_Pct = sprintf ("%.2f" , (($CPU1_Ticks14 / ($CPU1_Ticks1 + $CPU1_Ticks2 + $CPU1_Ticks3 + $CPU1_Ticks4 + $CPU1_Ticks5 + $CPU1_Ticks6 + $CPU1_Ticks7 + $CPU1_Ticks8 + $CPU1_Ticks9 + $CPU1_Ticks10 + $CPU1_Ticks11 + $CPU1_Ticks12 + $CPU1_Ticks13 + $CPU1_Ticks14)) * 100));
$CPU1_Mhz14 = $CPU1_Freq14 / 1000;
$CPU1_Freq14_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU1_Mhz14".'MHz = '."$CPU1_Freq14_Time_Pct");





####################################### CPU2 ########################################
$CPU2_Oper_Freq = `sudo cat /sys/devices/system/cpu/cpu2/cpufreq/cpuinfo_cur_freq`/1000;
$CPU2_Oper_Label -> configure (-text => 'Operating = '."$CPU2_Oper_Freq".' MHz');

# Read Time CPU2 Spends at Each Processor Speed
$CPU2_Time_In_State = `sudo cat /sys/devices/system/cpu/cpu2/cpufreq/stats/time_in_state`;

# Store CPU2 Time at Each Processor Speed Into Array
@CPU2_Time_Array = split ' ', $CPU2_Time_In_State;

# Export CPU2 Array Elements as Variables
$CPU2_Freq1 = $CPU2_Time_Array[0];
$CPU2_Ticks1 = $CPU2_Time_Array[1];
$CPU2_Freq2 = $CPU2_Time_Array[2];
$CPU2_Ticks2 = $CPU2_Time_Array[3];
$CPU2_Freq3 = $CPU2_Time_Array[4];
$CPU2_Ticks3 = $CPU2_Time_Array[5];
$CPU2_Freq4 = $CPU2_Time_Array[6];
$CPU2_Ticks4 = $CPU2_Time_Array[7];
$CPU2_Freq5 = $CPU2_Time_Array[8];
$CPU2_Ticks5 = $CPU2_Time_Array[9];
$CPU2_Freq6 = $CPU2_Time_Array[10];
$CPU2_Ticks6 = $CPU2_Time_Array[11];
$CPU2_Freq7 = $CPU2_Time_Array[12];
$CPU2_Ticks7 = $CPU2_Time_Array[13];
$CPU2_Freq8 = $CPU2_Time_Array[14];
$CPU2_Ticks8 = $CPU2_Time_Array[15];
$CPU2_Freq9 = $CPU2_Time_Array[16];
$CPU2_Ticks9 = $CPU2_Time_Array[17];
$CPU2_Freq10 = $CPU2_Time_Array[18];
$CPU2_Ticks10 = $CPU2_Time_Array[19];
$CPU2_Freq11 = $CPU2_Time_Array[20];
$CPU2_Ticks11 = $CPU2_Time_Array[21];
$CPU2_Freq12 = $CPU2_Time_Array[22];
$CPU2_Ticks12 = $CPU2_Time_Array[23];
$CPU2_Freq13 = $CPU2_Time_Array[24];
$CPU2_Ticks13 = $CPU2_Time_Array[25];
$CPU2_Freq14 = $CPU2_Time_Array[26];
$CPU2_Ticks14 = $CPU2_Time_Array[27];


# Compute Average Speed of CPU2
$CPU2_Avg_Freq = sprintf ("%.1f" , ((($CPU2_Freq1 * $CPU2_Ticks1) + ($CPU2_Freq2 * $CPU2_Ticks2) + ($CPU2_Freq3 * $CPU2_Ticks3) + ($CPU2_Freq4 * $CPU2_Ticks4) + ($CPU2_Freq5 * $CPU2_Ticks5) + ($CPU2_Freq6 * $CPU2_Ticks6) + ($CPU2_Freq7 * $CPU2_Ticks7) + ($CPU2_Freq8 * $CPU2_Ticks8) + ($CPU2_Freq9 * $CPU2_Ticks9) + ($CPU2_Freq10 * $CPU2_Ticks10) + ($CPU2_Freq11 * $CPU2_Ticks11) + ($CPU2_Freq12 * $CPU2_Ticks12) + ($CPU2_Freq13 * $CPU2_Ticks13) + ($CPU2_Freq14 * $CPU2_Ticks14)) / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14) / 1000));

$CPU2_Avg_Label -> configure (-text => 'Average = '."$CPU2_Avg_Freq".' MHz');

# Compute % Time CPU2 Operates at Each Frequency

# Frequency 1
$CPU2_Freq1_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks1 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz1 = $CPU2_Freq1 / 1000;
$CPU2_Freq1_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz1".'MHz = '."$CPU2_Freq1_Time_Pct");

# Frequency 2
$CPU2_Freq2_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks2 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz2 = $CPU2_Freq2 / 1000;
$CPU2_Freq2_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz2".'MHz = '."$CPU2_Freq2_Time_Pct");


# Frequency 3
$CPU2_Freq3_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks3 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz3 = $CPU2_Freq3 / 1000;
$CPU2_Freq3_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz3".'MHz = '."$CPU2_Freq3_Time_Pct");

# Frequency 4
$CPU2_Freq4_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks4 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz4 = $CPU2_Freq4 / 1000;
$CPU2_Freq4_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz4".'MHz = '."$CPU2_Freq4_Time_Pct");

# Frequency 5
$CPU2_Freq5_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks5 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz5 = $CPU2_Freq5 / 1000;
$CPU2_Freq5_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz5".'MHz = '."$CPU2_Freq5_Time_Pct");

# Frequency 6
$CPU2_Freq6_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks6 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz6 = $CPU2_Freq6 / 1000;
$CPU2_Freq6_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz6".'MHz = '."$CPU2_Freq6_Time_Pct");

# Frequency 7
$CPU2_Freq7_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks7 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz7 = $CPU2_Freq7 / 1000;
$CPU2_Freq7_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz7".'MHz = '."$CPU2_Freq7_Time_Pct");

# Frequency 8
$CPU2_Freq8_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks8 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz8 = $CPU2_Freq8 / 1000;
$CPU2_Freq8_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz8".'MHz = '."$CPU2_Freq8_Time_Pct");

# Frequency 9
$CPU2_Freq9_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks9 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz9 = $CPU2_Freq9 / 1000;
$CPU2_Freq9_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz9".'MHz = '."$CPU2_Freq9_Time_Pct");

# Frequency 10
$CPU2_Freq10_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks10 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz10 = $CPU2_Freq10 / 1000;
$CPU2_Freq10_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz10".'MHz = '."$CPU2_Freq10_Time_Pct");

# Frequency 11
$CPU2_Freq11_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks11 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz11 = $CPU2_Freq11 / 1000;
$CPU2_Freq11_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz11".'MHz = '."$CPU2_Freq11_Time_Pct");

# Frequency 12
$CPU2_Freq12_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks12 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz12 = $CPU2_Freq12 / 1000;
$CPU2_Freq12_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz12".'MHz = '."$CPU2_Freq12_Time_Pct");

# Frequency 13
$CPU2_Freq13_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks13 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz13 = $CPU2_Freq13 / 1000;
$CPU2_Freq13_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz13".'MHz = '."$CPU2_Freq13_Time_Pct");

# Frequency 14
$CPU2_Freq14_Time_Pct = sprintf ("%.2f" , (($CPU2_Ticks14 / ($CPU2_Ticks1 + $CPU2_Ticks2 + $CPU2_Ticks3 + $CPU2_Ticks4 + $CPU2_Ticks5 + $CPU2_Ticks6 + $CPU2_Ticks7 + $CPU2_Ticks8 + $CPU2_Ticks9 + $CPU2_Ticks10 + $CPU2_Ticks11 + $CPU2_Ticks12 + $CPU2_Ticks13 + $CPU2_Ticks14)) * 100));
$CPU2_Mhz14 = $CPU2_Freq14 / 1000;
$CPU2_Freq14_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU2_Mhz14".'MHz = '."$CPU2_Freq14_Time_Pct");




####################################### CPU3 ########################################
$CPU3_Oper_Freq = `sudo cat /sys/devices/system/cpu/cpu3/cpufreq/cpuinfo_cur_freq`/1000;
$CPU3_Oper_Label -> configure (-text => 'Operating = '."$CPU3_Oper_Freq".' MHz');

# Read Time CPU3 Spends at Each Processor Speed
$CPU3_Time_In_State = `sudo cat /sys/devices/system/cpu/cpu3/cpufreq/stats/time_in_state`;

# Store CPU3 Time at Each Processor Speed Into Array
@CPU3_Time_Array = split ' ', $CPU3_Time_In_State;

# Export CPU3 Array Elements as Variables
$CPU3_Freq1 = $CPU3_Time_Array[0];
$CPU3_Ticks1 = $CPU3_Time_Array[1];
$CPU3_Freq2 = $CPU3_Time_Array[2];
$CPU3_Ticks2 = $CPU3_Time_Array[3];
$CPU3_Freq3 = $CPU3_Time_Array[4];
$CPU3_Ticks3 = $CPU3_Time_Array[5];
$CPU3_Freq4 = $CPU3_Time_Array[6];
$CPU3_Ticks4 = $CPU3_Time_Array[7];
$CPU3_Freq5 = $CPU3_Time_Array[8];
$CPU3_Ticks5 = $CPU3_Time_Array[9];
$CPU3_Freq6 = $CPU3_Time_Array[10];
$CPU3_Ticks6 = $CPU3_Time_Array[11];
$CPU3_Freq7 = $CPU3_Time_Array[12];
$CPU3_Ticks7 = $CPU3_Time_Array[13];
$CPU3_Freq8 = $CPU3_Time_Array[14];
$CPU3_Ticks8 = $CPU3_Time_Array[15];
$CPU3_Freq9 = $CPU3_Time_Array[16];
$CPU3_Ticks9 = $CPU3_Time_Array[17];
$CPU3_Freq10 = $CPU3_Time_Array[18];
$CPU3_Ticks10 = $CPU3_Time_Array[19];
$CPU3_Freq11 = $CPU3_Time_Array[20];
$CPU3_Ticks11 = $CPU3_Time_Array[21];
$CPU3_Freq12 = $CPU3_Time_Array[22];
$CPU3_Ticks12 = $CPU3_Time_Array[23];
$CPU3_Freq13 = $CPU3_Time_Array[24];
$CPU3_Ticks13 = $CPU3_Time_Array[25];
$CPU3_Freq14 = $CPU3_Time_Array[26];
$CPU3_Ticks14 = $CPU3_Time_Array[27];


# Compute Average Speed of CPU3
$CPU3_Avg_Freq = sprintf ("%.1f" , ((($CPU3_Freq1 * $CPU3_Ticks1) + ($CPU3_Freq2 * $CPU3_Ticks2) + ($CPU3_Freq3 * $CPU3_Ticks3) + ($CPU3_Freq4 * $CPU3_Ticks4) + ($CPU3_Freq5 * $CPU3_Ticks5) + ($CPU3_Freq6 * $CPU3_Ticks6) + ($CPU3_Freq7 * $CPU3_Ticks7) + ($CPU3_Freq8 * $CPU3_Ticks8) + ($CPU3_Freq9 * $CPU3_Ticks9) + ($CPU3_Freq10 * $CPU3_Ticks10) + ($CPU3_Freq11 * $CPU3_Ticks11) + ($CPU3_Freq12 * $CPU3_Ticks12) + ($CPU3_Freq13 * $CPU3_Ticks13) + ($CPU3_Freq14 * $CPU3_Ticks14)) / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14) / 1000));

$CPU3_Avg_Label -> configure (-text => 'Average = '."$CPU3_Avg_Freq".' MHz');

# Compute % Time CPU3 Operates at Each Frequency

# Frequency 1
$CPU3_Freq1_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks1 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz1 = $CPU3_Freq1 / 1000;
$CPU3_Freq1_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz1".'MHz = '."$CPU3_Freq1_Time_Pct");

# Frequency 2
$CPU3_Freq2_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks2 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz2 = $CPU3_Freq2 / 1000;
$CPU3_Freq2_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz2".'MHz = '."$CPU3_Freq2_Time_Pct");


# Frequency 3
$CPU3_Freq3_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks3 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz3 = $CPU3_Freq3 / 1000;
$CPU3_Freq3_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz3".'MHz = '."$CPU3_Freq3_Time_Pct");

# Frequency 4
$CPU3_Freq4_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks4 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz4 = $CPU3_Freq4 / 1000;
$CPU3_Freq4_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz4".'MHz = '."$CPU3_Freq4_Time_Pct");

# Frequency 5
$CPU3_Freq5_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks5 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz5 = $CPU3_Freq5 / 1000;
$CPU3_Freq5_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz5".'MHz = '."$CPU3_Freq5_Time_Pct");

# Frequency 6
$CPU3_Freq6_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks6 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz6 = $CPU3_Freq6 / 1000;
$CPU3_Freq6_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz6".'MHz = '."$CPU3_Freq6_Time_Pct");

# Frequency 7
$CPU3_Freq7_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks7 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz7 = $CPU3_Freq7 / 1000;
$CPU3_Freq7_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz7".'MHz = '."$CPU3_Freq7_Time_Pct");

# Frequency 8
$CPU3_Freq8_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks8 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz8 = $CPU3_Freq8 / 1000;
$CPU3_Freq8_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz8".'MHz = '."$CPU3_Freq8_Time_Pct");

# Frequency 9
$CPU3_Freq9_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks9 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz9 = $CPU3_Freq9 / 1000;
$CPU3_Freq9_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz9".'MHz = '."$CPU3_Freq9_Time_Pct");

# Frequency 10
$CPU3_Freq10_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks10 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz10 = $CPU3_Freq10 / 1000;
$CPU3_Freq10_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz10".'MHz = '."$CPU3_Freq10_Time_Pct");

# Frequency 11
$CPU3_Freq11_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks11 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz11 = $CPU3_Freq11 / 1000;
$CPU3_Freq11_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz11".'MHz = '."$CPU3_Freq11_Time_Pct");

# Frequency 12
$CPU3_Freq12_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks12 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz12 = $CPU3_Freq12 / 1000;
$CPU3_Freq12_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz12".'MHz = '."$CPU3_Freq12_Time_Pct");

# Frequency 13
$CPU3_Freq13_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks13 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz13 = $CPU3_Freq13 / 1000;
$CPU3_Freq13_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz13".'MHz = '."$CPU3_Freq13_Time_Pct");

# Frequency 14
$CPU3_Freq14_Time_Pct = sprintf ("%.2f" , (($CPU3_Ticks14 / ($CPU3_Ticks1 + $CPU3_Ticks2 + $CPU3_Ticks3 + $CPU3_Ticks4 + $CPU3_Ticks5 + $CPU3_Ticks6 + $CPU3_Ticks7 + $CPU3_Ticks8 + $CPU3_Ticks9 + $CPU3_Ticks10 + $CPU3_Ticks11 + $CPU3_Ticks12 + $CPU3_Ticks13 + $CPU3_Ticks14)) * 100));
$CPU3_Mhz14 = $CPU3_Freq14 / 1000;
$CPU3_Freq14_Time_Pct_Label -> configure (-text => '% Time @ '."$CPU3_Mhz14".'MHz = '."$CPU3_Freq14_Time_Pct");



}


