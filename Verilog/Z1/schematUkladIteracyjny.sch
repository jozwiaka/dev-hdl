<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ai_1" />
        <signal name="ai_5" />
        <signal name="ai_6" />
        <signal name="ai_2" />
        <signal name="ai_3" />
        <signal name="ai_7" />
        <signal name="P1wy_8" />
        <signal name="P2wy_8" />
        <signal name="ai_4" />
        <signal name="ai_8" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_60" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <port polarity="Input" name="ai_1" />
        <port polarity="Input" name="ai_5" />
        <port polarity="Input" name="ai_6" />
        <port polarity="Input" name="ai_2" />
        <port polarity="Input" name="ai_3" />
        <port polarity="Input" name="ai_7" />
        <port polarity="Output" name="P1wy_8" />
        <port polarity="Output" name="P2wy_8" />
        <port polarity="Input" name="ai_4" />
        <port polarity="Input" name="ai_8" />
        <blockdef name="blokIteracyjny">
            <timestamp>2022-1-2T10:35:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="blokIteracyjny" name="blok_1">
            <blockpin signalname="ai_1" name="ai" />
            <blockpin signalname="XLXN_78" name="P2we" />
            <blockpin signalname="XLXN_79" name="P1we" />
            <blockpin signalname="XLXN_56" name="P2wy" />
            <blockpin signalname="XLXN_57" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_5">
            <blockpin signalname="ai_5" name="ai" />
            <blockpin signalname="XLXN_68" name="P2we" />
            <blockpin signalname="XLXN_69" name="P1we" />
            <blockpin signalname="XLXN_58" name="P2wy" />
            <blockpin signalname="XLXN_60" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_2">
            <blockpin signalname="ai_2" name="ai" />
            <blockpin signalname="XLXN_56" name="P2we" />
            <blockpin signalname="XLXN_57" name="P1we" />
            <blockpin signalname="XLXN_62" name="P2wy" />
            <blockpin signalname="XLXN_63" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_6">
            <blockpin signalname="ai_6" name="ai" />
            <blockpin signalname="XLXN_58" name="P2we" />
            <blockpin signalname="XLXN_60" name="P1we" />
            <blockpin signalname="XLXN_64" name="P2wy" />
            <blockpin signalname="XLXN_65" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_3">
            <blockpin signalname="ai_3" name="ai" />
            <blockpin signalname="XLXN_62" name="P2we" />
            <blockpin signalname="XLXN_63" name="P1we" />
            <blockpin signalname="XLXN_66" name="P2wy" />
            <blockpin signalname="XLXN_67" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_7">
            <blockpin signalname="ai_7" name="ai" />
            <blockpin signalname="XLXN_64" name="P2we" />
            <blockpin signalname="XLXN_65" name="P1we" />
            <blockpin signalname="XLXN_70" name="P2wy" />
            <blockpin signalname="XLXN_71" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_4">
            <blockpin signalname="ai_4" name="ai" />
            <blockpin signalname="XLXN_66" name="P2we" />
            <blockpin signalname="XLXN_67" name="P1we" />
            <blockpin signalname="XLXN_68" name="P2wy" />
            <blockpin signalname="XLXN_69" name="P1wy" />
        </block>
        <block symbolname="blokIteracyjny" name="blok_8">
            <blockpin signalname="ai_8" name="ai" />
            <blockpin signalname="XLXN_70" name="P2we" />
            <blockpin signalname="XLXN_71" name="P1we" />
            <blockpin signalname="P2wy_8" name="P2wy" />
            <blockpin signalname="P1wy_8" name="P1wy" />
        </block>
        <block symbolname="constant" name="P2we_1">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="constant" name="P1we_1">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_79" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="336" y="1232" name="blok_1" orien="R0">
        </instance>
        <branch name="ai_1">
            <wire x2="320" y1="1072" y2="1072" x1="304" />
            <wire x2="336" y1="1072" y2="1072" x1="320" />
        </branch>
        <iomarker fontsize="28" x="304" y="1072" name="ai_1" orien="R180" />
        <iomarker fontsize="28" x="304" y="1440" name="ai_5" orien="R180" />
        <instance x="976" y="1232" name="blok_2" orien="R0">
        </instance>
        <instance x="1008" y="1584" name="blok_6" orien="R0">
        </instance>
        <branch name="ai_6">
            <wire x2="1008" y1="1424" y2="1424" x1="976" />
        </branch>
        <branch name="ai_2">
            <wire x2="960" y1="1072" y2="1072" x1="944" />
            <wire x2="976" y1="1072" y2="1072" x1="960" />
        </branch>
        <iomarker fontsize="28" x="976" y="1424" name="ai_6" orien="R180" />
        <iomarker fontsize="28" x="944" y="1072" name="ai_2" orien="R180" />
        <instance x="1648" y="1216" name="blok_3" orien="R0">
        </instance>
        <instance x="1712" y="1584" name="blok_7" orien="R0">
        </instance>
        <branch name="ai_3">
            <wire x2="1632" y1="1056" y2="1056" x1="1584" />
            <wire x2="1648" y1="1056" y2="1056" x1="1632" />
        </branch>
        <branch name="ai_7">
            <wire x2="1712" y1="1424" y2="1424" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1424" name="ai_7" orien="R180" />
        <iomarker fontsize="28" x="1584" y="1056" name="ai_3" orien="R180" />
        <instance x="2368" y="1232" name="blok_4" orien="R0">
        </instance>
        <instance x="2416" y="1600" name="blok_8" orien="R0">
        </instance>
        <branch name="P1wy_8">
            <wire x2="2832" y1="1568" y2="1568" x1="2800" />
            <wire x2="3088" y1="1552" y2="1552" x1="2832" />
            <wire x2="2832" y1="1552" y2="1568" x1="2832" />
        </branch>
        <branch name="P2wy_8">
            <wire x2="2832" y1="1440" y2="1440" x1="2800" />
            <wire x2="2832" y1="1440" y2="1488" x1="2832" />
            <wire x2="3088" y1="1488" y2="1488" x1="2832" />
        </branch>
        <branch name="ai_4">
            <wire x2="2368" y1="1072" y2="1072" x1="2336" />
        </branch>
        <branch name="ai_8">
            <wire x2="2416" y1="1440" y2="1440" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1072" name="ai_4" orien="R180" />
        <iomarker fontsize="28" x="2384" y="1440" name="ai_8" orien="R180" />
        <branch name="XLXN_56">
            <wire x2="816" y1="1072" y2="1072" x1="720" />
            <wire x2="816" y1="1072" y2="1136" x1="816" />
            <wire x2="976" y1="1136" y2="1136" x1="816" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="976" y1="1200" y2="1200" x1="720" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="848" y1="1440" y2="1440" x1="720" />
            <wire x2="848" y1="1440" y2="1488" x1="848" />
            <wire x2="992" y1="1488" y2="1488" x1="848" />
            <wire x2="1008" y1="1488" y2="1488" x1="992" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="736" y1="1568" y2="1568" x1="720" />
            <wire x2="992" y1="1552" y2="1552" x1="736" />
            <wire x2="1008" y1="1552" y2="1552" x1="992" />
            <wire x2="736" y1="1552" y2="1568" x1="736" />
        </branch>
        <branch name="ai_5">
            <wire x2="320" y1="1440" y2="1440" x1="304" />
            <wire x2="336" y1="1440" y2="1440" x1="320" />
        </branch>
        <instance x="336" y="1600" name="blok_5" orien="R0">
        </instance>
        <branch name="XLXN_62">
            <wire x2="1456" y1="1072" y2="1072" x1="1360" />
            <wire x2="1456" y1="1072" y2="1120" x1="1456" />
            <wire x2="1648" y1="1120" y2="1120" x1="1456" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="1504" y1="1200" y2="1200" x1="1360" />
            <wire x2="1504" y1="1184" y2="1200" x1="1504" />
            <wire x2="1648" y1="1184" y2="1184" x1="1504" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1552" y1="1424" y2="1424" x1="1392" />
            <wire x2="1552" y1="1424" y2="1488" x1="1552" />
            <wire x2="1712" y1="1488" y2="1488" x1="1552" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1712" y1="1552" y2="1552" x1="1392" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2192" y1="1056" y2="1056" x1="2032" />
            <wire x2="2192" y1="1056" y2="1136" x1="2192" />
            <wire x2="2368" y1="1136" y2="1136" x1="2192" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2192" y1="1184" y2="1184" x1="2032" />
            <wire x2="2192" y1="1184" y2="1200" x1="2192" />
            <wire x2="2368" y1="1200" y2="1200" x1="2192" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="336" y1="1504" y2="1504" x1="256" />
            <wire x2="256" y1="1504" y2="1664" x1="256" />
            <wire x2="2816" y1="1664" y2="1664" x1="256" />
            <wire x2="2816" y1="1072" y2="1072" x1="2752" />
            <wire x2="2816" y1="1072" y2="1664" x1="2816" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="336" y1="1568" y2="1568" x1="272" />
            <wire x2="272" y1="1568" y2="1648" x1="272" />
            <wire x2="3040" y1="1648" y2="1648" x1="272" />
            <wire x2="3040" y1="1200" y2="1200" x1="2752" />
            <wire x2="3040" y1="1200" y2="1648" x1="3040" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2256" y1="1424" y2="1424" x1="2096" />
            <wire x2="2256" y1="1424" y2="1504" x1="2256" />
            <wire x2="2416" y1="1504" y2="1504" x1="2256" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="2256" y1="1552" y2="1552" x1="2096" />
            <wire x2="2256" y1="1552" y2="1568" x1="2256" />
            <wire x2="2416" y1="1568" y2="1568" x1="2256" />
        </branch>
        <instance x="64" y="1104" name="P2we_1" orien="R0">
        </instance>
        <branch name="XLXN_78">
            <wire x2="336" y1="1136" y2="1136" x1="208" />
        </branch>
        <instance x="64" y="1200" name="P1we_1" orien="R0">
        </instance>
        <branch name="XLXN_79">
            <wire x2="272" y1="1232" y2="1232" x1="208" />
            <wire x2="272" y1="1200" y2="1232" x1="272" />
            <wire x2="336" y1="1200" y2="1200" x1="272" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1488" name="P2wy_8" orien="R0" />
        <iomarker fontsize="28" x="3088" y="1552" name="P1wy_8" orien="R0" />
    </sheet>
</drawing>