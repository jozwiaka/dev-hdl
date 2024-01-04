<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="b0" />
        <signal name="MISO" />
        <signal name="in_data(7:0)" />
        <signal name="MOSI" />
        <signal name="RM(7:0)" />
        <signal name="XLXN_7" />
        <signal name="clkSeq" />
        <signal name="CS" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="b0" />
        <port polarity="Input" name="MISO" />
        <port polarity="Input" name="in_data(7:0)" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Output" name="RM(7:0)" />
        <port polarity="Output" name="clkSeq" />
        <port polarity="Output" name="CS" />
        <blockdef name="divider_100kHz_to_1Hz">
            <timestamp>2022-1-26T13:22:54</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="sequenter">
            <timestamp>2022-1-26T13:23:7</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="register">
            <timestamp>2022-1-26T13:23:1</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divider_100kHz_to_1Hz" name="inst_divider_100kHz_to_1Hz">
            <blockpin signalname="clk" name="clk_in" />
            <blockpin signalname="XLXN_7" name="clk_out" />
        </block>
        <block symbolname="sequenter" name="inst_sequenter">
            <blockpin signalname="b0" name="b0" />
            <blockpin signalname="XLXN_7" name="clk" />
            <blockpin signalname="CS" name="CS" />
            <blockpin signalname="clkSeq" name="clkSeq" />
        </block>
        <block symbolname="register" name="inst_register">
            <blockpin signalname="clkSeq" name="clkSeq" />
            <blockpin signalname="b0" name="b0" />
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="CS" name="CS" />
            <blockpin signalname="in_data(7:0)" name="in_data(7:0)" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="RM(7:0)" name="RM(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1184" name="inst_sequenter" orien="R0">
        </instance>
        <instance x="1808" y="1296" name="inst_register" orien="R0">
        </instance>
        <instance x="480" y="1152" name="inst_divider_100kHz_to_1Hz" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="480" y1="1120" y2="1120" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="1120" name="clk" orien="R180" />
        <branch name="b0">
            <wire x2="1072" y1="944" y2="944" x1="1040" />
            <wire x2="1072" y1="944" y2="1088" x1="1072" />
            <wire x2="1088" y1="1088" y2="1088" x1="1072" />
            <wire x2="1488" y1="944" y2="944" x1="1072" />
            <wire x2="1488" y1="944" y2="1072" x1="1488" />
            <wire x2="1808" y1="1072" y2="1072" x1="1488" />
        </branch>
        <branch name="MISO">
            <wire x2="1808" y1="1136" y2="1136" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1136" name="MISO" orien="R180" />
        <branch name="in_data(7:0)">
            <wire x2="1808" y1="1264" y2="1264" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1264" name="in_data(7:0)" orien="R180" />
        <branch name="MOSI">
            <wire x2="2224" y1="1008" y2="1008" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1008" name="MOSI" orien="R0" />
        <branch name="RM(7:0)">
            <wire x2="2224" y1="1264" y2="1264" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1264" name="RM(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1040" y="944" name="b0" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="976" y1="1120" y2="1120" x1="864" />
            <wire x2="976" y1="1120" y2="1152" x1="976" />
            <wire x2="1088" y1="1152" y2="1152" x1="976" />
        </branch>
        <branch name="clkSeq">
            <wire x2="1568" y1="1152" y2="1152" x1="1472" />
            <wire x2="1616" y1="1152" y2="1152" x1="1568" />
            <wire x2="1568" y1="1152" y2="1392" x1="1568" />
            <wire x2="1616" y1="1008" y2="1152" x1="1616" />
            <wire x2="1808" y1="1008" y2="1008" x1="1616" />
        </branch>
        <branch name="CS">
            <wire x2="1520" y1="1088" y2="1088" x1="1472" />
            <wire x2="1600" y1="1088" y2="1088" x1="1520" />
            <wire x2="1600" y1="1088" y2="1200" x1="1600" />
            <wire x2="1808" y1="1200" y2="1200" x1="1600" />
            <wire x2="1520" y1="1088" y2="1376" x1="1520" />
            <wire x2="1520" y1="1376" y2="1376" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1376" name="CS" orien="R180" />
        <iomarker fontsize="28" x="1568" y="1392" name="clkSeq" orien="R90" />
    </sheet>
</drawing>