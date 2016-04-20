<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="st-microelectronics">
<description>&lt;b&gt;ST Microelectronics Devices&lt;/b&gt;&lt;p&gt;
Microcontrollers,  I2C components, linear devices&lt;p&gt;
http://www.st.com&lt;p&gt;
&lt;i&gt;Include st-microelectronics-2.lbr, st-microelectronics-3.lbr.&lt;p&gt;&lt;/i&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="L293D">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-10.16" y="21.336" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1-2EN" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="1A" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="1Y" x="-15.24" y="7.62" length="middle" direction="out"/>
<pin name="GND1" x="-15.24" y="2.54" length="middle" direction="pwr"/>
<pin name="GND2" x="-15.24" y="-2.54" length="middle" direction="pwr"/>
<pin name="2Y" x="-15.24" y="-7.62" length="middle" direction="out"/>
<pin name="2A" x="-15.24" y="-12.7" length="middle" direction="in"/>
<pin name="VCC2" x="-15.24" y="-17.78" length="middle" direction="pwr"/>
<pin name="VCC1" x="15.24" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="4A" x="15.24" y="12.7" length="middle" direction="in" rot="R180"/>
<pin name="4Y" x="15.24" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="GND3" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="GND4" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="3Y" x="15.24" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="3A" x="15.24" y="-12.7" length="middle" direction="in" rot="R180"/>
<pin name="3-4EN" x="15.24" y="-17.78" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L293D" prefix="IC">
<description>&lt;b&gt;PUSH-PULL 4 CHANNEL DRIVER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="L293D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL16">
<connects>
<connect gate="G$1" pin="1-2EN" pad="1"/>
<connect gate="G$1" pin="1A" pad="2"/>
<connect gate="G$1" pin="1Y" pad="3"/>
<connect gate="G$1" pin="2A" pad="7"/>
<connect gate="G$1" pin="2Y" pad="6"/>
<connect gate="G$1" pin="3-4EN" pad="9"/>
<connect gate="G$1" pin="3A" pad="10"/>
<connect gate="G$1" pin="3Y" pad="11"/>
<connect gate="G$1" pin="4A" pad="15"/>
<connect gate="G$1" pin="4Y" pad="14"/>
<connect gate="G$1" pin="GND1" pad="4"/>
<connect gate="G$1" pin="GND2" pad="5"/>
<connect gate="G$1" pin="GND3" pad="13"/>
<connect gate="G$1" pin="GND4" pad="12"/>
<connect gate="G$1" pin="VCC1" pad="16"/>
<connect gate="G$1" pin="VCC2" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="L293D" constant="no"/>
<attribute name="OC_FARNELL" value="9589619" constant="no"/>
<attribute name="OC_NEWARK" value="56P8249" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
<package name="MA03-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA04-1">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA03-1">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA03-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA03-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA03-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="V+">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-1.27" y="1.27" size="1.778" layer="96">&gt;VALUE</text>
<pin name="V+" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="V+" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="V+" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="05">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-1.3462" y1="0" x2="1.3462" y2="0" width="0.6096" layer="21"/>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.6096" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.5001" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="07">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-2.6162" y1="0" x2="2.6162" y2="0" width="0.6096" layer="21"/>
<wire x1="3.81" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.7" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="10">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-3.8862" y1="0" x2="3.8862" y2="0" width="0.6096" layer="21"/>
<wire x1="5.08" y1="0" x2="3.937" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.937" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="5" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="12">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-5.1562" y1="0" x2="5.1562" y2="0" width="0.6096" layer="21"/>
<wire x1="6.35" y1="0" x2="5.207" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.207" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" diameter="1.9304"/>
<pad name="2" x="6.35" y="0" drill="0.8128" diameter="1.9304"/>
<text x="-3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="6.3" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="15">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-6.4262" y1="0" x2="6.4262" y2="0" width="0.6096" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-5.715" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="7.5999" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="20">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-8.9662" y1="0" x2="8.9662" y2="0" width="0.6096" layer="21"/>
<wire x1="10.16" y1="0" x2="9.017" y2="0" width="0.6096" layer="51"/>
<wire x1="-10.16" y1="0" x2="-9.017" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-10.16" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="10.16" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-8.255" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="10.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="25">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-11.5062" y1="0" x2="11.5062" y2="0" width="0.6096" layer="21"/>
<wire x1="12.7" y1="0" x2="11.557" y2="0" width="0.6096" layer="51"/>
<wire x1="-12.7" y1="0" x2="-11.557" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.7" y="0" drill="0.8128" diameter="1.9304"/>
<pad name="2" x="12.7" y="0" drill="0.8128" diameter="1.9304"/>
<text x="-10.795" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="12.5999" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="30">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-14.0462" y1="0" x2="14.0462" y2="0" width="0.6096" layer="21"/>
<wire x1="15.24" y1="0" x2="14.097" y2="0" width="0.6096" layer="51"/>
<wire x1="-15.24" y1="0" x2="-14.097" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-13.335" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="15.2001" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="J">
<wire x1="-2.54" y1="0" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="1.27" width="0.1524" layer="94"/>
<circle x="-2.54" y="0" radius="0.254" width="0.4064" layer="94"/>
<circle x="2.54" y="0" radius="0.254" width="0.4064" layer="94"/>
<text x="-2.54" y="1.905" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="J" prefix="J">
<description>Bridge</description>
<gates>
<gate name="1" symbol="J" x="0" y="0"/>
</gates>
<devices>
<device name="5MM" package="05">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7MM" package="07">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10MM" package="10">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="12MM" package="12">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15MM" package="15">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="20MM" package="20">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="25MM" package="25">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="30MM" package="30">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="st-microelectronics" deviceset="L293D" device=""/>
<part name="SV1_ARDUINO" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="POWER" library="con-lstb" deviceset="MA03-1" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="V+" device=""/>
<part name="SV1_MOTOR" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="V+" device=""/>
<part name="J4" library="jumper" deviceset="J" device="12MM"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="J3" library="jumper" deviceset="J" device="12MM"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="J1" library="jumper" deviceset="J" device="12MM"/>
<part name="J2" library="jumper" deviceset="J" device="12MM"/>
<part name="J6" library="jumper" deviceset="J" device="25MM"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="7.62" y="134.62" size="1.778" layer="91">Motor controller for 28byj-48</text>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="38.1" y="58.42"/>
<instance part="SV1_ARDUINO" gate="1" x="-45.72" y="81.28"/>
<instance part="POWER" gate="G$1" x="-10.16" y="109.22"/>
<instance part="SUPPLY4" gate="1" x="22.86" y="38.1" rot="R180"/>
<instance part="SV1_MOTOR" gate="1" x="27.94" y="111.76"/>
<instance part="P+7" gate="1" x="5.08" y="111.76"/>
<instance part="SUPPLY1" gate="1" x="2.54" y="116.84"/>
<instance part="J4" gate="1" x="40.64" y="109.22"/>
<instance part="GND3" gate="1" x="-2.54" y="104.14"/>
<instance part="J3" gate="1" x="17.78" y="58.42"/>
<instance part="GND1" gate="1" x="12.7" y="55.88"/>
<instance part="P+1" gate="1" x="38.1" y="96.52"/>
<instance part="J1" gate="1" x="17.78" y="71.12"/>
<instance part="J2" gate="1" x="58.42" y="71.12"/>
<instance part="J6" gate="1" x="38.1" y="88.9" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="POWER" gate="G$1" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="J3" gate="1" pin="1"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
</net>
<net name="V+" class="0">
<segment>
<pinref part="POWER" gate="G$1" pin="3"/>
<wire x1="-2.54" y1="111.76" x2="2.54" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="1" pin="V+"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VCC2"/>
<pinref part="SUPPLY4" gate="1" pin="V+"/>
</segment>
</net>
<net name="PIN12" class="0">
<segment>
<pinref part="SV1_ARDUINO" gate="1" pin="4"/>
<wire x1="-38.1" y1="83.82" x2="-35.56" y2="83.82" width="0.1524" layer="91"/>
<label x="-35.56" y="83.82" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="12.7" y1="71.12" x2="10.16" y2="71.12" width="0.1524" layer="91"/>
<label x="10.16" y="71.12" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="J1" gate="1" pin="1"/>
</segment>
</net>
<net name="PIN11" class="0">
<segment>
<pinref part="SV1_ARDUINO" gate="1" pin="3"/>
<wire x1="-38.1" y1="81.28" x2="-35.56" y2="81.28" width="0.1524" layer="91"/>
<label x="-35.56" y="81.28" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<label x="10.16" y="45.72" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="2A"/>
<wire x1="22.86" y1="45.72" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN10" class="0">
<segment>
<pinref part="SV1_ARDUINO" gate="1" pin="2"/>
<wire x1="-38.1" y1="78.74" x2="-35.56" y2="78.74" width="0.1524" layer="91"/>
<label x="-35.56" y="78.74" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<label x="66.04" y="45.72" size="1.778" layer="95" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="3A"/>
<wire x1="66.04" y1="45.72" x2="53.34" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN9" class="0">
<segment>
<pinref part="SV1_ARDUINO" gate="1" pin="1"/>
<wire x1="-38.1" y1="76.2" x2="-35.56" y2="76.2" width="0.1524" layer="91"/>
<label x="-35.56" y="76.2" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="63.5" y1="71.12" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
<label x="68.58" y="71.12" size="1.778" layer="95" xref="yes"/>
<pinref part="J2" gate="1" pin="2"/>
</segment>
</net>
<net name="1_BLUE" class="0">
<segment>
<pinref part="SV1_MOTOR" gate="1" pin="4"/>
<wire x1="35.56" y1="114.3" x2="48.26" y2="114.3" width="0.1524" layer="91"/>
<label x="48.26" y="114.3" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="1Y"/>
<wire x1="22.86" y1="66.04" x2="20.32" y2="66.04" width="0.1524" layer="91"/>
<label x="20.32" y="66.04" size="1.778" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="1_PINK" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="3Y"/>
<wire x1="53.34" y1="50.8" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
<label x="55.88" y="50.8" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<label x="55.88" y="111.76" size="1.778" layer="95" xref="yes"/>
<pinref part="SV1_MOTOR" gate="1" pin="3"/>
<wire x1="55.88" y1="111.76" x2="35.56" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="1_YELLOW" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="2Y"/>
<wire x1="22.86" y1="50.8" x2="20.32" y2="50.8" width="0.1524" layer="91"/>
<label x="20.32" y="50.8" size="1.778" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="J4" gate="1" pin="2"/>
<wire x1="45.72" y1="109.22" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
<label x="55.88" y="109.22" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="1_ORANGE" class="0">
<segment>
<pinref part="SV1_MOTOR" gate="1" pin="1"/>
<wire x1="35.56" y1="106.68" x2="48.26" y2="106.68" width="0.1524" layer="91"/>
<label x="48.26" y="106.68" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="4Y"/>
<wire x1="53.34" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
<label x="55.88" y="66.04" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SV1_MOTOR" gate="1" pin="2"/>
<pinref part="J4" gate="1" pin="1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND4"/>
<pinref part="IC1" gate="G$1" pin="GND3"/>
<wire x1="53.34" y1="60.96" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<junction x="53.34" y="58.42"/>
<pinref part="IC1" gate="G$1" pin="GND1"/>
<wire x1="22.86" y1="58.42" x2="22.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="22.86" y1="58.42" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<junction x="22.86" y="58.42"/>
<pinref part="IC1" gate="G$1" pin="GND2"/>
<wire x1="22.86" y1="55.88" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
<pinref part="J3" gate="1" pin="2"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="POWER" gate="G$1" pin="2"/>
<pinref part="P+7" gate="1" pin="+5V"/>
<wire x1="5.08" y1="109.22" x2="-2.54" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<pinref part="IC1" gate="G$1" pin="3-4EN"/>
<wire x1="53.34" y1="40.64" x2="88.9" y2="40.64" width="0.1524" layer="91"/>
<wire x1="88.9" y1="40.64" x2="88.9" y2="88.9" width="0.1524" layer="91"/>
<wire x1="88.9" y1="88.9" x2="58.42" y2="88.9" width="0.1524" layer="91"/>
<wire x1="58.42" y1="88.9" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
<wire x1="55.88" y1="91.44" x2="40.64" y2="91.44" width="0.1524" layer="91"/>
<wire x1="40.64" y1="91.44" x2="38.1" y2="93.98" width="0.1524" layer="91"/>
<pinref part="J6" gate="1" pin="2"/>
<junction x="38.1" y="93.98"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VCC1"/>
<wire x1="53.34" y1="83.82" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="1-2EN"/>
<wire x1="22.86" y1="83.82" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<wire x1="38.1" y1="83.82" x2="53.34" y2="83.82" width="0.1524" layer="91"/>
<wire x1="22.86" y1="76.2" x2="22.86" y2="83.82" width="0.1524" layer="91"/>
<pinref part="J6" gate="1" pin="1"/>
<junction x="38.1" y="83.82"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="1A"/>
<pinref part="J1" gate="1" pin="2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="4A"/>
<pinref part="J2" gate="1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
