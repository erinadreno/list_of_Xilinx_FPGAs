List of Xilinx FPGAs
====================

This article contains general information about [field-programmable gate array](https://en.wikipedia.org/wiki/Field-programmable_gate_array "Field-programmable gate array") (FPGA) devices from [Xilinx](https://en.wikipedia.org/wiki/Xilinx "Xilinx"), based on official specifications.

The credit goes to the origial authors of https://en.wikipedia.org/wiki/List_of_Xilinx_FPGAs, admin [Drmies](https://wikipediasucks.co/forum/viewtopic.php?t=454) excluded.

Contents
--------

*   [1 Terminology](#Terminology)
    *   [1.1 Model naming](#Model-naming)
*   [2 Series overview](#Series-overview)
*   [3 Early FPGA devices](#Early-FPGA-Devices)
    *   [3.1 XC2000](#XC2000)
    *   [3.2 XC3000](#XC3000)
    *   [3.3 XC4000, Spartan](#XC4000-Spartan)
    *   [3.4 XC5200](#XC5200)
    *   [3.5 XC6200](#XC6200)
    *   [3.6 XC8100](#XC8100)
*   [4 Virtex, Spartan-II](#Virtex-Spartan-II)
*   [5 Virtex-II](#Virtex-II)
*   [6 Spartan-3](#Spartan-3)
*   [7 Virtex-4](#Virtex-4)
*   [8 Virtex-5](#Virtex-5)
*   [9 Virtex-6](#Virtex-6)
*   [10 Spartan-6](#Spartan-6)
*   [11 7 Series](#7-Series)
*   [12 UltraScale and UltraScale+](#UltraScale-and-UltraScale+-)
*   [13 Versal](#Versal)
*   [14 Alveo and Kria](#Alveo-and-Kria)
*   [15 FPGAs without integrated CPUs\[86\]](#FPGAs-without-integrated-CPUs-[86])
    *   [15.1 Artix](#Artix)
    *   [15.2 Kintex](#Kintex)
*   [16 References](#References)

# Terminology

The fields in the table listed below describe the following:

*   _Model_ – The marketing name for the device, assigned by Xilinx.
*   _Launch_ – Date when the product was announced.
*   _Sub-models_ – Some FPGA models have multiple sub-models.
*   _Flip-Flops (K)_ – The number of flip-flops embedded within the FPGA fabric.
*   _LUTs (K)_ – The number of lookup tables embedded within the FPGA fabric.
*   _DSP Slices_ – The number of digital signal processor slices embedded within the FPGA fabric.
*   _Peak DSP Performance (GMAC/s)_ – The maximum number of multiply-accumulate operations per second that can be performed by the digital signal processors that are embedded within the FPGA fabric. This is a theoretical best-case number.
*   _PCIe_ – Bus by which the device is attached to an external system.
*   _Max Distributed RAM (Mb)_ – Random Access Memory within the LUTs.[\[1\]](#cite_note-1)
*   _Total Block RAM (Mb)_ – On-chip RAM that is not integrated within the LUTs.
*   _UltraRAM (Mb)_ – An additional block of RAM that was introduced with the Zynq UltraScale+ FPGA line. UltraRAM can be powered down for extended periods of time.[\[2\]](#cite_note-2)

## Model naming 

The model name of most devices has some indication of its size, but the exact scheme used has varied over time:

*   The first Xilinx device, the XC2064, is named after the 64 CLBs it contains
*   After that, Xilinx started including a rough approximation of device capacity in equivalent gate count (which is measured by synthesizing a large benchmark design corpus to both a standard gate library and to a given FPGA device, then deriving an approximate conversion factor from that):
    *   XC2018 and all XC3000 devices use the gate count divided by 100 (ie. XC3020 is considered a rough equivalent of 2000 gates)[\[3\]](#cite_note-:4-3)
    *   XC4000, XC5200, XC6200, Spartan, Spartan-II, Spartan-3 (all kinds), Virtex, and Virtex-II (except for Virtex-II Pro) devices use the gate count divided by 1000 (ie. XC4003 is considered roughly equivalent to 3000 gates, XC3S5000 is considered roughly equivalent to 5 million gates). However, the device families differ in whether they use the low bound, average, or high bound of the conversion factor for the model name (eg. XC4003 uses the average of the estimated 2000-5000 gate range listed in the datasheet, while the functionally identical XCS05 uses the high bound of this range).
*   Virtex-II Pro and Virtex-4 devices instead started using an "equivalent logic cells" metric divided by 1000 (XC4VLX60 is considered to be an equivalent of 60000 logic cells). The logic cell is, nominally, a simple 4-input LUT paired with a flip-flop. The logic count is obtained by multiplying the LUT count of the device by an arbitrary effectiveness factor of 1.125 to account for the extra capacity of the hard CLB logic compared to a bare LUT.[\[4\]](#cite_note-4)
*   Virtex-5/6, Spartan-6, and 7 Series (not including Zynq-7000) continue using the same metric, but the effectiveness factor has been updated to 1.6, because of the upgrade from 4-input LUTs to 6-input LUTs.
*   UltraScale devices initially used the same "equivalent logic cells" metric, but divided by 10000 for the model name (ie. XCVU440 is considered to be equivalent to 4400000 logic cells), and with the effectiveness factor updated to 1.75 because of CLB upgrades. However, for marketing reasons, later versions of UltraScale data sheets instead started measuring device capacity in a new metric called "system logic cells", using an inflated conversion factor of 2.1875. This makes the model names seemingly unrelated to any device capacity measurements listed in the current data sheets.[\[5\]](#cite_note-5)
*   Zynq-7000, UltraScale+, and Versal devices abandon the idea of directly embedding logic capacity in the model name, assigning the names more or less arbitrarily.

# Series overview

<table>
	<tbody>
		<tr>
			<th>Generation
			</th>
			<th>Family
			</th>
			<th>Launch
			</th>
			<th>Process
			</th>
			<th>Internal operating voltage
			</th>
			<th>Notes
		</tr>
		<tr>
			<td rowspan=2><a href=#XC2000>XC2000</a>
			</td>
			<td>XC2000
			</td>
			<td>1985
			</td>
			<td>2000nm<sup id=cite_ref-:0_6-0 class=reference><a href=#cite_note-:0-6>[6]</a></sup>
			</td>
			<td>5V
			</td>
			<td>The original FPGA family. This and a few following generations were originally
				called LCA (Logic Cell Array) devices, but later FPGA gradually became the preferred
				term.
		</tr>
		<tr>
			<td>XC2000L
			</td>
			<td>1993<sup id=cite_ref-7 class=reference><a href=#cite_note-7>[7]</a></sup>
			</td>
			<td>
			</td>
			<td>3.3V
			</td>
			<td>Low voltage version of XC2000
		</tr>
		<tr>
			<td rowspan=6><a href=#XC3000>XC3000</a>
			</td>
			<td>XC3000
			</td>
			<td>1988
			</td>
			<td>1200nm<sup id=cite_ref-:0_6-1 class=reference><a href=#cite_note-:0-6>[6]</a></sup>
			</td>
			<td rowspan=2>5V
			</td>
			<td>Improved logic cell, adds intra-FPGA <a
					href=https://en.wikipedia.org/wiki/Three-state_logic
					title="Three-state logic">tri-state</a> bus support
		</tr>
		<tr>
			<td>XC3000A
			</td>
			<td>1993
			</td>
			<td>800nm<sup id=cite_ref-:4_3-1 class=reference><a href=#cite_note-:4-3>[3]</a></sup>
			</td>
			<td>XC3000 with more functionality
		</tr>
		<tr>
			<td>XC3000L
			</td>
			<td>1993
			</td>
			<td>
			</td>
			<td>3.3V
			</td>
			<td>Low voltage version of XC3000A
		</tr>
		<tr>
			<td>XC3100
			</td>
			<td>1992
			</td>
			<td>800nm<sup id=cite_ref-8 class=reference><a href=#cite_note-8>[8]</a></sup>
			</td>
			<td rowspan=2>5V
			</td>
			<td>Faster version of XC3000
		</tr>
		<tr>
			<td>XC3100A
			</td>
			<td>1994<sup id=cite_ref-9 class=reference><a href=#cite_note-9>[9]</a></sup>
			</td>
			<td>500nm
			</td>
			<td>Faster version of XC3000A
		</tr>
		<tr>
			<td>XC3100L
			</td>
			<td>1995<sup id=cite_ref-:9_10-0 class=reference><a href=#cite_note-:9-10>[10]</a></sup>
			</td>
			<td>
			</td>
			<td>3.3V
			</td>
			<td>Faster version of XC3000L
		</tr>
		<tr>
			<td rowspan=12><a href=#XC4000,_Spartan>XC4000</a>
			</td>
			<td>XC4000
			</td>
			<td>1991
			</td>
			<td>
			</td>
			<td>5V
			</td>
			<td>Improved logic cell, distributed <a
					href=https://en.wikipedia.org/wiki/Random-access_memory
					title="Random-access memory">RAM</a> support, features carry chains and <a
					href=https://en.wikipedia.org/wiki/JTAG title=JTAG>JTAG</a> support
		</tr>
		<tr>
			<td>XC4000A
			</td>
			<td>1991
			</td>
			<td>
			</td>
			<td>5V
			</td>
			<td>XC4000 with fewer routing resources, small chips
		</tr>
		<tr>
			<td>XC4000D
			</td>
			<td>1994<sup id=cite_ref-11 class=reference><a href=#cite_note-11>[11]</a></sup>
			</td>
			<td>
			</td>
			<td>5V
			</td>
			<td>Same as XC4000, but with non-functional RAM
		</tr>
		<tr>
			<td>XC4000H
			</td>
			<td>1993
			</td>
			<td>
			</td>
			<td>5V
			</td>
			<td>XC4000 with more, but less functional, IO cells (for higher pin count)
		</tr>
		<tr>
			<td>XC4000E
			</td>
			<td>1995<sup id=cite_ref-:10_12-0 class=reference><a
						href=#cite_note-:10-12>[12]</a></sup>
			</td>
			<td>500nm<sup id=cite_ref-:5_13-0 class=reference><a
						href=#cite_note-:5-13>[13]</a></sup>
			</td>
			<td>5V
			</td>
			<td>XC4000 upgrade with more functionality
		</tr>
		<tr>
			<td>XC4000L
			</td>
			<td>1995<sup id=cite_ref-:9_10-1 class=reference><a href=#cite_note-:9-10>[10]</a></sup>
			</td>
			<td>
			</td>
			<td>3.3V
			</td>
			<td>Low voltage version of XC4000E
		</tr>
		<tr>
			<td>XC4000EX
			</td>
			<td>1996<sup id=cite_ref-14 class=reference><a href=#cite_note-14>[14]</a></sup>
			</td>
			<td>500nm
			</td>
			<td>5V
			</td>
			<td>XC4000E upgrade with more routing resources, for larger devices
		</tr>
		<tr>
			<td>XC4000XL
			</td>
			<td>1997
			</td>
			<td>350nm<sup id=cite_ref-:6_15-0 class=reference><a
						href=#cite_note-:6-15>[15]</a></sup>
			</td>
			<td>3.3V
			</td>
			<td>Low voltage version of XC4000EX
		</tr>
		<tr>
			<td>XC4000XLA
			</td>
			<td>1998<sup id=cite_ref-:11_16-0 class=reference><a
						href=#cite_note-:11-16>[16]</a></sup>
			</td>
			<td>350nm,<sup id=cite_ref-:11_16-1 class=reference><a
						href=#cite_note-:11-16>[16]</a></sup> 250nm<sup id=cite_ref-:6_15-1
					class=reference><a href=#cite_note-:6-15>[15]</a></sup>
			</td>
			<td>3.3V
			</td>
			<td>XC4000XL upgrade with more functionality
		</tr>
		<tr>
			<td>XC4000XV
			</td>
			<td>1998
			</td>
			<td>250nm<sup id=cite_ref-:6_15-2 class=reference><a
						href=#cite_note-:6-15>[15]</a></sup>
			</td>
			<td>2.5V
			</td>
			<td>XC4000XLA variant with more routing resources (for large chips)
		</tr>
		<tr>
			<td>Spartan
			</td>
			<td>1998
			</td>
			<td>500nm, 350nm<sup id=cite_ref-:7_17-0 class=reference><a
						href=#cite_note-:7-17>[17]</a></sup>
			</td>
			<td>5V
			</td>
			<td>Functionally identical to XC4000E, rebranded as low-end part
		</tr>
		<tr>
			<td>Spartan XL
			</td>
			<td>1998<sup id=cite_ref-:11_16-2 class=reference><a
						href=#cite_note-:11-16>[16]</a></sup>
			</td>
			<td>350nm,<sup id=cite_ref-:11_16-3 class=reference><a
						href=#cite_note-:11-16>[16]</a></sup> 250nm<sup id=cite_ref-:7_17-1
					class=reference><a href=#cite_note-:7-17>[17]</a></sup>
			</td>
			<td>3.3V
			</td>
			<td>Spartan upgrade with more functionality
		</tr>
		<tr>
			<td rowspan=2><a href=#XC5200>XC5200</a>
			</td>
			<td>XC5200
			</td>
			<td>1994
			</td>
			<td>600nm
			</td>
			<td>5V
			</td>
			<td>A low end FPGA family with bare bones logic cells
		</tr>
		<tr>
			<td>XC5200L
			</td>
			<td>
			</td>
			<td>500nm
			</td>
			<td>3.3V
			</td>
			<td>Low voltage version of XC5200
		</tr>
		<tr>
			<td colspan=2><a href=#XC6200>XC6200</a>
			</td>
			<td>1995<sup id=cite_ref-:10_12-1 class=reference><a
						href=#cite_note-:10-12>[12]</a></sup>
			</td>
			<td>650nm
			</td>
			<td>5V
			</td>
			<td>An unusual FPGA based on simple logic cells (not LUTs), meant to be used alongside a
				CPU and optimized for on-the-fly reconfiguration. The only FPGA to have a fully
				documented configuration format by Xilinx.
		</tr>
		<tr>
			<td colspan=2><a href=#XC8100>XC8100</a>
			</td>
			<td>1995<sup id=cite_ref-:10_12-2 class=reference><a
						href=#cite_note-:10-12>[12]</a></sup>
			</td>
			<td>
			</td>
			<td>5V or 3.3V
			</td>
			<td>A very unusual sea-of-gates FPGA, using one-time-programmable antifuse storage for
				the configuration (instead of RAM). Quickly discontinued in 1996.<sup id=cite_ref-18
					class=reference><a href=#cite_note-18>[18]</a></sup>
		</tr>
		<tr>
			<td rowspan=5><a href=#Virtex,_Spartan-II>Virtex</a>
			</td>
			<td>Virtex
			</td>
			<td>1998<sup id=cite_ref-19 class=reference><a href=#cite_note-19>[19]</a></sup>
			</td>
			<td rowspan=2>220nm<sup id=cite_ref-:5_13-1 class=reference><a
						href=#cite_note-:5-13>[13]</a></sup>
			</td>
			<td rowspan=2>2.5V
			</td>
			<td>Improved LUT4-based logic cell, first Xilinx FPGA family to feature <a
					href=https://en.wikipedia.org/wiki/Delay-locked_loop
					title="Delay-locked loop">DLLs</a> and block <a
					href=https://en.wikipedia.org/wiki/Random-access_memory
					title="Random-access memory">RAM</a>
		</tr>
		<tr>
			<td>Spartan-II
			</td>
			<td>2000
			</td>
			<td>Identical to Virtex, marketed as low-end part
		</tr>
		<tr>
			<td>Virtex E
			</td>
			<td>1999
			</td>
			<td rowspan=3>180nm
			</td>
			<td rowspan=3>1.8V
			</td>
			<td>Virtex upgrade with more block RAM, more DLLs, and improved IO cells (with
				differential IO support)
		</tr>
		<tr>
			<td>Virtex EM
			</td>
			<td>2000
			</td>
			<td>Like Virtex E, but with more block RAM
		</tr>
		<tr>
			<td>Spartan-IIE
			</td>
			<td>2001<sup id=cite_ref-20 class=reference><a href=#cite_note-20>[20]</a></sup>
			</td>
			<td>Identical to Virtex E, but with some blocks disabled
		</tr>
		<tr>
			<td rowspan=3><a href=#Virtex-II>Virtex-II</a>
			</td>
			<td>Virtex-II
			</td>
			<td>2001
			</td>
			<td>150nm
			</td>
			<td>1.5V
			</td>
			<td>First Xilinx FPGA family to feature partial reconfiguration and hard multipliers,
				has DDR input/output support, DLLs have been replaced by much more functional DCMs
		</tr>
		<tr>
			<td>Virtex-II Pro
			</td>
			<td>2002
			</td>
			<td rowspan=2>130nm<sup id=cite_ref-21 class=reference><a
						href=#cite_note-21>[21]</a></sup>
			</td>
			<td rowspan=2>1.2V
			</td>
			<td>Virtex-II upgrade featuring first-generation multi-gigabit transceivers (3.125
				Gbit/s, marketed as RocketIO™) and embedded <a
					href=https://en.wikipedia.org/wiki/PowerPC_400 title="PowerPC 400">PPC405</a>
				cores
		</tr>
		<tr>
			<td>Virtex-II Pro X
			</td>
			<td>2003<sup id=cite_ref-22 class=reference><a href=#cite_note-22>[22]</a></sup>
			</td>
			<td>Virtex-II Pro with multi-gigabit transceiver upgrade (RocketIO X, 6.25 Gbit/s)
		</tr>
		<tr>
			<td rowspan=5><a href=#Spartan-3>Spartan-3</a>
			</td>
			<td>Spartan-3
			</td>
			<td>2003
			</td>
			<td rowspan=5>90nm<sup id=cite_ref-:7_17-2 class=reference><a
						href=#cite_note-:7-17>[17]</a></sup>
			</td>
			<td rowspan=5>1.2V
			</td>
			<td>A low-end, simplified version of Virtex-II
		</tr>
		<tr>
			<td>Spartan-3E
			</td>
			<td>2004<sup id=cite_ref-23 class=reference><a href=#cite_note-23>[23]</a></sup>
			</td>
			<td>Spartan-3 upgrade with improved hard multipliers and DCMs, but fewer IO cells
		</tr>
		<tr>
			<td>Spartan-3A
			</td>
			<td>2006
			</td>
			<td>Spartan-3E upgrade with improved block RAM (featuring byte enables) and IO cells
		</tr>
		<tr>
			<td>Spartan-3AN
			</td>
			<td>2007
			</td>
			<td>Spartan-3A version with integrated <a
					href=https://en.wikipedia.org/wiki/Serial_Peripheral_Interface
					title="Serial Peripheral Interface">SPI</a> <a
					href=https://en.wikipedia.org/wiki/Flash_memory title="Flash memory">flash</a>
				(as a separate die within the same package), requiring no external bitstream storage
		</tr>
		<tr>
			<td>Spartan-3A DSP
			</td>
			<td>
			</td>
			<td>Spartan-3A upgrade with new DSP cells (based on Virtex-5 but simplified) replacing
				the simplistic hard multipliers
		</tr>
		<tr>
			<td rowspan=4><a href=#Virtex-4>Virtex-4</a>
			</td>
			<td>
			</td>
			<td rowspan=4>2004
			</td>
			<td rowspan=4>90nm
			</td>
			<td rowspan=4>1.2V
			</td>
			<td>Introduced <a href=https://en.wikipedia.org/wiki/Digital_signal_processing
					title="Digital signal processing">DSP</a> cells replacing the simple hard
				multipliers, added simple serdes functionality to all IO cells, improved partial
				reconfiguration support
		</tr>
		<tr>
			<td>Virtex-4 LX
			</td>
			<td>The base "logic optimized" version
		</tr>
		<tr>
			<td>Virtex-4 SX
			</td>
			<td>DSP-optimized version of Virtex-4: identical functionality to LX, but with much
				higher DSP-to-logic ratio
		</tr>
		<tr>
			<td>Virtex-4 FX
			</td>
			<td>Virtex-4 with embedded hard <a href=https://en.wikipedia.org/wiki/PowerPC_400
					title="PowerPC 400">PPC405</a> cores, <a
					href=https://en.wikipedia.org/wiki/Ethernet title=Ethernet>Ethernet</a> <a
					href=https://en.wikipedia.org/wiki/Medium_access_control
					title="Medium access control">MAC</a> blocks, and multi-gigabit transceivers
				(6.5 Gbit/s)
		</tr>
		<tr>
			<td rowspan=6><a href=#Virtex-5>Virtex-5</a>
			</td>
			<td>
			</td>
			<td rowspan=5>2006
			</td>
			<td rowspan=6>65nm
			</td>
			<td rowspan=6>1.0V
			</td>
			<td>Introduced new LUT6-based logic cells, new block RAM cells (36kbit, splittable to
				2×18kbit), new DSP cells; added new <a
					href=https://en.wikipedia.org/wiki/Phase-locked_loop
					title="Phase-locked loop">PLL</a> blocks in addition to DCM blocks
		</tr>
		<tr>
			<td>Virtex-5 LX
			</td>
			<td>The base "logic optimized" version
		</tr>
		<tr>
			<td>Virtex-5 LXT
			</td>
			<td>Adds multi-gigabit transceiver support on top of LX (RocketIO GTP transceivers, 3.75
				Gbit/s); also adds hard <a href=https://en.wikipedia.org/wiki/PCI_Express
					title="PCI Express">PCI Express</a> (Gen1 ×8) and gigabit Ethernet MAC blocks
		</tr>
		<tr>
			<td>Virtex-5 SXT
			</td>
			<td>DSP-optimized version of Virtex-5: identical functionality to LXT, but with much
				higher DSP-to-logic ratio
		</tr>
		<tr>
			<td>Virtex-5 FXT
			</td>
			<td>Virtex-5 with GTX transceivers (6.5 Gbit/s) and hard <a
					href=https://en.wikipedia.org/wiki/PowerPC_400 title="PowerPC 400">PPC440</a>
				cores
		</tr>
		<tr>
			<td>Virtex-5 TXT
			</td>
			<td>2009
			</td>
			<td>Transceiver-optimized version of Virtex-5: has large amount of GTX transceivers (no
				PPC cores)
		</tr>
		<tr>
			<td rowspan=6><a href=#Virtex-6>Virtex-6</a>
			</td>
			<td>
			</td>
			<td rowspan=5>2009
			</td>
			<td rowspan=6>40nm
			</td>
			<td rowspan=6>0.9V or 1.0V
			</td>
			<td>Replaces DCM blocks with MMCM blocks (which are an improved version of the existing
				PLL blocks), minor improvements to logic, DSP, block RAM, and IO cells
		</tr>
		<tr>
			<td>Virtex-6 LX
			</td>
			<td>The base "logic optimized" version
		</tr>
		<tr>
			<td>Virtex-6 LXT
			</td>
			<td>Adds multi-gigabit transceiver support on top of LX (GTX transceivers, up to 6.6
				Gbit/s); also adds hard PCI Express (Gen2 ×8) and gigabit Ethernet MAC blocks
		</tr>
		<tr>
			<td>Virtex-6 SXT
			</td>
			<td>DSP-optimized version of Virtex-6; identical functionality to LXT, but with much
				higher DSP-to-logic ratio
		</tr>
		<tr>
			<td>Virtex-6 HXT
			</td>
			<td>Transceiver-optimized version of Virtex-6: replaces GTX transceivers with GTH
				transceivers (11.2 Gb/s)
		</tr>
		<tr>
			<td>Virtex-6 CXT
			</td>
			<td>
			</td>
			<td>Identical to LXT, but with some transceivers and hard PCI Express / Ethernet MAC
				blocks disabled
		</tr>
		<tr>
			<td rowspan=2><a href=#Spartan-6>Spartan-6</a>
			</td>
			<td>Spartan-6 LX
			</td>
			<td rowspan=2>2009
			</td>
			<td rowspan=2>45nm
			</td>
			<td rowspan=2>1.0V or 1.2V
			</td>
			<td>A low-end family built from an amalgamation of Spartan-3A and Virtex-6 features; has
				a LUT6-based logic cell, slightly improved Spartan-3A DSP cell, 18kbit block RAMs
				(splittable into 2×9kbit), improved DCM blocks, PLL blocks, IO blocks with serdes
				support; also has a new hard memory controller block
		</tr>
		<tr>
			<td>Spartan-6 LXT
			</td>
			<td>Spartan-6 version with multi-gigabit transceivers (GTP, 3.2 Gbit/s) and hard PCI
				Express (Gen 1 ×1) block
		</tr>
		<tr>
			<td rowspan=8><a href=#7_Series>7 Series</a>
			</td>
			<td>
			</td>
			<td>2010
			</td>
			<td rowspan=8>28nm
			</td>
			<td rowspan=8>0.9V, 0.95V, or 1.0V
			</td>
			<td>A successor to the Virtex-6 family, with several separately-marketed sub-families
				that are made from essentially identical cells with a few exceptions; the IO cells
				have been split into two variants: HR (high range, 3.3V capable cells) and HP (high
				performance, 1.8V capable cells with DCI functionality)
		</tr>
		<tr>
			<td>Spartan 7
			</td>
			<td>2017
			</td>
			<td>Low-end logic-optimized parts, feature HRIO and no special blocks; several parts are
				identical to Artix parts with transceivers disabled
		</tr>
		<tr>
			<td>Artix-7
			</td>
			<td>2010
			</td>
			<td>Low-end parts, feature HRIO, GTP transceivers (6.6 Gbit/s), PCI-Express hard block
				(Gen 2.1 ×4)
		</tr>
		<tr>
			<td>Kintex-7
			</td>
			<td>2010
			</td>
			<td>Middle-end parts, feature HRIO and sometimes HPIO, GTX transceivers (12.5 Gbit/s),
				PCI-Express hard block (Gen 2.1 ×8)
		</tr>
		<tr>
			<td>Virtex-7
			</td>
			<td>2010
			</td>
			<td>High-end parts, feature HPIO and sometimes HRIO, GTX or GTH transceivers (13.1
				Gbit/s), PCI-Express hard block (Gen 2.1 ×8 or Gen 3 ×8)
		</tr>
		<tr>
			<td>Virtex-7 3D
			</td>
			<td>2011
			</td>
			<td>First FPGA made of multiple die in one package, using a special interposer die for
				very fast and wide inter-die interconnect, essentially presenting as a single
				unified device made of several "super logic regions" (SLRs)
		</tr>
		<tr>
			<td>Virtex-7 HT
			</td>
			<td>2012
			</td>
			<td>Virtex-7 3D version that also adds special ultra-high-speed GTZ transceivers (28.05
				Gbit/s) via a separate die in the same package
		</tr>
		<tr>
			<td>Zynq-7000
			</td>
			<td>2011
			</td>
			<td>An <a href=https://en.wikipedia.org/wiki/ARM_Cortex-A9 title="ARM Cortex-A9">ARM
					Cortex-A9</a> based <a href=https://en.wikipedia.org/wiki/System_on_a_chip
					title="System on a chip">system on a chip</a> integrated with an Artix-7 or a
				Kintex-7 FPGA on a single die
		</tr>
		<tr>
			<td rowspan=3><a href=#UltraScale_and_UltraScale+>UltraScale</a>
			</td>
			<td>
			</td>
			<td>2013<sup id=cite_ref-24 class=reference><a href=#cite_note-24>[24]</a></sup>
			</td>
			<td rowspan=3>20nm
			</td>
			<td rowspan=3>0.9V, 0.95V, or 1.0V
			</td>
			<td>A successor to 7 Series focused on scalability; features a new distributed clock
				distribution system as well as upgraded logic, DSP, and block RAM cells; hard blocks
				include the GTH transceivers (16.3 Gbit/s), GTY transceivers (30.5 Gbit/s), PCI
				Express (Gen3 ×8) blocks, 100G Ethernet MAC, 150G <a
					href=https://en.wikipedia.org/wiki/Interlaken_(networking)
					title="Interlaken (networking)">Interlaken</a> blocks
		</tr>
		<tr>
			<td>Kintex UltraScale
			</td>
			<td>2013
			</td>
			<td>Middle-end parts
		</tr>
		<tr>
			<td>Virtex UltraScale
			</td>
			<td>2014
			</td>
			<td>High-end parts
		</tr>
		<tr>
			<td rowspan=9><a href=#UltraScale_and_UltraScale+>UltraScale+</a>
			</td>
			<td>
			</td>
			<td>2015
			</td>
			<td rowspan=9>16nm
			</td>
			<td rowspan=9>0.72V, 0.85V, or 0.9V
			</td>
			<td>An UltraScale upgrade with faster GTY transceivers (32.75 Gbit/s) and improved hard
				blocks (PCI Express Gen3 ×16 or Gen4 ×8); HR IO is gone and replaced with simpler HD
				(High Density) IO; some parts feature new UltraRAM (288kbit RAM) blocks
		</tr>
		<tr>
			<td>Artix UltraScale+
			</td>
			<td>2021
			</td>
			<td>Low-end parts
		</tr>
		<tr>
			<td>Kintex UltraScale+
			</td>
			<td>2015
			</td>
			<td>Middle-end parts
		</tr>
		<tr>
			<td>Virtex UltraScale+
			</td>
			<td>2016
			</td>
			<td>High-end parts
		</tr>
		<tr>
			<td>Virtex UltraScale+ 58G
			</td>
			<td>
			</td>
			<td>Features new GTM transceivers (58 Gbit/s PAM4)
		</tr>
		<tr>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>
			</td>
			<td>Features <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory
					title="High Bandwidth Memory">High Bandwidth Memory</a> within the same package
				and an integrated hard memory controller inside the FPGA die
		</tr>
		<tr>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>2015
			</td>
			<td>An <a href=https://en.wikipedia.org/wiki/ARM_Cortex-A53 title="ARM Cortex-A53">ARM
					Cortex-A53</a> based system on a chip integrated with a Kintex UltraScale+ FPGA
				on the same die
		</tr>
		<tr>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>2017
			</td>
			<td>Like the MPSoC, but adds RF-DAC and RF-ADC blocks for high-speed radios (<a
					href=https://en.wikipedia.org/wiki/5G title=5G>5G</a> technology)
		</tr>
		<tr>
			<td>Alveo
			</td>
			<td>2018
			</td>
			<td>Alveo is a series of accelerator boards that are built on UltraScale+-series FPGAs
				that are identical to some Kintex/Virtex/Zynq devices, but are nominally considered
				to be distinct chip models
		</tr>
		<tr>
			<td rowspan=6><a href=#Versal>Versal</a>
			</td>
			<td>
			</td>
			<td>2019
			</td>
			<td rowspan=6>7nm
			</td>
			<td rowspan=6>0.7V, 0.8V, or 0.88V
			</td>
			<td>An <a href=https://en.wikipedia.org/wiki/ARM_Cortex-A72 title="ARM Cortex-A72">ARM
					Cortex-A72</a> based system on a chip integrated with a new version of FPGA
				fabric (with new logic, DSP, and block RAM cells), hard DDR <a
					href=https://en.wikipedia.org/wiki/Memory_controller
					title="Memory controller">memory controllers</a>, and a <a
					href=https://en.wikipedia.org/wiki/Network_on_a_chip
					title="Network on a chip">network-on-chip</a> (NoC) connecting all of the parts
				together
		</tr>
		<tr>
			<td>Versal Prime
			</td>
			<td>2019
			</td>
			<td>The base Versal parts
		</tr>
		<tr>
			<td>Versal AI Core
			</td>
			<td>2019
			</td>
			<td>Features the AI engine cores
		</tr>
		<tr>
			<td>Versal Premium
			</td>
			<td>
			</td>
			<td>Features high-bandwidth versions of the hard blocks
		</tr>
		<tr>
			<td>Versal AI Edge
			</td>
			<td>
			</td>
			<td>Lower-end version of AI Core
		</tr>
		<tr>
			<td>Versal HBM
			</td>
			<td>
			</td>
			<td>Features <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory
					title="High Bandwidth Memory">HBM</a> memory
</table>

Note: The process information for early FPGA devices (before Virtex) may be inaccurate, due to the devices being subject to [die shrink](https://en.wikipedia.org/wiki/Die_shrink "Die shrink") without changing the model name — the process listed above may not be the only process in which a given device has been manufactured.

# Early FPGA devices  

## XC2000 

The XC2000 devices have the following user-programmable blocks[\[25\]](#cite_note-25)

*   CLBs (Configurable Logic Blocks): each CLB consists of two 3-input LUTs, a hard multiplexer combining LUT outputs (which can be used to combine them to a single 4-input LUT, among other things) and one [flip-flop](https://en.wikipedia.org/wiki/Flip-flop_(electronics) "Flip-flop (electronics)") (with asynchronous set and reset capabilities)
*   User I/O blocks: each user I/O pin is associated with an I/O block, which consists of an input buffer, an input flip-flop, and a tri-state output buffer
*   One crystal oscillator amplifier
*   Two global clock buffers
<table>
	<tbody>
		<tr>
			<th>Model
			</th>
			<th>CLBs
			</th>
			<th>User I/O (max)
		</tr>
		<tr>
			<td>XC2064, XC2064L
			</td>
			<td>64 (8×8)
			</td>
			<td>58
		</tr>
		<tr>
			<td>XC2018, XC2018L
			</td>
			<td>100 (10×10)
			</td>
			<td>74
</table>

Note: the available user I/O amount varies with chip packaging.

## XC3000 

The XC3000 devices have the following user-programmable blocks[\[26\]](#cite_note-26)

*   CLBs (Configurable Logic Blocks): each CLB consists of two 4-input LUTs, a hard multiplexer combining LUT outputs (which can be used to combine them to a single 5-input LUT, among other things) and two flip-flops (with asynchronous set or reset capabilities)
*   User I/O blocks: each user I/O pin is associated with an I/O block, which consists of an input buffer, an input flip-flop, a tri-state output buffer, and an output flip-flop
*   Intra-FPGA tri-state buses, with tri-state buffers
*   One crystal oscillator amplifier
*   Two global clock buffers
<table>
	<tbody>
		<tr>
			<th>Model
			</th>
			<th>CLBs
			</th>
			<th>User I/O (max)
			</th>
			<th>Tri-state buses
			</th>
			<th>Tri-state buffers per bus
		</tr>
		<tr>
			<td>XC3020, XC3020A, XC3020L, XC3120, XC3120A
			</td>
			<td>64 (8×8)
			</td>
			<td>64
			</td>
			<td>16
			</td>
			<td>9
		</tr>
		<tr>
			<td>XC3030, XC3030A, XC3030L, XC3130, XC3130A
			</td>
			<td>100 (10×10)
			</td>
			<td>80
			</td>
			<td>20
			</td>
			<td>11
		</tr>
		<tr>
			<td>XC3042, XC3042A, XC3042L, XC3142, XC3142A, XC3142L
			</td>
			<td>144 (12×12)
			</td>
			<td>96
			</td>
			<td>24
			</td>
			<td>13
		</tr>
		<tr>
			<td>XC3064, XC3064A, XC3064L, XC3164, XC3164A
			</td>
			<td>224 (16×14)
			</td>
			<td>120
			</td>
			<td>32
			</td>
			<td>15
		</tr>
		<tr>
			<td>XC3090, XC3090A, XC3090L, XC3190, XC3190A, XC3190L
			</td>
			<td>320 (16×20)
			</td>
			<td>144
			</td>
			<td>40
			</td>
			<td>17
		</tr>
		<tr>
			<td>XC3195, XC3195A
			</td>
			<td>484 (22×22)
			</td>
			<td>176
			</td>
			<td>44
			</td>
			<td>23
</table>

Note: the available user I/O amount varies with chip packaging.

## XC4000, Spartan 

The XC4000 and Spartan devices have the following user-programmable blocks[\[27\]](#cite_note-27)[\[28\]](#cite_note-28)[\[29\]](#cite_note-29)[\[30\]](#cite_note-30)

*   CLBs (Configurable Logic Blocks), each CLB containing:
    *   two 4-input LUTs (F and G), which can be used as distributed RAM in 16×2 bit or 32×1 bit configurations (except on XC4000D devices)
    *   a 3-input LUT (H) that can combine F and G outputs (for example, to implement a 5-input LUT)
    *   two flip-flops (with clock enable and asynchronous set or reset)
    *   carry chain logic
*   User I/O blocks, one for each user I/O pin:
    *   input buffer
    *   tri-state output buffer
    *   programmable [pull-up](https://en.wikipedia.org/wiki/Pull-up_resistor "Pull-up resistor") or pull-down
    *   input flip-flop (except on XC4000H devices)
    *   output flip-flop (except on XC4000H devices)
    *   optional delay element
    *   fast capture latch (on some devices)
    *   output multiplexer (on some devices)
*   Edge decoders (essentially wide AND gates)
*   Intra-FPGA tri-state buses, with tri-state buffers
*   Global clock buffers
*   Miscellaneous configuration logic (startup and readback control, boundary scan logic allowing custom user [JTAG](https://en.wikipedia.org/wiki/JTAG "JTAG") opcodes)

<table>
	<caption>XC4000 family feature comparison
	</caption>
	<tbody>
		<tr>
			<th>Family
			</th>
			<th>Distributed RAM
			</th>
			<th>H-LUT inputs
			</th>
			<th>CLB flip-flop capabilities
			</th>
			<th>IOB capabilities
			</th>
			<th>Clock buffers
		</tr>
		<tr>
			<td>XC4000, XC4000A
			</td>
			<td rowspan=2>asynchronous
			</td>
			<td rowspan=3>1×F, 1×G, 1×general routing
			</td>
			<td rowspan=4>Flip-flop
			</td>
			<td>input and output flip-flops
			</td>
			<td rowspan=4>4 primary + 4 secondary global buffers
		</tr>
		<tr>
			<td>XC4000H
			</td>
			<td>no flip-flops
		</tr>
		<tr>
			<td>XC4000D
			</td>
			<td>none
			</td>
			<td>input and output flip-flops
		</tr>
		<tr>
			<td>XC4000E, XC4000L, Spartan
			</td>
			<td rowspan=3>synchronous or asynchronous write, asynchronous read
			</td>
			<td rowspan=3>3× any choice of F, G, general routing
			</td>
			<td>input and output flip-flops with clock enable
		</tr>
		<tr>
			<td>XC4000EX, XC4000XL, XC4000XLA, XC4000XV
			</td>
			<td rowspan=2>Flip-flop or latch
			</td>
			<td rowspan=2>input and output flip-flops with clock enable, fast capture latch, output
				multiplexer
			</td>
			<td>8 global buffers, 8 global low-skew buffers, 8 early clock buffers, 8 fast buffers
		</tr>
		<tr>
			<td>Spartan XL
			</td>
			<td>8 global low-skew buffers
</table>

<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)
	<tbody>
		<tr>
			<td>XC4002A
			</td>
			<td>XC4000A
			</td>
			<td>64 (8×8)
			</td>
			<td>64
		</tr>
		<tr>
			<td>XC4002XL
			</td>
			<td>XC4000XL
			</td>
			<td>64 (8×8)
			</td>
			<td>64
		</tr>
		<tr>
			<td>XC4003
			</td>
			<td>XC4000
			</td>
			<td>100 (10×10)
			</td>
			<td>80
		</tr>
		<tr>
			<td>XC4003A
			</td>
			<td>XC4000A
			</td>
			<td>100 (10×10)
			</td>
			<td>80
		</tr>
		<tr>
			<td>XC4003H
			</td>
			<td>XC4000H
			</td>
			<td>100 (10×10)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XC4003E
			</td>
			<td>XC4000E
			</td>
			<td>100 (10×10)
			</td>
			<td>80
		</tr>
		<tr>
			<td>XCS05
			</td>
			<td>Spartan
			</td>
			<td>100 (10×10)
			</td>
			<td>77
		</tr>
		<tr>
			<td>XCS05XL
			</td>
			<td>Spartan XL
			</td>
			<td>100 (10×10)
			</td>
			<td>77
		</tr>
		<tr>
			<td>XC4004A
			</td>
			<td>XC4000A
			</td>
			<td>144 (12×12)
			</td>
			<td>96
		</tr>
		<tr>
			<td>XC4005
			</td>
			<td>XC4000
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005A
			</td>
			<td>XC4000A
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005H
			</td>
			<td>XC4000H
			</td>
			<td>196 (14×14)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4005E
			</td>
			<td>XC4000E
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005L
			</td>
			<td>XC4000L
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005XL
			</td>
			<td>XC4000XL
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XCS10
			</td>
			<td>Spartan
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XCS10XL
			</td>
			<td>Spartan XL
			</td>
			<td>196 (14×14)
			</td>
			<td>112
		</tr>
		<tr>
			<td>XC4006
			</td>
			<td>XC4000
			</td>
			<td>256 (16×16)
			</td>
			<td>128
		</tr>
		<tr>
			<td>XC4006E
			</td>
			<td>XC4000E
			</td>
			<td>256 (16×16)
			</td>
			<td>128
		</tr>
		<tr>
			<td>XC4008
			</td>
			<td>XC4000
			</td>
			<td>324 (18×18)
			</td>
			<td>144
		</tr>
		<tr>
			<td>XC4008E
			</td>
			<td>XC4000E
			</td>
			<td>324 (18×18)
			</td>
			<td>144
		</tr>
		<tr>
			<td>XC4010
			</td>
			<td>XC4000
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010D
			</td>
			<td>XC4000D
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010E
			</td>
			<td>XC4000E
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010L
			</td>
			<td>XC4000L
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010XL
			</td>
			<td>XC4000XL
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XCS20
			</td>
			<td>Spartan
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XCS20XL
			</td>
			<td>Spartan XL
			</td>
			<td>400 (20×20)
			</td>
			<td>160
		</tr>
		<tr>
			<td>XC4013
			</td>
			<td>XC4000
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013D
			</td>
			<td>XC4000D
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013E
			</td>
			<td>XC4000E
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013L
			</td>
			<td>XC4000L
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013XL
			</td>
			<td>XC4000XL
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XCS30
			</td>
			<td>Spartan
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XCS30XL
			</td>
			<td>Spartan XL
			</td>
			<td>576 (24×24)
			</td>
			<td>192
		</tr>
		<tr>
			<td>XC4020E
			</td>
			<td>XC4000E
			</td>
			<td>784 (28×28)
			</td>
			<td>224
		</tr>
		<tr>
			<td>XC4020XL
			</td>
			<td>XC4000XL
			</td>
			<td>784 (28×28)
			</td>
			<td>224
		</tr>
		<tr>
			<td>XC4020XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>784 (28×28)
			</td>
			<td>224
		</tr>
		<tr>
			<td>XCS40
			</td>
			<td>Spartan
			</td>
			<td>784 (28×28)
			</td>
			<td>205
		</tr>
		<tr>
			<td>XCS40XL
			</td>
			<td>Spartan XL
			</td>
			<td>784 (28×28)
			</td>
			<td>205
		</tr>
		<tr>
			<td>XC4025E
			</td>
			<td>XC4000E
			</td>
			<td>1024 (32×32)
			</td>
			<td>256
		</tr>
		<tr>
			<td>XC4028EX
			</td>
			<td>XC4000EX
			</td>
			<td>1024 (32×32)
			</td>
			<td>256
		</tr>
		<tr>
			<td>XC4028XL
			</td>
			<td>XC4000XL
			</td>
			<td>1024 (32×32)
			</td>
			<td>256
		</tr>
		<tr>
			<td>XC4028XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>1024 (32×32)
			</td>
			<td>256
		</tr>
		<tr>
			<td>XC4036EX
			</td>
			<td>XC4000EX
			</td>
			<td>1296 (36×36)
			</td>
			<td>288
		</tr>
		<tr>
			<td>XC4036XL
			</td>
			<td>XC4000XL
			</td>
			<td>1296 (36×36)
			</td>
			<td>288
		</tr>
		<tr>
			<td>XC4036XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>1296 (36×36)
			</td>
			<td>288
		</tr>
		<tr>
			<td>XC4044XL
			</td>
			<td>XC4000XL
			</td>
			<td>1600 (40×40)
			</td>
			<td>320
		</tr>
		<tr>
			<td>XC4044XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>1600 (40×40)
			</td>
			<td>320
		</tr>
		<tr>
			<td>XC4052XL
			</td>
			<td>XC4000XL
			</td>
			<td>1936 (44×44)
			</td>
			<td>352
		</tr>
		<tr>
			<td>XC4052XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>1936 (44×44)
			</td>
			<td>352
		</tr>
		<tr>
			<td>XC4062XL
			</td>
			<td>XC4000XL
			</td>
			<td>2304 (48×48)
			</td>
			<td>384
		</tr>
		<tr>
			<td>XC4062XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>2304 (48×48)
			</td>
			<td>384
		</tr>
		<tr>
			<td>XC4085XL
			</td>
			<td>XC4000XL
			</td>
			<td>3136 (56×56)
			</td>
			<td>448
		</tr>
		<tr>
			<td>XC4085XLA
			</td>
			<td>XC4000XLA
			</td>
			<td>3136 (56×56)
			</td>
			<td>448
		</tr>
		<tr>
			<td>XC40110XV
			</td>
			<td>XC4000XV
			</td>
			<td>4096 (64×64)
			</td>
			<td>448
		</tr>
		<tr>
			<td>XC40150XV
			</td>
			<td>XC4000XV
			</td>
			<td>5184 (72×72)
			</td>
			<td>448
		</tr>
		<tr>
			<td>XC40200XV
			</td>
			<td>XC4000XV
			</td>
			<td>7056 (84×84)
			</td>
			<td>448
		</tr>
		<tr>
			<td>XC40250XV
			</td>
			<td>XC4000XV
			</td>
			<td>8464 (92×92)
			</td>
			<td>448
	<tfoot>
</table>

Note: the available user I/O amount varies with chip packaging.

## XC5200 

The XC5200 devices have the following user-programmable blocks[\[31\]](#cite_note-31)

*   CLBs (Configurable Logic Blocks): each CLB consists of 4 LCs (logic cells). Each logic cell consists of one 4-input LUT, a carry chain multiplexer, and one flip-flop (with clock enable and asynchronous reset). The CLB also has two dedicated multiplexers that can combine outputs of adjacent LCs (which can be used, among other purposes, to effectively combine the two 4-input LUTs into a 5-input LUT)
*   User I/O blocks: each user I/O pin is associated with an I/O block, which consists of an input buffer and a tri-state output buffer
*   Intra-FPGA tri-state buses, with tri-state buffers
*   One crystal oscillator amplifier
*   Four global clock buffers, one in each corner
*   Miscellaneous configuration logic (startup and readback control, boundary scan logic allowing custom user [JTAG](https://en.wikipedia.org/wiki/JTAG "JTAG") opcodes)

<table>
	<tbody>
		<tr>
			<th>Model
			</th>
			<th>CLBs
			</th>
			<th>User I/O (max)
		</tr>
		<tr>
			<td>XC5202, XC5202L
			</td>
			<td>64 (10×10)
			</td>
			<td>84
		</tr>
		<tr>
			<td>XC5204
			</td>
			<td>120 (10×12)
			</td>
			<td>124
		</tr>
		<tr>
			<td>XC5206, XC5206L
			</td>
			<td>196 (14×14)
			</td>
			<td>148
		</tr>
		<tr>
			<td>XC5210
			</td>
			<td>324 (18×18)
			</td>
			<td>196
		</tr>
		<tr>
			<td>XC5216, XC5216L
			</td>
			<td>484 (22×22)
			</td>
			<td>244
</table>

Note: the available user I/O amount varies with chip packaging.

## XC6200 

The XC6200 family is unusual in several ways[\[32\]](#cite_note-:8-32)

*   as opposed to other early FPGAs where a design always takes up the whole device and is synthesized once, then usually stored in flash storage, XC6200 is dynamically reconfigurable in arbitrarily small chunks (down to a single logic cell), and is meant to be used along with an external CPU that can modify parts of design in real time
*   the logic is not LUT based; instead, every logic cell consists of a [2-to-1 MUX](https://en.wikipedia.org/wiki/Multiplexer "Multiplexer") whose inputs can be inverted or tied to constants (to implement arbitrary 2-input logic function) and a flip-flop
*   the routing structure is fully documented, unusually simple, and hierarchical in nature, with the device made of 16×16 cell tiles and 4×4 cell blocks
*   the configuration data format is likewise fully documented in the data sheet,[\[32\]](#cite_note-:8-32) allowing (and encouraging) users to create logic designs without using vendor tools
*   the part of configuration RAM that corresponds to unused area of circuit is explicitly allowed to be used for unrelated data storage
<table>
	<tbody>
		<tr>
			<th>Model
			</th>
			<th>Logic cells
			</th>
			<th>IOBs
			</th>
			<th>Configuration RAM (bits)
			</th>
			<th>Notes
		</tr>
		<tr>
			<td>XC6209
			</td>
			<td>2304 (48×48)
			</td>
			<td>192
			</td>
			<td>36K
			</td>
			<td>listed as planned product, unclear if it ever reached production
		</tr>
		<tr>
			<td>XC6216
			</td>
			<td>4096 (64×64)
			</td>
			<td>256
			</td>
			<td>65K
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6236
			</td>
			<td>9216 (96×96)
			</td>
			<td>384
			</td>
			<td>147K
			</td>
			<td>listed as planned product, unclear if it ever reached production
		</tr>
		<tr>
			<td>XC6264
			</td>
			<td>16384 (128×128)
			</td>
			<td>512
			</td>
			<td>262K
			</td>
			<td>listed as planned product, unclear if it ever reached production
</table>

## XC8100 

The XC8100 family is unusual in several ways[\[32\]](#cite_note-:8-32)

*   The configuration storage is made of one-time programmable [antifuses](https://en.wikipedia.org/wiki/Antifuse#Antifuses_in_integrated_circuits "Antifuse"), as opposed to other FPGAs (which use RAM cells and need to have configuration reuploaded upon power-up) and to CPLDs (which use non-volatile but multiple time programmable [EPROM](https://en.wikipedia.org/wiki/EPROM "EPROM")/[EEPROM](https://en.wikipedia.org/wiki/EEPROM "EEPROM")/[flash](https://en.wikipedia.org/wiki/Flash_memory "Flash memory") storage).
*   The logic is not LUT based; instead, the device is made of logic cells, which have 4 general inputs (+1 cascade input), 1 general output (+1 cascade output) and can be configured as either an AND gate or a sum-of-products, whose inputs can be inverted or tied to constants. This arrangement allows, as special cases, construction of a 2-input MUX or a D latch within a single cell, or combining two cells configured as D latches to construct a D flip-flop.
<table>
	<tbody>
		<tr>
			<th>Model
			</th>
			<th>Logic cells
			</th>
			<th>User I/O (max)
			</th>
			<th>Notes
		</tr>
		<tr>
			<td>XC8100
			</td>
			<td>192 (24×8)
			</td>
			<td>32
			</td>
			<td>
		</tr>
		<tr>
			<td>XC8101
			</td>
			<td>384 (24×16)
			</td>
			<td>72
			</td>
			<td>
		</tr>
		<tr>
			<td>XC8103
			</td>
			<td>1024 (32×32)
			</td>
			<td>128
			</td>
			<td>
		</tr>
		<tr>
			<td>XC8106
			</td>
			<td>1728 (48×36)
			</td>
			<td>168
			</td>
			<td>
		</tr>
		<tr>
			<td>XC8109
			</td>
			<td>2688 (56×48)
			</td>
			<td>192
			</td>
			<td>
		</tr>
		<tr>
			<td>XC8112
			</td>
			<td>3744
			</td>
			<td>248
			</td>
			<td>planned product that never reached production
		</tr>
		<tr>
			<td>XC8116
			</td>
			<td>4800
			</td>
			<td>280
			</td>
			<td>planned product that never reached production
		</tr>
		<tr>
			<td>XC8120
			</td>
			<td>6144
			</td>
			<td>320
			</td>
			<td>planned product that never reached production
</table>

# Virtex, Spartan-II  

The Virtex and Spartan-II devices are made of the following user-programmable blocks:

*   CLBs (configurable logic blocks), each made of two mostly-independent SLICEs, where a SLICE contains:
    *   two 4-input LUTs, which can also be used as 16-bit distributed RAMs (which can be combined into 16×2 or 32×1 single-port or 16×1 dual port arrangements), or as 16-bit shift registers (which can be cascaded together to make longer shift registers)
    *   carry chain logic consisting of two MUXCY+XORCY cell pairs, for construction of efficient ALUs or wide logic functions
    *   two MULT\_AND cells, to be combined with MUXCY+XORCY for construction of efficient multipliers
    *   two hard multiplexer cells (MUXF5 and MUXF6) that can combine the LUT outputs together, allowing for efficient multiplexer tree construction or for construction of wider LUTs (5-input LUT out of two 4-input LUTs, or 6-input LUT out of four 4-input LUTs)
    *   two flip-flops with clock enable and (configurable as synchronous or asynchronous) set and reset inputs; they can also be used as latches
*   Intra-FPGA tri-state buses with tri-state buffers (two buffers per CLB)
*   4kbit [true dual port](https://en.wikipedia.org/wiki/Dual-ported_RAM "Dual-ported RAM") block RAMs, which can be used in 4096×1, 2048×2, 1024×4, 512×8, or 256×16 configurations
*   IOBs (I/O blocks), one per user I/O pin, containing:
    *   several kinds of input buffer (selectable by user):
        *   plain CMOS input buffer
        *   differential input buffer using a VREF (voltage reference) pin for advanced I/O standards
        *   (Virtex-E and Spartan-IIE only) differential input buffer using a pair of I/O pins for differential I/O standards (which has to be selected from a predefined list of pairs — each IOB has its associated other IOB that can be used to construct a differential pair)
    *   tristate output buffer
    *   configurable pull-up, pull-down, or keeper circuit
    *   three flip-flops (for input, output, tristate enable), identical to the ones in CLBs
*   the IOBs are grouped into 8 I/O banks (2 for each edge of the device), with each bank having a separate power supply, allowing for usage of several I/O standards with conflicting voltage requirements in a single device
*   DLLs ([delay-locked loops](https://en.wikipedia.org/wiki/Delay-locked_loop "Delay-locked loop")) that can be used to phase-align, deskew, and phase-shift incoming clock signals
*   4 global clock buffers
*   miscellaneous configuration logic (startup control, readback data capture, JTAG control)

The Virtex and Spartan-II devices are functionally identical to each other and differ only in available size range, performance, and packaging options. The Spartan-IIE devices use the same die as the corresponding Virtex E devices, but have some block RAM and DLLs disabled.
<table >
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				<p>(CLBs×4)
				</p>
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (4kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O differential pairs (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DLLs
	<tbody>
		<tr>
			<td>XC2S15
			</td>
			<td>Spartan-II<sup id=cite_ref-33 class=reference><a href=#cite_note-33>[33]</a></sup>
			</td>
			<td>96 (12×8)
			</td>
			<td>384
			</td>
			<td>4
			</td>
			<td>86
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S30
			</td>
			<td>Spartan-II
			</td>
			<td>216 (18×12)
			</td>
			<td>864
			</td>
			<td>6
			</td>
			<td>92
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV50
			</td>
			<td>Virtex<sup id=cite_ref-34 class=reference><a href=#cite_note-34>[34]</a></sup>
			</td>
			<td>384 (24×16)
			</td>
			<td>1536
			</td>
			<td>8
			</td>
			<td>180
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S50
			</td>
			<td>Spartan-II
			</td>
			<td>384 (24×16)
			</td>
			<td>1536
			</td>
			<td>8
			</td>
			<td>176
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV50E
			</td>
			<td>Virtex E<sup id=cite_ref-35 class=reference><a href=#cite_note-35>[35]</a></sup>
			</td>
			<td>384 (24×16)
			</td>
			<td>1536
			</td>
			<td>16
			</td>
			<td>176
			</td>
			<td>83
			</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S50E
			</td>
			<td>Spartan-IIE<sup id=cite_ref-36 class=reference><a href=#cite_note-36>[36]</a></sup>
			</td>
			<td>384 (24×16)
			</td>
			<td>1536
			</td>
			<td>8
			</td>
			<td>182
			</td>
			<td>83
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV100
			</td>
			<td>Virtex
			</td>
			<td>600 (30×20)
			</td>
			<td>2400
			</td>
			<td>10
			</td>
			<td>180
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S100
			</td>
			<td>Spartan-II
			</td>
			<td>600 (30×20)
			</td>
			<td>2400
			</td>
			<td>10
			</td>
			<td>176
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV100E
			</td>
			<td>Virtex E
			</td>
			<td>600 (30×20)
			</td>
			<td>2400
			</td>
			<td>20
			</td>
			<td>196
			</td>
			<td>83
			</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S100E
			</td>
			<td>Spartan-IIE
			</td>
			<td>600 (30×20)
			</td>
			<td>2400
			</td>
			<td>10
			</td>
			<td>202
			</td>
			<td>86
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV150
			</td>
			<td>Virtex
			</td>
			<td>864 (36×24)
			</td>
			<td>3456
			</td>
			<td>12
			</td>
			<td>260
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S150
			</td>
			<td>Spartan-II
			</td>
			<td>864 (36×24)
			</td>
			<td>3456
			</td>
			<td>12
			</td>
			<td>260
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S150E
			</td>
			<td>Spartan-IIE
			</td>
			<td>864 (36×24)
			</td>
			<td>3456
			</td>
			<td>12
			</td>
			<td>265
			</td>
			<td>114
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV200
			</td>
			<td>Virtex
			</td>
			<td>1176 (42×28)
			</td>
			<td>4704
			</td>
			<td>14
			</td>
			<td>284
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S200
			</td>
			<td>Spartan-II
			</td>
			<td>1176 (42×28)
			</td>
			<td>4704
			</td>
			<td>14
			</td>
			<td>284
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV200E
			</td>
			<td>Virtex E
			</td>
			<td>1176 (42×28)
			</td>
			<td>4704
			</td>
			<td>28
			</td>
			<td>284
			</td>
			<td>119
			</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S200E
			</td>
			<td>Spartan-IIE
			</td>
			<td>1176 (42×28)
			</td>
			<td>4704
			</td>
			<td>14
			</td>
			<td>289
			</td>
			<td>120
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV300
			</td>
			<td>Virtex
			</td>
			<td>1536 (48×32)
			</td>
			<td>6144
			</td>
			<td>16
			</td>
			<td>316
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV300E
			</td>
			<td>Virtex E
			</td>
			<td>1536 (48×32)
			</td>
			<td>6144
			</td>
			<td>32
			</td>
			<td>316
			</td>
			<td>137
			</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S300E
			</td>
			<td>Spartan-IIE
			</td>
			<td>1536 (48×32)
			</td>
			<td>6144
			</td>
			<td>16
			</td>
			<td>329
			</td>
			<td>120
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV400
			</td>
			<td>Virtex
			</td>
			<td>2400 (60×40)
			</td>
			<td>9600
			</td>
			<td>20
			</td>
			<td>404
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV400E
			</td>
			<td>Virtex E
			</td>
			<td>2400 (60×40)
			</td>
			<td>9600
			</td>
			<td>40
			</td>
			<td>404
			</td>
			<td>183
			</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S400E
			</td>
			<td>Spartan-IIE
			</td>
			<td>2400 (60×40)
			</td>
			<td>9600
			</td>
			<td>40
			</td>
			<td>410
			</td>
			<td>172
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV405E
			</td>
			<td>Virtex EM<sup id=cite_ref-37 class=reference><a href=#cite_note-37>[37]</a></sup>
			</td>
			<td>2400 (60×40)
			</td>
			<td>9600
			</td>
			<td>140
			</td>
			<td>404
			</td>
			<td>183
			</td>
			<td>8
		</tr>
		<tr>
			<td>XCV600
			</td>
			<td>Virtex
			</td>
			<td>3456 (72×48)
			</td>
			<td>13824
			</td>
			<td>24
			</td>
			<td>512
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV600E
			</td>
			<td>Virtex E
			</td>
			<td>3456 (72×48)
			</td>
			<td>13824
			</td>
			<td>72
			</td>
			<td>512
			</td>
			<td>247
			</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S600E
			</td>
			<td>Spartan-IIE
			</td>
			<td>3456 (72×48)
			</td>
			<td>13824
			</td>
			<td>72
			</td>
			<td>514
			</td>
			<td>205
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV800
			</td>
			<td>Virtex
			</td>
			<td>4704 (84×56)
			</td>
			<td>18816
			</td>
			<td>28
			</td>
			<td>512
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV812E
			</td>
			<td>Virtex EM
			</td>
			<td>4704 (84×56)
			</td>
			<td>18816
			</td>
			<td>280
			</td>
			<td>556
			</td>
			<td>201
			</td>
			<td>8
		</tr>
		<tr>
			<td>XCV1000
			</td>
			<td>Virtex
			</td>
			<td>6144 (96×64)
			</td>
			<td>24576
			</td>
			<td>32
			</td>
			<td>512
			</td>
			<td>-
			</td>
			<td>4
		</tr>
		<tr>
			<td>XCV1000E
			</td>
			<td>Virtex E
			</td>
			<td>6144 (96×64)
			</td>
			<td>24576
			</td>
			<td>96
			</td>
			<td>660
			</td>
			<td>281
			</td>
			<td>8
		</tr>
		<tr>
			<td>XCV1600E
			</td>
			<td>Virtex E
			</td>
			<td>7776 (108×72)
			</td>
			<td>31104
			</td>
			<td>144
			</td>
			<td>724
			</td>
			<td>344
			</td>
			<td>8
		</tr>
		<tr>
			<td>XCV2000E
			</td>
			<td>Virtex E
			</td>
			<td>9600 (120×80)
			</td>
			<td>38400
			</td>
			<td>160
			</td>
			<td>804
			</td>
			<td>344
			</td>
			<td>8
		</tr>
		<tr>
			<td>XCV2600E
			</td>
			<td>Virtex E
			</td>
			<td>12696 (138×92)
			</td>
			<td>50784
			</td>
			<td>184
			</td>
			<td>804
			</td>
			<td>344
			</td>
			<td>8
		</tr>
		<tr>
			<td>XCV3000E
			</td>
			<td>Virtex E
			</td>
			<td>16224 (156×104)
			</td>
			<td>64896
			</td>
			<td>208
			</td>
			<td>804
			</td>
			<td>344
			</td>
			<td>8
	<tfoot>
</table>
Note: the available user I/O amount varies with chip packaging. Additionally, not all I/Os can be used as part of a differential pair, so the available differential pair count can be smaller than half of the available I/O count.

# Virtex-II

The Virtex-II devices are made of the following user-programmable blocks:

*   CLBs (configurable logic blocks), which contain 4 logic SLICEs, which are an improved version of the Virtex SLICE, with the following differences:
    *   when used as distributed RAM, the LUTs of multiple SLICEs within a CLB can be combined to obtain the following RAM configurations:
        *   16×1 single port (half SLICE)
        *   16×2 single port (one SLICE)
        *   32×1 single port (one SLICE)
        *   64×1 single port (two SLICEs)
        *   128×1 single port (four SLICEs)
        *   16×1 dual port (two half-SLICEs — utilizes one LUT of two different SLICEs each)
        *   16×2 dual port (two SLICEs)
        *   32×1 dual port (two SLICEs)
        *   64×1 dual port (four SLICEs)
    *   the wide function multiplexers can now be used in a 4-level tree (as opposed to a 2-level tree on Virtex), allowing for construction of up to 8-input LUTs (out of 16 4-input LUTs from two neighbouring CLBs)
    *   the carry chain has been enhanced with the addition of an ORCY cell allowing for efficient [sum-of-products](https://en.wikipedia.org/wiki/Sum-of-products_expression "Sum-of-products expression") mapping
*   18kbit true dual port block RAMs, which can be used in 16386×1, 8192×2, 4096×4, 2048×9, 1024×18, 512×36 configurations (with the narrow configurations having only 16kbit available, since they cannot access the parity bits)
*   hard multiplier blocks (two signed 18-bit inputs, 36-bit output) — always exactly one per block RAM, since they reside in a shared tile
*   IOBs (I/O blocks), one per user I/O pin, which are an improved version of the Virtex IOB with the following differences:
    *   the three I/O flip-flops are replaced with pairs of flip-flops for DDR ([double data rate](https://en.wikipedia.org/wiki/Double_data_rate "Double data rate")) capability
    *   new DCI (Digitally Controlled Impedance) functionality — the device has a per-bank circuit that can utilize an external precision resistor pair connected to user I/O pins to calibrate I/O resistance on remaining user pins, providing very good impedance matching
    *   support for multiple new I/O standards, including native differential I/O
*   DCMs (digital clock managers), which replace Virtex DLLs, adding frequency synthesis and clock divider capability
*   16 global clock buffers
*   Miscellaneous configuration logic (startup control, readback data capture, JTAG control, and the ICAP — Internal Configuration Access Port). The ICAP can be used to dynamically reprogram parts of the FPGA after the initial configuration from within the FPGA itself.

Virtex-II Pro devices include some additional blocks:

*   RocketIO transceivers: high-speed parallel-to-serial transmitters and serial-to-parallel receivers with [clock data recovery](https://en.wikipedia.org/wiki/Clock_recovery "Clock recovery") and [8b/10b](https://en.wikipedia.org/wiki/8b/10b_encoding "8b/10b encoding") encoders/decoders. They have a speed range of 600 Mb/s to 3.125 Gb/s and parallel width of 8, 16, or 32 bits (or 10, 20, 40 bits in 8b10b bypass mode)
*   RocketIO X transceivers: improved transceivers with [64b/66b](https://en.wikipedia.org/wiki/64b/66b_encoding "64b/66b encoding") encoding/decoding (in addition to 8b/10b), speed range of 2.488 Gb/s to 6.25 Gb/s (XC2VPX20) or fixed speed of 4.25 Gb/s (XC2VPX70), and parallel width of 8, 16, 32, or 64 bits (or 10, 20, 40, 80 bits in 8b/10b bypass mode)
*   Embedded [PPC405](https://en.wikipedia.org/wiki/PowerPC_400 "PowerPC 400") cores
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				(CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Multiplier blocks and block RAMs (18kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Multi-gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PPC
				cores
	<tbody>
		<tr>
			<td>XC2V40
			</td>
			<td>Virtex-II<sup id=cite_ref-38 class=reference><a href=#cite_note-38>[38]</a></sup>
			</td>
			<td>64 (8×8)
			</td>
			<td>512
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>88
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V80
			</td>
			<td>Virtex-II
			</td>
			<td>128 (8×16)
			</td>
			<td>1024
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>120
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V250
			</td>
			<td>Virtex-II
			</td>
			<td>384 (16×24)
			</td>
			<td>3072
			</td>
			<td>24
			</td>
			<td>8
			</td>
			<td>200
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V500
			</td>
			<td>Virtex-II
			</td>
			<td>768 (24×32)
			</td>
			<td>6144
			</td>
			<td>32
			</td>
			<td>8
			</td>
			<td>264
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V1000
			</td>
			<td>Virtex-II
			</td>
			<td>1280 (32×40)
			</td>
			<td>10240
			</td>
			<td>40
			</td>
			<td>8
			</td>
			<td>432
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V1500
			</td>
			<td>Virtex-II
			</td>
			<td>1920 (40×48)
			</td>
			<td>15360
			</td>
			<td>48
			</td>
			<td>8
			</td>
			<td>528
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V2000
			</td>
			<td>Virtex-II
			</td>
			<td>2688 (48×56)
			</td>
			<td>21504
			</td>
			<td>56
			</td>
			<td>8
			</td>
			<td>624
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V3000
			</td>
			<td>Virtex-II
			</td>
			<td>3584 (56×64)
			</td>
			<td>28672
			</td>
			<td>96
			</td>
			<td>12
			</td>
			<td>720
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V4000
			</td>
			<td>Virtex-II
			</td>
			<td>5760 (72×80)
			</td>
			<td>46080
			</td>
			<td>120
			</td>
			<td>12
			</td>
			<td>912
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V6000
			</td>
			<td>Virtex-II
			</td>
			<td>8448 (88×96)
			</td>
			<td>67584
			</td>
			<td>144
			</td>
			<td>12
			</td>
			<td>1104
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V8000
			</td>
			<td>Virtex-II
			</td>
			<td>11648 (104×112)
			</td>
			<td>93184
			</td>
			<td>168
			</td>
			<td>12
			</td>
			<td>1108
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2VP2
			</td>
			<td>Virtex-II Pro<sup id=cite_ref-39 class=reference><a
						href=#cite_note-39>[39]</a></sup>
			</td>
			<td>352
			</td>
			<td>2816
			</td>
			<td>12
			</td>
			<td>4
			</td>
			<td>204
			</td>
			<td>RocketIO ×4
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC2VP4
			</td>
			<td>Virtex-II Pro
			</td>
			<td>752
			</td>
			<td>6016
			</td>
			<td>28
			</td>
			<td>4
			</td>
			<td>348
			</td>
			<td>RocketIO ×4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC2VP7
			</td>
			<td>Virtex-II Pro
			</td>
			<td>1232
			</td>
			<td>9856
			</td>
			<td>44
			</td>
			<td>4
			</td>
			<td>396
			</td>
			<td>RocketIO ×8
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC2VP20
			</td>
			<td>Virtex-II Pro
			</td>
			<td>2320
			</td>
			<td>18560
			</td>
			<td>88
			</td>
			<td>8
			</td>
			<td>564
			</td>
			<td>RocketIO ×8
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VPX20
			</td>
			<td>Virtex-II Pro X
			</td>
			<td>2448
			</td>
			<td>19584
			</td>
			<td>88
			</td>
			<td>8
			</td>
			<td>552
			</td>
			<td>RocketIO X ×8
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC2VP30
			</td>
			<td>Virtex-II Pro
			</td>
			<td>3424
			</td>
			<td>27392
			</td>
			<td>136
			</td>
			<td>8
			</td>
			<td>644
			</td>
			<td>RocketIO ×8
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP40
			</td>
			<td>Virtex-II Pro
			</td>
			<td>4848
			</td>
			<td>38784
			</td>
			<td>192
			</td>
			<td>8
			</td>
			<td>804
			</td>
			<td>RocketIO ×12
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP50
			</td>
			<td>Virtex-II Pro
			</td>
			<td>5904
			</td>
			<td>47232
			</td>
			<td>232
			</td>
			<td>8
			</td>
			<td>852
			</td>
			<td>RocketIO ×16
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP70
			</td>
			<td>Virtex-II Pro
			</td>
			<td>8272
			</td>
			<td>66176
			</td>
			<td>328
			</td>
			<td>8
			</td>
			<td>996
			</td>
			<td>RocketIO ×20
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VPX70
			</td>
			<td>Virtex-II Pro X
			</td>
			<td>8272
			</td>
			<td>66176
			</td>
			<td>308
			</td>
			<td>8
			</td>
			<td>992
			</td>
			<td>RocketIO X ×20
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP100
			</td>
			<td>Virtex-II Pro
			</td>
			<td>11024
			</td>
			<td>88192
			</td>
			<td>444
			</td>
			<td>12
			</td>
			<td>1164
			</td>
			<td>RocketIO ×20
			</td>
			<td>2
	<tfoot>
</table>

Note: the available user I/O and multi-gigabit transceiver amount varies with chip packaging.

Note: the CLB count for Virtex-II Pro devices is no longer a simple columns×rows multiplication, as the CLB grid contains holes for the PowerPC cores.

# Spartan-3 

The Spartan-3 devices are made of:

*   CLBs (configurable logic blocks), which are very similar to Virtex-II, with some modifications:
    *   Only two of the four SLICEs in the CLB can now be used as distributed RAM or shift registers. The SLICEs that can be used as distributed RAM or shift registers are called SLICEMs, and the remaining SLICEs are called SLICELs.
    *   The available distributed RAM configurations are now:
        *   16×1 single port (half SLICEM)
        *   16×2 single port (one SLICEM)
        *   32×1 single port (one SLICEM)
        *   64×1 single port (two SLICEMs)
        *   16×1 double port (one SLICEM)
        *   32×1 double port (two SLICEMs)
    *   The ORCY cell has been removed
*   18kbit true dual port block RAMs, with the following variants:
    *   Spartan-3, Spartan-3E: identical to Virtex-II
    *   Spartan-3A, Spartan-3AN: adds per-byte write enable signals
    *   Spartan-3A DSP: like Spartan-3A, plus adds optional output pipeline registers (for faster clock-to-out time)
*   hard multiplier blocks or DSP cells:
    *   Spartan-3: MULT18X18, identical to Virtex-II
    *   Spartan-3E, Spartan-3A, Spartan-3AN: MULT18X18SIO, adds extra input registers for faster pipelined operation
    *   Spartan-3A DSP: DSP48A, a complete DSP ALU consisting of an 18×18 multiplier plus 48-bit accumulator
*   IOBs (I/O blocks), one per user pin:
    *   Spartan-3: similar to Virtex-II, arranged in 8 banks
    *   Spartan-3E: simplified version, removes DCI capability, arranged in 4 banks (one for each device edge)
    *   Spartan-3A, Spartan-3AN, Spartan-3A DSP: like Spartan-3E, but with support for newer I/O standards, and with somewhat differing capabilities of top/bottom banks and left/right banks
*   DCMs, similar to Virtex-II
*   8 (Spartan-3) or 24 (Spartan-3E, 3A, 3AN, 3A DSP) global clock buffers
*   Miscellaneous configuration logic (like Virtex-II, but with disabled ICAP access)
*   Spartan-3A, 3AN, 3A DSP only: access to a unique device serial number (so-called device DNA)
*   Spartan-3AN only: access port to the in-package SPI flash
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				(CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (18kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Multiplier blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Differential I/O pairs (max)
	<tbody>
		<tr>
			<td>XC3S50
			</td>
			<td>Spartan-3<sup id=cite_ref-40 class=reference><a href=#cite_note-40>[40]</a></sup>
			</td>
			<td>192 (12×16)
			</td>
			<td>1536
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>124
			</td>
			<td>56
		</tr>
		<tr>
			<td>XC3S200
			</td>
			<td>Spartan-3
			</td>
			<td>480 (20×24)
			</td>
			<td>3840
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>4
			</td>
			<td>173
			</td>
			<td>76
		</tr>
		<tr>
			<td>XC3S400
			</td>
			<td>Spartan-3
			</td>
			<td>896 (28×32)
			</td>
			<td>7168
			</td>
			<td>16
			</td>
			<td>16
			</td>
			<td>4
			</td>
			<td>264
			</td>
			<td>116
		</tr>
		<tr>
			<td>XC3S1000, XC3S1000L
			</td>
			<td>Spartan-3
			</td>
			<td>1920 (40×48)
			</td>
			<td>15360
			</td>
			<td>24
			</td>
			<td>24
			</td>
			<td>4
			</td>
			<td>391
			</td>
			<td>175
		</tr>
		<tr>
			<td>XC3S1500, XC3S1500L
			</td>
			<td>Spartan-3
			</td>
			<td>3328 (52×64)
			</td>
			<td>26624
			</td>
			<td>32
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>487
			</td>
			<td>221
		</tr>
		<tr>
			<td>XC3S2000
			</td>
			<td>Spartan-3
			</td>
			<td>5120 (64×80)
			</td>
			<td>40960
			</td>
			<td>40
			</td>
			<td>40
			</td>
			<td>4
			</td>
			<td>565
			</td>
			<td>270
		</tr>
		<tr>
			<td>XC3S4000
			</td>
			<td>Spartan-3
			</td>
			<td>6912 (72×96)
			</td>
			<td>55296
			</td>
			<td>96
			</td>
			<td>96
			</td>
			<td>4
			</td>
			<td>633
			</td>
			<td>300
		</tr>
		<tr>
			<td>XC3S5000
			</td>
			<td>Spartan-3
			</td>
			<td>8320 (80×104)
			</td>
			<td>66560
			</td>
			<td>104
			</td>
			<td>104
			</td>
			<td>4
			</td>
			<td>633
			</td>
			<td>300
		</tr>
		<tr>
			<td>XC3S100E
			</td>
			<td>Spartan-3E<sup id=cite_ref-41 class=reference><a href=#cite_note-41>[41]</a></sup>
			</td>
			<td>240
			</td>
			<td>1920
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>108
			</td>
			<td>40
		</tr>
		<tr>
			<td>XC3S250E
			</td>
			<td>Spartan-3E
			</td>
			<td>612
			</td>
			<td>4896
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>4
			</td>
			<td>172
			</td>
			<td>68
		</tr>
		<tr>
			<td>XC3S500E
			</td>
			<td>Spartan-3E
			</td>
			<td>1164
			</td>
			<td>9312
			</td>
			<td>20
			</td>
			<td>20
			</td>
			<td>4
			</td>
			<td>232
			</td>
			<td>92
		</tr>
		<tr>
			<td>XC3S1200E
			</td>
			<td>Spartan-3E
			</td>
			<td>2168
			</td>
			<td>17344
			</td>
			<td>28
			</td>
			<td>28
			</td>
			<td>8
			</td>
			<td>304
			</td>
			<td>124
		</tr>
		<tr>
			<td>XC3S1600E
			</td>
			<td>Spartan-3E
			</td>
			<td>3688
			</td>
			<td>29504
			</td>
			<td>36
			</td>
			<td>36
			</td>
			<td>8
			</td>
			<td>376
			</td>
			<td>156
		</tr>
		<tr>
			<td>XC3S50A, XC3S50AN
			</td>
			<td>Spartan-3A/3AN<sup id=cite_ref-42 class=reference><a
						href=#cite_note-42>[42]</a></sup>
			</td>
			<td>176
			</td>
			<td>1408
			</td>
			<td>3
			</td>
			<td>3
			</td>
			<td>2
			</td>
			<td>144
			</td>
			<td>64
		</tr>
		<tr>
			<td>XC3S200A, XC3S200AN
			</td>
			<td>Spartan-3A/3AN
			</td>
			<td>448
			</td>
			<td>3584
			</td>
			<td>16
			</td>
			<td>16
			</td>
			<td>4
			</td>
			<td>248
			</td>
			<td>112
		</tr>
		<tr>
			<td>XC3S400A, XC3S400AN
			</td>
			<td>Spartan-3A/3AN
			</td>
			<td>896
			</td>
			<td>7168
			</td>
			<td>20
			</td>
			<td>20
			</td>
			<td>4
			</td>
			<td>311
			</td>
			<td>142
		</tr>
		<tr>
			<td>XC3S700A, XC3S700AN
			</td>
			<td>Spartan-3A/3AN
			</td>
			<td>1472
			</td>
			<td>11776
			</td>
			<td>20
			</td>
			<td>20
			</td>
			<td>8
			</td>
			<td>372
			</td>
			<td>165
		</tr>
		<tr>
			<td>XC3S1400A, XC3S1400AN
			</td>
			<td>Spartan-3A/3AN
			</td>
			<td>2816
			</td>
			<td>22528
			</td>
			<td>32
			</td>
			<td>32
			</td>
			<td>8
			</td>
			<td>502
			</td>
			<td>227
		</tr>
		<tr>
			<td>XC3SD1800A
			</td>
			<td>Spartan-3A DSP<sup id=cite_ref-43 class=reference><a
						href=#cite_note-43>[43]</a></sup>
			</td>
			<td>4160
			</td>
			<td>33280
			</td>
			<td>84
			</td>
			<td>DSP48A ×84
			</td>
			<td>8
			</td>
			<td>519
			</td>
			<td>227
		</tr>
		<tr>
			<td>XC3SD3400A
			</td>
			<td>Spartan-3A DSP
			</td>
			<td>5968
			</td>
			<td>47744
			</td>
			<td>126
			</td>
			<td>DSP48A ×126
			</td>
			<td>8
			</td>
			<td>469
			</td>
			<td>213
	<tfoot>
</table>

Note: the available user I/O amount varies with chip packaging. Additionally, not all I/Os can be used as part of a differential pair, so the available differential pair count can be smaller than half of the available I/O count.

Note: for families other than Spartan-3, the CLB grid is irregular and includes holes for block RAMs and DCMs, so the CLB count is not a simple multiplication of columns×rows

# Virtex-4 

The Virtex-4 devices are made of[\[44\]](#cite_note-44)[\[45\]](#cite_note-45)

*   CLBs (configurable logic blocks), almost unchanged from Spartan-3
*   18kbit true dual port block RAMs, very similar to Spartan-3A DSP, but with some new capabilities:
    *   two adjacent block RAMs can be combined to make a 32768×1 RAM
    *   each block RAM can be used in FIFO mode (in 4096×4, 2048×9, 1024×18, 512×36 configurations) where address inputs are replaced with hardware FIFO counter functionality
*   DSP48 blocks,[\[46\]](#cite_note-46) ALU blocks with 18×18 multiplier and 48-bit accumulator
*   IOBs (I/O blocks, one per user pin): in addition to Virtex-II capabilities, they support ISERDES and OSERDES blocks which do simple serial-to-parallel and parallel-to-serial conversion (2, 3, 4, 5, 6, 7, or 8 bit wide in SDR mode; 4, 6, 8, or 10 bit wide in DDR mode)
*   IOBs are arranged into I/O banks; in a change from earlier FPGAs with fixed bank number, number of I/O banks on Virtex-4 varies with device size, but banks now have a more uniform size of 16 or 32 I/O pins, with the exception of special bank 0 that contains dedicated configuration pins. Each bank has two or four I/O clock buffers for fast clocks used by the SERDES blocks.
*   DCMs, similar to Virtex-II/Spartan-3
*   PMCDs (phase-matched clock dividers), an unusual clock divider block
*   32 global clock buffers
*   Multiple clock regions, with 2 regional clock buffers per region
*   Miscellaneous configuration logic: like Virtex-II, plus:
    *   configuration data ECC checking circuitry
    *   32-bit user data access port

The Virtex-4 FX devices additionally contain:

*   RocketIO multi-gigabit transceivers with a speed range of 622 Mb/s to 6.5 Gb/s and parallel width of 8, 16, 32, or 64 bits (10, 20, 40, or 80 bits in 8b/10b bypass mode)
*   Embedded PPC405 cores
*   Embedded gigabit ethernet MAC blocks (two per PPC core)
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				(CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (18kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DSP48
				blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PMCDs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PPC
				cores
	<tbody>
		<tr>
			<td>XC4VLX15
			</td>
			<td>LX
			</td>
			<td>1536 (24×64)
			</td>
			<td>12288
			</td>
			<td>48
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>8
			</td>
			<td>9
			</td>
			<td>320
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX25
			</td>
			<td>LX
			</td>
			<td>2688 (28×96)
			</td>
			<td>21504
			</td>
			<td>72
			</td>
			<td>48
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>11
			</td>
			<td>448
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX40
			</td>
			<td>LX
			</td>
			<td>4608 (36×128)
			</td>
			<td>36864
			</td>
			<td>96
			</td>
			<td>64
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>16
			</td>
			<td>13
			</td>
			<td>640
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX60
			</td>
			<td>LX
			</td>
			<td>6656 (52×128)
			</td>
			<td>53248
			</td>
			<td>160
			</td>
			<td>64
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>16
			</td>
			<td>13
			</td>
			<td>640
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX80
			</td>
			<td>LX
			</td>
			<td>8960 (56×160)
			</td>
			<td>71680
			</td>
			<td>200
			</td>
			<td>80
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>20
			</td>
			<td>15
			</td>
			<td>768
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX100
			</td>
			<td>LX
			</td>
			<td>12288 (64×192)
			</td>
			<td>98304
			</td>
			<td>240
			</td>
			<td>96
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>24
			</td>
			<td>17
			</td>
			<td>960
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX160
			</td>
			<td>LX
			</td>
			<td>16896 (88×192)
			</td>
			<td>135168
			</td>
			<td>288
			</td>
			<td>96
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>24
			</td>
			<td>17
			</td>
			<td>960
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX200
			</td>
			<td>LX
			</td>
			<td>22272 (116×192)
			</td>
			<td>178176
			</td>
			<td>336
			</td>
			<td>96
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>24
			</td>
			<td>17
			</td>
			<td>960
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VSX25
			</td>
			<td>SX
			</td>
			<td>2560 (40×64)
			</td>
			<td>20480
			</td>
			<td>128
			</td>
			<td>128
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>8
			</td>
			<td>9
			</td>
			<td>420
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VSX35
			</td>
			<td>SX
			</td>
			<td>3840 (40×96)
			</td>
			<td>30720
			</td>
			<td>192
			</td>
			<td>192
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>11
			</td>
			<td>448
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VSX55
			</td>
			<td>SX
			</td>
			<td>6144 (48×128)
			</td>
			<td>49152
			</td>
			<td>320
			</td>
			<td>512
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>16
			</td>
			<td>13
			</td>
			<td>640
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VFX12
			</td>
			<td>FX
			</td>
			<td>1368
			</td>
			<td>10944
			</td>
			<td>36
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>8
			</td>
			<td>9
			</td>
			<td>320
			</td>
			<td>-
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC4VFX20
			</td>
			<td>FX
			</td>
			<td>2136
			</td>
			<td>17088
			</td>
			<td>68
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>8
			</td>
			<td>9
			</td>
			<td>320
			</td>
			<td>8
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC4VFX40
			</td>
			<td>FX
			</td>
			<td>4656
			</td>
			<td>37248
			</td>
			<td>144
			</td>
			<td>48
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>11
			</td>
			<td>448
			</td>
			<td>12
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC4VFX60
			</td>
			<td>FX
			</td>
			<td>6320
			</td>
			<td>50560
			</td>
			<td>232
			</td>
			<td>128
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>16
			</td>
			<td>13
			</td>
			<td>576
			</td>
			<td>16
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC4VFX100
			</td>
			<td>FX
			</td>
			<td>10544
			</td>
			<td>84352
			</td>
			<td>376
			</td>
			<td>160
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>20
			</td>
			<td>15
			</td>
			<td>768
			</td>
			<td>20
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC4VFX140
			</td>
			<td>FX
			</td>
			<td>15792
			</td>
			<td>126336
			</td>
			<td>552
			</td>
			<td>192
			</td>
			<td>20
			</td>
			<td>8
			</td>
			<td>24
			</td>
			<td>17
			</td>
			<td>896
			</td>
			<td>24
			</td>
			<td>2
	<tfoot>
</table>

Note: the I/O banks count includes special bank 0, which contains only dedicated configuration I/O (no user I/O)

Note: the available user I/O, I/O bank, and multi-gigabit transceiver amount varies with chip packaging.

Note: the CLB count for FX devices is no longer a simple columns×rows multiplication, as the CLB grid contains holes for the PowerPC cores.

# Virtex-5 

The Virtex-5 devices are made of[\[47\]](#cite_note-47)[\[48\]](#cite_note-48)

*   CLBs (configurable logic blocks) with a new, 6-input-LUT based construction:
    *   every CLB is made of two SLICEs — either two SLICELs or one SLICEL and one SLICEMs; the exact proportion of SLICEMs in a device varies, but at least 50% of CLBs contain a SLICEM (with a higher proportion on DSP-heavy devices)
    *   every SLICE contains four 6-input LUTs, each of which can be used as:
        *   a 6-input LUT
        *   two 5-input LUTs with shared inputs (ie. the LUT is fracturable)
        *   (SLICEM only) 32×2 or 64×1 distributed RAM, which can be combined with other distributed RAMs within the same SLICEM
        *   (SLICEM only) 16-bit or 32-bit shift register, which can be combined with other shift registers within the same SLICEM, for maximum of 128-bit shift register in a single SLICEM
    *   the arrangement of distributed RAMs within the SLICEM is quite complex and only some configurations can be obtained; the SLICEM usage combinations allowed by vendor tools are:
        *   32×8, 64×4, 128×2, or 256×1 single port RAM
        *   32×4, 62×2, 128×1 dual port RAM
        *   32×2, 64×1 quad port RAM
        *   32×6, 64×3 simple dual port RAM
    *   every SLICE contains four flip-flops with clock enable and (configurable as synchronous or asynchronous) set and reset inputs; they can also be used as latches
    *   every SLICE contains a carry chain, identical in functionality to the one used since Virtex (made of MUXCY and XORCY cells), but now represented as a single CARRY4 cell for the whole SLICE (mostly for more accurate timing simulation)
    *   compared to Virtex-4 SLICEs, the MULT\_AND cell is gone; however, its functionality can be trivially replicated by using one half of the corresponding now-fracturable LUT
    *   every SLICE contains a two-level tree of wide LUT multiplexers that can be used to combine the outputs of the LUTs, and can eg. combine the four LUTs within a SLICE into a single 8-input LUT
*   36kbit splittable true dual port block RAMs, with some new capabilities compared to Virtex-4:
    *   the base block RAM is twice the size of Virtex-4; however, any given block RAM can be split into two 18kbit halves functioning independently (but only one half can use the hardware FIFO mode)
    *   the available true dual port configurations of the full (36kbit) block RAM are: 32768×1, 16384×2, 8192×4, 4096×9, 2048×18, 1024×36, plus a special 65536×1 mode obtained by combining two adjacent RAMs
    *   the available true dual port configurations of the half (18kbit) block RAM are: 16384×1, 8192×2, 4096×4, 2048×9, 1024×18
    *   in addition to true dual port mode, the block RAMs can also be used in simple dual port mode, which doubles the maximum width of the block RAM, allowing for 512×72 (full block RAM) and 512×36 (half block RAM) configurations
    *   a hardware 64-bit [SECDED](https://en.wikipedia.org/wiki/SECDED "SECDED") [ECC](https://en.wikipedia.org/wiki/Error_correction_code "Error correction code") encoder/decoder has been added, which can be used with the simple dual port mode of the full block RAM to obtain a 512×64 block RAM with error correction and detection
*   DSP48E blocks,[\[49\]](#cite_note-49) improved version of Virtex-4 DSP48 blocks with 25×18 multiplier, 48-bit accumulator (with new bitwise operations function), and pattern detector
*   IOBs (I/O blocks, one per user pin): with minor improvements from Virtex-4 (mainly new I/O standard support)
*   The I/O bank arrangement is similar to Virtex-4, but the banks have size of 20 or 40 user I/O pins
*   CMTs (clock management tiles), each of which has:
    *   two DCMs (similar to Virtex-4 DCM)
    *   one [PLL](https://en.wikipedia.org/wiki/Phase-locked_loop "Phase-locked loop"), which has similar general functionality as the old DCM, but is made of analog circuitry and has different set of available outputs
*   the Virtex-4 PMCDs are gone; some of their functionality can be replicated by using PLLs instead
*   32 global clock buffers
*   multiple clock regions, with two regional clock buffers per region
*   a single system monitor: an [analog-to-digital converter](https://en.wikipedia.org/wiki/Analog-to-digital_converter "Analog-to-digital converter") used for monitoring FPGA supply voltages, temperature, and possibly other, external analog signals
*   Miscellaneous configuration logic: like Virtex-4, plus:
    *   unique device serial number access (identical to the DNA port in Spartan-3A)
    *   read-only access to user-programmable [efuses](https://en.wikipedia.org/wiki/Efuse "Efuse")
*   (LXT and SXT devices) GTP[\[50\]](#cite_note-50) multi-gigabit transceivers with a speed range of 100 Mb/s to 3.75 Gb/s and parallel width of 8, or 16 bits (10 or 20 bits in 8b/10b bypass mode)
*   (FXT and TXT devices) GTX[\[51\]](#cite_note-51) multi-gigabit transceivers with a speed range of 150 Mb/s to 6.5 Gb/s and parallel width of 8, 16, or 32 bits (10, 20, or 40 bits in 8b/10b bypass mode)
*   (FXT devices) embedded [PPC440](https://en.wikipedia.org/wiki/PowerPC_400 "PowerPC 400") cores
*   (LXT, SXT, FXT, TXT devices) embedded gigabit Ethernet MAC cores
*   (LXT, SXT, FXT, TXT devices) embedded [PCI Express](https://en.wikipedia.org/wiki/PCI_Express "PCI Express") cores capable of Gen1.1 ×8 operation
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (36kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DSP48E
				blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PLLs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				regions
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PPC
				cores
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Ethernet MACs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express cores
	<tbody>
		<tr>
			<td>XC5VLX20T
			</td>
			<td>LXT
			</td>
			<td>1560 (26×60)
			</td>
			<td>12480
			</td>
			<td>840
			</td>
			<td>26
			</td>
			<td>24
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>6
			</td>
			<td>7
			</td>
			<td>172
			</td>
			<td>4 GTP
			</td>
			<td>-
			</td>
			<td>2
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX30
			</td>
			<td>LX
			</td>
			<td>2400 (30×80)
			</td>
			<td>19200
			</td>
			<td>1280
			</td>
			<td>32
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>8
			</td>
			<td>13
			</td>
			<td>400
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX30T
			</td>
			<td>LXT
			</td>
			<td>2400 (30×80)
			</td>
			<td>19200
			</td>
			<td>1280
			</td>
			<td>36
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>8
			</td>
			<td>12
			</td>
			<td>360
			</td>
			<td>8 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX50
			</td>
			<td>LX
			</td>
			<td>3600 (30×120)
			</td>
			<td>28800
			</td>
			<td>1920
			</td>
			<td>48
			</td>
			<td>48
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>17
			</td>
			<td>560
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX50T
			</td>
			<td>LXT
			</td>
			<td>3600 (30×120)
			</td>
			<td>28800
			</td>
			<td>1920
			</td>
			<td>60
			</td>
			<td>48
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>15
			</td>
			<td>480
			</td>
			<td>12 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX85
			</td>
			<td>LX
			</td>
			<td>6480 (54×120)
			</td>
			<td>51840
			</td>
			<td>3360
			</td>
			<td>96
			</td>
			<td>48
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>17
			</td>
			<td>560
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX85T
			</td>
			<td>LXT
			</td>
			<td>6480 (54×120)
			</td>
			<td>51840
			</td>
			<td>3360
			</td>
			<td>108
			</td>
			<td>48
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>15
			</td>
			<td>480
			</td>
			<td>12 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX110
			</td>
			<td>LX
			</td>
			<td>8640 (64×160)
			</td>
			<td>69120
			</td>
			<td>4480
			</td>
			<td>128
			</td>
			<td>64
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>23
			</td>
			<td>800
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX110T
			</td>
			<td>LXT
			</td>
			<td>8640 (64×160)
			</td>
			<td>69120
			</td>
			<td>4480
			</td>
			<td>148
			</td>
			<td>64
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>20
			</td>
			<td>680
			</td>
			<td>16 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX155
			</td>
			<td>LX
			</td>
			<td>12160 (76×160)
			</td>
			<td>97280
			</td>
			<td>6560
			</td>
			<td>192
			</td>
			<td>128
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>23
			</td>
			<td>800
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX155T
			</td>
			<td>LXT
			</td>
			<td>12160 (76×160)
			</td>
			<td>97280
			</td>
			<td>6560
			</td>
			<td>212
			</td>
			<td>128
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>20
			</td>
			<td>680
			</td>
			<td>16 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX220
			</td>
			<td>LX
			</td>
			<td>17280 (108×160)
			</td>
			<td>138240
			</td>
			<td>9120
			</td>
			<td>192
			</td>
			<td>128
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>23
			</td>
			<td>800
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX220T
			</td>
			<td>LXT
			</td>
			<td>17280 (108×160)
			</td>
			<td>138240
			</td>
			<td>9120
			</td>
			<td>212
			</td>
			<td>128
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>20
			</td>
			<td>680
			</td>
			<td>16 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX330
			</td>
			<td>LX
			</td>
			<td>25920 (108×240)
			</td>
			<td>207360
			</td>
			<td>13680
			</td>
			<td>288
			</td>
			<td>192
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>24
			</td>
			<td>33
			</td>
			<td>1200
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX330T
			</td>
			<td>LXT
			</td>
			<td>25920 (108×240)
			</td>
			<td>207360
			</td>
			<td>13680
			</td>
			<td>324
			</td>
			<td>192
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>24
			</td>
			<td>27
			</td>
			<td>960
			</td>
			<td>20 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX35T
			</td>
			<td>SXT
			</td>
			<td>2720 (34×80)
			</td>
			<td>21760
			</td>
			<td>2080
			</td>
			<td>84
			</td>
			<td>192
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>8
			</td>
			<td>12
			</td>
			<td>360
			</td>
			<td>8 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX50T
			</td>
			<td>SXT
			</td>
			<td>4080 (34×120)
			</td>
			<td>32640
			</td>
			<td>3120
			</td>
			<td>132
			</td>
			<td>288
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>15
			</td>
			<td>480
			</td>
			<td>12 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX95T
			</td>
			<td>SXT
			</td>
			<td>7360 (46×160)
			</td>
			<td>58880
			</td>
			<td>6080
			</td>
			<td>244
			</td>
			<td>640
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>19
			</td>
			<td>640
			</td>
			<td>16 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX240T
			</td>
			<td>SXT
			</td>
			<td>18720 (78×240)
			</td>
			<td>149760
			</td>
			<td>16800
			</td>
			<td>516
			</td>
			<td>1056
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>24
			</td>
			<td>27
			</td>
			<td>960
			</td>
			<td>24 GTP
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VTX150T
			</td>
			<td>TXT
			</td>
			<td>11600 (58×200)
			</td>
			<td>92800
			</td>
			<td>6000
			</td>
			<td>228
			</td>
			<td>80
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>20
			</td>
			<td>20
			</td>
			<td>680
			</td>
			<td>40 GTX
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VTX240T
			</td>
			<td>TXT
			</td>
			<td>18720 (78×240)
			</td>
			<td>149760
			</td>
			<td>9600
			</td>
			<td>324
			</td>
			<td>96
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>24
			</td>
			<td>20
			</td>
			<td>680
			</td>
			<td>48 GTX
			</td>
			<td>-
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VFX30T
			</td>
			<td>FXT
			</td>
			<td>2560
			</td>
			<td>20480
			</td>
			<td>1520
			</td>
			<td>68
			</td>
			<td>64
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>8
			</td>
			<td>12
			</td>
			<td>360
			</td>
			<td>8 GTX
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VFX70T
			</td>
			<td>FXT
			</td>
			<td>5600
			</td>
			<td>44800
			</td>
			<td>3280
			</td>
			<td>148
			</td>
			<td>128
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>19
			</td>
			<td>640
			</td>
			<td>16 GTX
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>3
		</tr>
		<tr>
			<td>XC5VFX100T
			</td>
			<td>FXT
			</td>
			<td>8000
			</td>
			<td>64000
			</td>
			<td>4960
			</td>
			<td>228
			</td>
			<td>256
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>16
			</td>
			<td>20
			</td>
			<td>680
			</td>
			<td>16 GTX
			</td>
			<td>2
			</td>
			<td>4
			</td>
			<td>3
		</tr>
		<tr>
			<td>XC5VFX130T
			</td>
			<td>FXT
			</td>
			<td>10240
			</td>
			<td>81920
			</td>
			<td>6320
			</td>
			<td>298
			</td>
			<td>320
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>20
			</td>
			<td>24
			</td>
			<td>840
			</td>
			<td>20 GTX
			</td>
			<td>2
			</td>
			<td>6
			</td>
			<td>3
		</tr>
		<tr>
			<td>XC5VFX200T
			</td>
			<td>FXT
			</td>
			<td>15360
			</td>
			<td>122880
			</td>
			<td>9120
			</td>
			<td>456
			</td>
			<td>384
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>24
			</td>
			<td>27
			</td>
			<td>960
			</td>
			<td>24 GTX
			</td>
			<td>2
			</td>
			<td>8
			</td>
			<td>4
	<tfoot>
</table>

Note: the I/O banks count includes special bank 0, which contains only dedicated configuration I/O (no user I/O)

Note: the available user I/O, I/O bank, and multi-gigabit transceiver amount varies with chip packaging.

Note: the CLB count for FXT devices is no longer a simple columns×rows multiplication, as the CLB grid contains holes for the PowerPC cores.

# Virtex-6 

The Virtex-6 devices are made of[\[52\]](#cite_note-52)

*   CLBs (configurable logic blocks)[\[53\]](#cite_note-53) like the Virtex-5 CLBs, with some minor modifications:
    *   every SLICE now contains 8 flip-flops (two for each 6-LUT) instead of 4
    *   the flip-flops now have only one set/reset input (ie. it is impossible to have a flip-flop with both a set and a reset input)
*   36 Kibit splittable true dual port block RAM[\[54\]](#cite_note-54) a slightly improved version of the Virtex-5 block RAM
*   DSP48E1 blocks,[\[55\]](#cite_note-55) upgraded version of Virtex-5 DSP48E, adding a pre-adder block
*   IOBs (I/O blocks, one per user pin)[\[56\]](#cite_note-56) with minor improvements from Virtex-5 (mainly new I/O standard support), and with notable removal of 3.3 V I/O support (max supported I/O voltage is 2.5V)
*   The I/O bank arrangement is similar to Virtex-5, but the banks have constant size of 40 user I/O pins
*   CMTs (clock management tiles),[\[57\]](#cite_note-57) each of which contains two MMCMs (mixed-mode clocking managers), which are analog-based replacements for the old DCMs, and are an evolution of the Virtex-5 PLLs
*   32 global clock buffers
*   multiple clock regions, with two or four regional clock buffers per region
*   a single system monitor, like Virtex-5
*   Miscellaneous configuration logic: like Virtex-5
*   (non-LX devices) GTX multi-gigabit transceivers with a speed range of 480 Mb/s to 6.6 Gb/s and parallel width of 8, 16, or 32 bits (10, 20, or 40 bits in 8b/10b bypass mode)
*   (some HXT devices) GTH multi-gigabit transceivers with a speed range of 2.488 Gb/s to 11.2 Gb/s and parallel width of 8, 16, 32, or 64 bits (10, 20, 40, or 80 bits in 8b/10b bypass mode)
*   (non-LX devices) embedded gigabit Ethernet MAC cores
*   (non-LX devices) embedded [PCI Express](https://en.wikipedia.org/wiki/PCI_Express "PCI Express") cores capable of Gen2 ×8 operation
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				36&nbsp;Kibit block RAMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48E1 blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">MMCMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Ethernet MACs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores
	<tbody>
		<tr>
			<td>XC6VLX75T
			</td>
			<td>LXT
			</td>
			<td>5820
			</td>
			<td>46560
			</td>
			<td>4180
			</td>
			<td>156
			</td>
			<td>288
			</td>
			<td>6
			</td>
			<td>6
			</td>
			<td>9
			</td>
			<td>360
			</td>
			<td>12 GTX
			</td>
			<td>4
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC6VCX75T
			</td>
			<td>CXT<sup id=cite_ref-58 class=reference><a href=#cite_note-58>[58]</a></sup>
			</td>
			<td>5820
			</td>
			<td>46560
			</td>
			<td>4180
			</td>
			<td>156
			</td>
			<td>288
			</td>
			<td>6
			</td>
			<td>6
			</td>
			<td>9
			</td>
			<td>360
			</td>
			<td>12 GTX
			</td>
			<td>1
			</td>
			<td>1
		</tr>
		<tr>
			<td>XC6VLX130T
			</td>
			<td>LXT
			</td>
			<td>10000
			</td>
			<td>80000
			</td>
			<td>6960
			</td>
			<td>264
			</td>
			<td>480
			</td>
			<td>10
			</td>
			<td>10
			</td>
			<td>15
			</td>
			<td>600
			</td>
			<td>20 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VCX130T
			</td>
			<td>CXT
			</td>
			<td>10000
			</td>
			<td>80000
			</td>
			<td>6960
			</td>
			<td>264
			</td>
			<td>480
			</td>
			<td>10
			</td>
			<td>10
			</td>
			<td>15
			</td>
			<td>600
			</td>
			<td>16 GTX
			</td>
			<td>1
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX195T
			</td>
			<td>LXT
			</td>
			<td>15600
			</td>
			<td>124800
			</td>
			<td>12160
			</td>
			<td>344
			</td>
			<td>640
			</td>
			<td>10
			</td>
			<td>10
			</td>
			<td>15
			</td>
			<td>600
			</td>
			<td>20 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VCX195T
			</td>
			<td>CXT
			</td>
			<td>15600
			</td>
			<td>124800
			</td>
			<td>12160
			</td>
			<td>344
			</td>
			<td>640
			</td>
			<td>10
			</td>
			<td>10
			</td>
			<td>15
			</td>
			<td>600
			</td>
			<td>16 GTX
			</td>
			<td>1
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX240T
			</td>
			<td>LXT
			</td>
			<td>18840
			</td>
			<td>150720
			</td>
			<td>14600
			</td>
			<td>416
			</td>
			<td>768
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>18
			</td>
			<td>720
			</td>
			<td>24 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VCX240T
			</td>
			<td>CXT
			</td>
			<td>18840
			</td>
			<td>150720
			</td>
			<td>14600
			</td>
			<td>416
			</td>
			<td>768
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>18
			</td>
			<td>600
			</td>
			<td>16 GTX
			</td>
			<td>1
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX365T
			</td>
			<td>LXT
			</td>
			<td>28440
			</td>
			<td>227520
			</td>
			<td>16520
			</td>
			<td>416
			</td>
			<td>576
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>18
			</td>
			<td>720
			</td>
			<td>24 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX550T
			</td>
			<td>LXT
			</td>
			<td>42960
			</td>
			<td>343680
			</td>
			<td>24800
			</td>
			<td>632
			</td>
			<td>864
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>30
			</td>
			<td>1200
			</td>
			<td>36 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX760
			</td>
			<td>LX
			</td>
			<td>59280
			</td>
			<td>474240
			</td>
			<td>33120
			</td>
			<td>720
			</td>
			<td>864
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>30
			</td>
			<td>1200
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
		</tr>
		<tr>
			<td>XC6VSX315T
			</td>
			<td>SXT
			</td>
			<td>24600
			</td>
			<td>196800
			</td>
			<td>20360
			</td>
			<td>704
			</td>
			<td>1344
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>18
			</td>
			<td>720
			</td>
			<td>24 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VSX475T
			</td>
			<td>SXT
			</td>
			<td>37200
			</td>
			<td>297600
			</td>
			<td>30560
			</td>
			<td>1064
			</td>
			<td>2016
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>21
			</td>
			<td>840
			</td>
			<td>36 GTX
			</td>
			<td>4
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VHX250T
			</td>
			<td>HXT
			</td>
			<td>19680
			</td>
			<td>157440
			</td>
			<td>12160
			</td>
			<td>504
			</td>
			<td>576
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>320
			</td>
			<td>48 GTX
			</td>
			<td>4
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC6VHX255T
			</td>
			<td>HXT
			</td>
			<td>19800
			</td>
			<td>158400
			</td>
			<td>12200
			</td>
			<td>516
			</td>
			<td>576
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>480
			</td>
			<td>24 GTX + 24 GTH
			</td>
			<td>2
			</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VHX380T
			</td>
			<td>HXT
			</td>
			<td>29880
			</td>
			<td>239040
			</td>
			<td>18280
			</td>
			<td>768
			</td>
			<td>864
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>720
			</td>
			<td>48 GTX + 24 GTH
			</td>
			<td>4
			</td>
			<td>4
		</tr>
		<tr>
			<td>XC6VHX565T
			</td>
			<td>HXT
			</td>
			<td>44280
			</td>
			<td>354240
			</td>
			<td>25480
			</td>
			<td>912
			</td>
			<td>864
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>18
			</td>
			<td>720
			</td>
			<td>24 GTX + 24 GTH
			</td>
			<td>4
			</td>
			<td>4
	<tfoot>
</table>

Note: the I/O banks count does not include special bank 0, which contains only dedicated configuration I/O (no user I/O)

Note: the available user I/O, I/O bank, and multi-gigabit transceiver amount varies with chip packaging.

Note: Virtex-6 CLB grid is irregular and contains holes (for configuration center and PCI Express blocks), and so the CLB count is no longer a simple columns×rows multiplication

Note: The CXT devices use an identical die to the corresponding LXT devices, but with some disabled blocks and reduced performance (GTX transceivers have a speed range of 150 Mb/s to 3.75 Gb/s).

# Spartan-6 

The Spartan-6 devices are basically Spartan-3A DSP devices upgraded with some Virtex-6 technology. They are made of[\[59\]](#cite_note-59)

*   CLBs (configurable logic blocks),[\[60\]](#cite_note-60) similar to Virtex-6, but with some changes:
    *   SLICEs now come in three types: SLICEX, SLICEL, SLICEM; SLICEX is a bare-bones version of SLICEL (wide LUT multiplexers and carry chain have been removed, only LUTs and flip-flops remain)
    *   every CLB contains two SLICEs: either one SLICEX + one SLICEL, or one SLICEX + one SLICEM; around 50% of the CLBs contain a SLICEM
*   18kbit true dual port block RAMs,[\[61\]](#cite_note-61) similar to Spartan-3A DSP, but with additional capabilities:
    *   the full 18kbit block RAM can be split into two 9kbit halves, with available configurations of 8192×1, 4096×2, 2048×4, 1024×9, 512×18
    *   in split mode, the half block RAMs additionally support a simple dual port mode in 256×36 configuration
*   DSP48A1 blocks,[\[62\]](#cite_note-62) which are an upgraded version of the DSP48A blocks of Spartan-3A DSP devices
*   IOBs (I/O blocks, one per user pin)[\[63\]](#cite_note-63)
    *   the electrical capabilities are similar to Spartan-3A (though with new I/O standards supported); there is no DCI support, but user can select an uncalibrated I/O impedance from several settings
    *   Virtex-6-like ISERDES and OSERDES blocks are present (though with fewer capabilities than Virtex-6 devices), with associated fast I/O block buffers
    *   the I/O bank arrangement is similar to Spartan-3A devices, but with a minor change: small devices have 4 banks (one for each device edge), while large devices have 6 banks (with the left and right edges split into two banks
*   MCBs (memory controller blocks),[\[64\]](#cite_note-64) hard memory controllers supporting [DDR](https://en.wikipedia.org/wiki/DDR_SDRAM "DDR SDRAM"), [DDR2](https://en.wikipedia.org/wiki/DDR2_SDRAM "DDR2 SDRAM"), [DDR3](https://en.wikipedia.org/wiki/DDR3_SDRAM "DDR3 SDRAM"), and [LPDDR](https://en.wikipedia.org/wiki/LPDDR "LPDDR") memory
*   CMTs (clock management tiles),[\[65\]](#cite_note-65) each of which has:
    *   two DCMs, similar to Spartan-3A DCMs, but with new clock generator mode and dynamic reconfiguration capabilities
    *   one PLL, similar to Virtex-5 PLLs
*   16 global clock buffers
*   multiple clock regions, with 16 regional clock buffers each, which can replace the corresponding global clock buffer output for that region
*   Miscellaneous configuration logic: like Spartan-3A, plus circuitry performing live configuration memory scanning with CRC error detection (but no correction)
*   (SXT devices only) GTP multi-gigabit transceivers[\[66\]](#cite_note-66) with speed ranges of 614 Mb/s to 810 Mb/s, 1.22 Gb/s to 1.62 Gb/s, and 2.45 Gb/s to 3.125 Gb/s, 8b/10b encoder and decoder, and parallel width of 8, 16, or 32 bits (10, 20, or 40 bits in 8b/10b bypass mode)
*   (SXT devices only) embedded PCI Express cores capable of Gen1.1 ×1 operation
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (18kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48A1 blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PLLs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">MCBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
	<tbody>
		<tr>
			<td>XC6SLX4
			</td>
			<td>LX
			</td>
			<td>300
			</td>
			<td>2400
			</td>
			<td>300
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>132
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>uses the same die as XC6SLX9, with lots of disabled blocks
		</tr>
		<tr>
			<td>XC6SLX9
			</td>
			<td>LX
			</td>
			<td>715
			</td>
			<td>5720
			</td>
			<td>360
			</td>
			<td>32
			</td>
			<td>16
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>200
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX16
			</td>
			<td>LX
			</td>
			<td>1139
			</td>
			<td>9112
			</td>
			<td>544
			</td>
			<td>32
			</td>
			<td>32
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>232
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX25
			</td>
			<td>LX
			</td>
			<td>1879
			</td>
			<td>15032
			</td>
			<td>916
			</td>
			<td>52
			</td>
			<td>38
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>5
			</td>
			<td>4
			</td>
			<td>266
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>uses the same die as XC6SLX25T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX25T
			</td>
			<td>LXT
			</td>
			<td>1879
			</td>
			<td>15032
			</td>
			<td>916
			</td>
			<td>52
			</td>
			<td>38
			</td>
			<td>4
			</td>
			<td>2
			</td>
			<td>5
			</td>
			<td>4
			</td>
			<td>250
			</td>
			<td>2
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX45
			</td>
			<td>LX
			</td>
			<td>3411
			</td>
			<td>27288
			</td>
			<td>1602
			</td>
			<td>116
			</td>
			<td>58
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>358
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>uses the same die as XC6SLX45T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX45T
			</td>
			<td>LXT
			</td>
			<td>3411
			</td>
			<td>27288
			</td>
			<td>1602
			</td>
			<td>116
			</td>
			<td>58
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>296
			</td>
			<td>2
			</td>
			<td>4
			</td>
			<td>1
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX75
			</td>
			<td>LX
			</td>
			<td>5831
			</td>
			<td>46648
			</td>
			<td>2768
			</td>
			<td>172
			</td>
			<td>132
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>408
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>uses the same die as XC6SLX75T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX75T
			</td>
			<td>LXT
			</td>
			<td>5831
			</td>
			<td>46648
			</td>
			<td>2768
			</td>
			<td>172
			</td>
			<td>132
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>348
			</td>
			<td>4
			</td>
			<td>8
			</td>
			<td>1
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX100
			</td>
			<td>LX
			</td>
			<td>7911
			</td>
			<td>63288
			</td>
			<td>3904
			</td>
			<td>268
			</td>
			<td>180
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>480
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>uses the same die as XC6SLX100T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX100T
			</td>
			<td>LXT
			</td>
			<td>7911
			</td>
			<td>63288
			</td>
			<td>3904
			</td>
			<td>268
			</td>
			<td>180
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>498
			</td>
			<td>4
			</td>
			<td>8
			</td>
			<td>1
			</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX150
			</td>
			<td>LX
			</td>
			<td>11519
			</td>
			<td>92152
			</td>
			<td>5420
			</td>
			<td>268
			</td>
			<td>180
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>576
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>uses the same die as XC6SLX150T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX150T
			</td>
			<td>LXT
			</td>
			<td>11519
			</td>
			<td>92152
			</td>
			<td>5420
			</td>
			<td>268
			</td>
			<td>180
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>12
			</td>
			<td>6
			</td>
			<td>540
			</td>
			<td>4
			</td>
			<td>8
			</td>
			<td>1
			</td>
			<td>
	<tfoot>
</table>

# 7 Series 

The 7 series devices are made of[\[67\]](#cite_note-67)

*   CLBs (configurable logic blocks), functionally identical to Virtex-6
*   36kbit splittable true dual port block RAM, functionally identical to Virtex-6
*   DSP48E1 blocks, functionally identical to Virtex-6
*   IOBs (I/O blocks, one per user pin)[\[68\]](#cite_note-68) derived from Virtex-6, but with multiple changes:
    *   the IOBs now come in two kinds
        *   HR (high range) I/O, which once again supports I/O voltage up to 3.3V, but has no DCI support
        *   HP (high performance) I/O, which supports I/O voltage up to 1.8V, with DCI support
    *   the I/O banks now have 50 I/O pins each, as follows:
        *   24 differential I/O pairs, split into 4 "byte groups" of 6 I/O pairs (or 12 I/O pins)
        *   2 single I/O pins without differential pair
    *   the CMTs (clock management tiles)[\[69\]](#cite_note-69) are now tightly coupled with I/O banks: there is one CMT for every I/O bank, and it contains:
        *   one MMCM, similar to Virtex-6 MMCM
        *   one PLL, which is a version of MMCM with less advanced functionality
        *   four input and four output asynchronous FIFOs, designed for memory controller usage, but available for any application
        *   undocumented phaser circuitry used only by the Xilinx memory controller IPs
*   global clock buffers (usually 32 of them, but some devices have only 16, and 3D devices have 32 for every die)
*   multiple clock regions, with 4 regional clock buffers per region
*   (not on the smallest Spartan devices) a single XADC analog-to-digital converter, which is an improved and renamed version of Virtex-6 system monitor
*   Miscellaneous configuration logic: like Virtex-6

Depending on exact device family, devices may also contain some special blocks:

*   GTP multi-gigabit transceivers,[\[70\]](#cite_note-70) with speed range of 500 Mb/s to 6.6 Gb/s and parallel width of 8 or 16 bits (10 or 20 in 8b/10b bypass mode)
*   GTX multi-gigabit transceivers,[\[71\]](#cite_note-71) with speed range of 500 Mb/s to 12.5 Gb/s and parallel width of 8, 16, or 32 bits (10, 20, or 40 in 8b/10b bypass mode)
*   GTH multi-gigabit transceivers, with speed range of 500 Mb/s to 13.1 Gb/s and parallel width of 8, 16, or 32 bits (10, 20, or 40 in 8b/10b bypass mode)
*   GTZ multi-gigabit transceivers, with speed range of up to 28.05 Gb/s and parallel width of up to 128 bits (160 in 8b/10b bypass mode). The GTZ transceivers, when present, reside on a separate die from the main FPGA. The documentation for GTZ transceivers is not publicly available, being restricted to members of Xilinx GTZ Lounge.
*   embedded PCI Express cores capable of Gen2 ×8 operation
*   embedded PCI Express cores capable of Gen3 ×8 operation
*   (Zynq-7000 devices) a PS (processing system) block,[\[72\]](#cite_note-72) containing a system on chip based on ARM Cortex-A9
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (36kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48E1 blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CMTs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">XADCs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Processing System
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
	<tbody>
		<tr>
			<td>XC7S6
			</td>
			<td>Spartan-7
			</td>
			<td>469*
			</td>
			<td>3752*
			</td>
			<td>280*
			</td>
			<td>5*
			</td>
			<td>10*
			</td>
			<td>2
			</td>
			<td>2 (2x1)
			</td>
			<td>2 HR
			</td>
			<td>100 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7S15
		</tr>
		<tr>
			<td>XC7S15
			</td>
			<td>Spartan-7
			</td>
			<td>1000
			</td>
			<td>8000
			</td>
			<td>600
			</td>
			<td>10
			</td>
			<td>20
			</td>
			<td>2
			</td>
			<td>2 (2x1)
			</td>
			<td>2 HR
			</td>
			<td>100 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7S25
			</td>
			<td>Spartan-7
			</td>
			<td>1825
			</td>
			<td>14600
			</td>
			<td>1250
			</td>
			<td>45
			</td>
			<td>80
			</td>
			<td>3
			</td>
			<td>4 (2x2)
			</td>
			<td>3 HR
			</td>
			<td>150 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>XC7A25T with disabled transceivers
		</tr>
		<tr>
			<td>XC7S50
			</td>
			<td>Spartan-7
			</td>
			<td>4075
			</td>
			<td>32600
			</td>
			<td>2400
			</td>
			<td>75
			</td>
			<td>120
			</td>
			<td>5
			</td>
			<td>6 (2x3)
			</td>
			<td>5 HR
			</td>
			<td>250 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>XC7A50T with disabled transceivers
		</tr>
		<tr>
			<td>XC7S75
			</td>
			<td>Spartan-7
			</td>
			<td>6000*
			</td>
			<td>48000*
			</td>
			<td>3328*
			</td>
			<td>90*
			</td>
			<td>140*
			</td>
			<td>8
			</td>
			<td>8 (2x4)
			</td>
			<td>8 HR
			</td>
			<td>400 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7S100
		</tr>
		<tr>
			<td>XC7S100
			</td>
			<td>Spartan-7
			</td>
			<td>8000
			</td>
			<td>64000
			</td>
			<td>4400
			</td>
			<td>120
			</td>
			<td>160
			</td>
			<td>8
			</td>
			<td>8 (2x4)
			</td>
			<td>8 HR
			</td>
			<td>400 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7A12T
			</td>
			<td>Artix-7
			</td>
			<td>1000*
			</td>
			<td>8000*
			</td>
			<td>684*
			</td>
			<td>20*
			</td>
			<td>40*
			</td>
			<td>3
			</td>
			<td>4 (2x2)
			</td>
			<td>3 HR
			</td>
			<td>150 HR
			</td>
			<td>2 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7A25T
		</tr>
		<tr>
			<td>XC7A15T
			</td>
			<td>Artix-7
			</td>
			<td>1300*
			</td>
			<td>10400*
			</td>
			<td>800*
			</td>
			<td>25*
			</td>
			<td>45*
			</td>
			<td>5
			</td>
			<td>6 (2x3)
			</td>
			<td>5 HR
			</td>
			<td>250 HR
			</td>
			<td>4 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7A50T
		</tr>
		<tr>
			<td>XC7A25T
			</td>
			<td>Artix-7
			</td>
			<td>1825
			</td>
			<td>14600
			</td>
			<td>1250
			</td>
			<td>45
			</td>
			<td>80
			</td>
			<td>3
			</td>
			<td>4 (2x2)
			</td>
			<td>3 HR
			</td>
			<td>150 HR
			</td>
			<td>4 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7A35T
			</td>
			<td>Artix-7
			</td>
			<td>2600*
			</td>
			<td>20800*
			</td>
			<td>1600*
			</td>
			<td>50*
			</td>
			<td>90*
			</td>
			<td>5
			</td>
			<td>6 (2x3)
			</td>
			<td>5 HR
			</td>
			<td>250 HR
			</td>
			<td>4 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7A50T
		</tr>
		<tr>
			<td>XC7A50T
			</td>
			<td>Artix-7
			</td>
			<td>4075
			</td>
			<td>32600
			</td>
			<td>2400
			</td>
			<td>75
			</td>
			<td>120
			</td>
			<td>5
			</td>
			<td>6 (2x3)
			</td>
			<td>5 HR
			</td>
			<td>250 HR
			</td>
			<td>4 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7A75T
			</td>
			<td>Artix-7
			</td>
			<td>5900*
			</td>
			<td>47200*
			</td>
			<td>3568*
			</td>
			<td>105*
			</td>
			<td>180*
			</td>
			<td>6
			</td>
			<td>8 (2x4)
			</td>
			<td>6 HR
			</td>
			<td>300 HR
			</td>
			<td>8 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7A100T
		</tr>
		<tr>
			<td>XC7A100T
			</td>
			<td>Artix-7
			</td>
			<td>7925
			</td>
			<td>63400
			</td>
			<td>4750
			</td>
			<td>135
			</td>
			<td>240
			</td>
			<td>6
			</td>
			<td>8 (2x4)
			</td>
			<td>6 HR
			</td>
			<td>300 HR
			</td>
			<td>8 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7A200T
			</td>
			<td>Artix-7
			</td>
			<td>16825
			</td>
			<td>134600
			</td>
			<td>11550
			</td>
			<td>365
			</td>
			<td>740
			</td>
			<td>10
			</td>
			<td>10 (2x5)
			</td>
			<td>10 HR
			</td>
			<td>500 HR
			</td>
			<td>16 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7K70T
			</td>
			<td>Kintex-7
			</td>
			<td>5125
			</td>
			<td>41000
			</td>
			<td>3350
			</td>
			<td>135
			</td>
			<td>240
			</td>
			<td>6
			</td>
			<td>8 (2x4)
			</td>
			<td>4 HR + 2 HP
			</td>
			<td>200 HR + 100 HP
			</td>
			<td>8 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7K160T
			</td>
			<td>Kintex-7
			</td>
			<td>12675
			</td>
			<td>101400
			</td>
			<td>8750
			</td>
			<td>325
			</td>
			<td>600
			</td>
			<td>8
			</td>
			<td>10 (2x5)
			</td>
			<td>5 HR + 3 HP
			</td>
			<td>250 HR + 150 HP
			</td>
			<td>8 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7K325T
			</td>
			<td>Kintex-7
			</td>
			<td>25475
			</td>
			<td>203800
			</td>
			<td>16000
			</td>
			<td>445
			</td>
			<td>840
			</td>
			<td>10
			</td>
			<td>14 (2x7)
			</td>
			<td>7 HR + 3 HP
			</td>
			<td>350 HR + 150 HP
			</td>
			<td>16 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7K355T
			</td>
			<td>Kintex-7
			</td>
			<td>27825
			</td>
			<td>222600
			</td>
			<td>20350
			</td>
			<td>715
			</td>
			<td>1440
			</td>
			<td>6
			</td>
			<td>12 (2x6)
			</td>
			<td>6 HR
			</td>
			<td>300 HR
			</td>
			<td>24 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7K410T
			</td>
			<td>Kintex-7
			</td>
			<td>31775
			</td>
			<td>254200
			</td>
			<td>22650
			</td>
			<td>795
			</td>
			<td>1540
			</td>
			<td>10
			</td>
			<td>14 (2x7)
			</td>
			<td>7 HR + 3 HP
			</td>
			<td>350 HR + 150 HP
			</td>
			<td>16 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7K420T
			</td>
			<td>Kintex-7
			</td>
			<td>32575*
			</td>
			<td>260600*
			</td>
			<td>23752*
			</td>
			<td>835*
			</td>
			<td>1680*
			</td>
			<td>8
			</td>
			<td>16 (2x8)
			</td>
			<td>8 HR
			</td>
			<td>400 HR
			</td>
			<td>32 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7K480T
		</tr>
		<tr>
			<td>XC7K480T
			</td>
			<td>Kintex-7
			</td>
			<td>37325
			</td>
			<td>298600
			</td>
			<td>27150
			</td>
			<td>955
			</td>
			<td>1920
			</td>
			<td>8
			</td>
			<td>16 (2x8)
			</td>
			<td>8 HR
			</td>
			<td>400 HR
			</td>
			<td>32 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7V585T
			</td>
			<td>Virtex-7
			</td>
			<td>45525
			</td>
			<td>364200
			</td>
			<td>27750
			</td>
			<td>795
			</td>
			<td>1260
			</td>
			<td>18
			</td>
			<td>18 (2x9)
			</td>
			<td>3 HR + 15 HP
			</td>
			<td>100 HR + 750 HP
			</td>
			<td>36 GTX
			</td>
			<td>3 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7V2000T
			</td>
			<td>Virtex-7
			</td>
			<td>152700
			</td>
			<td>1221600
			</td>
			<td>86200
			</td>
			<td>1292
			</td>
			<td>2160
			</td>
			<td>24
			</td>
			<td>24 (2x12)
			</td>
			<td>24 HP
			</td>
			<td>1200 HP
			</td>
			<td>36 GTX
			</td>
			<td>4 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>3D device, made of 4 identical FPGA die
		</tr>
		<tr>
			<td>XC7VX330T
			</td>
			<td>Virtex-7
			</td>
			<td>25500
			</td>
			<td>204000
			</td>
			<td>17550
			</td>
			<td>750
			</td>
			<td>1120
			</td>
			<td>14
			</td>
			<td>14 (2x7)
			</td>
			<td>1 HR + 13 HP
			</td>
			<td>50 HR + 650 HP
			</td>
			<td>28 GTH
			</td>
			<td>2 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX415T
			</td>
			<td>Virtex-7
			</td>
			<td>32200
			</td>
			<td>257600
			</td>
			<td>26100
			</td>
			<td>880
			</td>
			<td>2160
			</td>
			<td>12
			</td>
			<td>12 (2x6)
			</td>
			<td>12 HP
			</td>
			<td>600 HP
			</td>
			<td>48 GTH
			</td>
			<td>2 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX485T
			</td>
			<td>Virtex-7
			</td>
			<td>37950
			</td>
			<td>303600
			</td>
			<td>32700
			</td>
			<td>1030
			</td>
			<td>2800
			</td>
			<td>14
			</td>
			<td>14 (2x7)
			</td>
			<td>14 HP
			</td>
			<td>700 HP
			</td>
			<td>56 GTX
			</td>
			<td>4 Gen2×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX550T
			</td>
			<td>Virtex-7
			</td>
			<td>43300*
			</td>
			<td>346400*
			</td>
			<td>34900*
			</td>
			<td>1180*
			</td>
			<td>2880*
			</td>
			<td>20
			</td>
			<td>20 (2x10)
			</td>
			<td>20 HP
			</td>
			<td>600 HP
			</td>
			<td>80 GTH
			</td>
			<td>2 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>software-limitted version of XC7VX690T
		</tr>
		<tr>
			<td>XC7VX690T
			</td>
			<td>Virtex-7
			</td>
			<td>54150
			</td>
			<td>433200
			</td>
			<td>43550
			</td>
			<td>1470
			</td>
			<td>3600
			</td>
			<td>20
			</td>
			<td>20 (2x10)
			</td>
			<td>20 HP
			</td>
			<td>1000 HP
			</td>
			<td>80 GTH
			</td>
			<td>3 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX980T
			</td>
			<td>Virtex-7
			</td>
			<td>76500
			</td>
			<td>612000
			</td>
			<td>55350
			</td>
			<td>1500
			</td>
			<td>3600
			</td>
			<td>18
			</td>
			<td>18 (2x9)
			</td>
			<td>18 HP
			</td>
			<td>900 HP
			</td>
			<td>72 GTH
			</td>
			<td>3 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX1140T
			</td>
			<td>Virtex-7
			</td>
			<td>109400
			</td>
			<td>875200
			</td>
			<td>70800
			</td>
			<td>1880
			</td>
			<td>3360
			</td>
			<td>24
			</td>
			<td>24 (2x12)
			</td>
			<td>24 HP
			</td>
			<td>1100 HP
			</td>
			<td>96 GTH
			</td>
			<td>4 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>3D device, made of 4 identical FPGA die
		</tr>
		<tr>
			<td>XC7VH580T
			</td>
			<td>Virtex-7
			</td>
			<td>54700
			</td>
			<td>437600
			</td>
			<td>35400
			</td>
			<td>940
			</td>
			<td>1680
			</td>
			<td>12
			</td>
			<td>12 (2x6)
			</td>
			<td>12 HP
			</td>
			<td>600 HP
			</td>
			<td>48 GTH + 8 GTZ
			</td>
			<td>2 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>heterogenous 3D device, made of 2 FPGA die (identical to the XC7VX1140T FPGA die)
				and 1 GTZ die
		</tr>
		<tr>
			<td>XC7VH870T
			</td>
			<td>Virtex-7
			</td>
			<td>82050
			</td>
			<td>656400
			</td>
			<td>53100
			</td>
			<td>1410
			</td>
			<td>2520
			</td>
			<td>18
			</td>
			<td>18 (2x9)
			</td>
			<td>18 HP
			</td>
			<td>300 HP
			</td>
			<td>72 GTH + 16 GTZ
			</td>
			<td>3 Gen3×8
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>heterogenous 3D device, made of 3 FPGA die (identical to the XC7VX1140T FPGA die)
				and 2 GTZ die
		</tr>
		<tr>
			<td>XC7Z007S
			</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)<sup id=cite_ref-73 class=reference><a
						href=#cite_note-73>[73]</a></sup>
			</td>
			<td>1800*
			</td>
			<td>14400*
			</td>
			<td>
			</td>
			<td>50*
			</td>
			<td>66*
			</td>
			<td>2
			</td>
			<td>4 (2x2)
			</td>
			<td>2 HR
			</td>
			<td>100 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>single core
			</td>
			<td>software-limitted XC7Z010 with one ARM core disabled
		</tr>
		<tr>
			<td>XC7Z012S
			</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)
			</td>
			<td>4300*
			</td>
			<td>34400*
			</td>
			<td>
			</td>
			<td>72*
			</td>
			<td>120*
			</td>
			<td>3
			</td>
			<td>6 (2x3)
			</td>
			<td>3 HR
			</td>
			<td>150 HR
			</td>
			<td>4 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>single core
			</td>
			<td>software-limitted XC7Z015 with one ARM core disabled
		</tr>
		<tr>
			<td>XC7Z014S
			</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)
			</td>
			<td>5075*
			</td>
			<td>40600*
			</td>
			<td>
			</td>
			<td>107*
			</td>
			<td>170*
			</td>
			<td>4
			</td>
			<td>6 (2x3)
			</td>
			<td>4 HR
			</td>
			<td>200 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>single core
			</td>
			<td>software-limitted XC7Z020 with one ARM core disabled
		</tr>
		<tr>
			<td>XC7Z010
			</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)
			</td>
			<td>2200
			</td>
			<td>17600
			</td>
			<td>1500
			</td>
			<td>60
			</td>
			<td>80
			</td>
			<td>2
			</td>
			<td>4 (2x2)
			</td>
			<td>2 HR
			</td>
			<td>100 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z015
			</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)
			</td>
			<td>5775
			</td>
			<td>46200
			</td>
			<td>3600
			</td>
			<td>95
			</td>
			<td>160
			</td>
			<td>3
			</td>
			<td>6 (2x3)
			</td>
			<td>3 HR
			</td>
			<td>150 HR
			</td>
			<td>4 GTP
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z020
			</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)
			</td>
			<td>6650
			</td>
			<td>53200
			</td>
			<td>4350
			</td>
			<td>140
			</td>
			<td>220
			</td>
			<td>4
			</td>
			<td>6 (2x3)
			</td>
			<td>4 HR
			</td>
			<td>200 HR
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z030
			</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)
			</td>
			<td>9825
			</td>
			<td>78600
			</td>
			<td>6650
			</td>
			<td>265
			</td>
			<td>400
			</td>
			<td>5
			</td>
			<td>8 (2x4)
			</td>
			<td>2 HR + 3 HP
			</td>
			<td>100 HR + 150 HP
			</td>
			<td>4 GTX
			</td>
			<td>1 Gen2×4
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z035
			</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)
			</td>
			<td>21487.5*
			</td>
			<td>171900*
			</td>
			<td>
			</td>
			<td>500*
			</td>
			<td>900
			</td>
			<td>8
			</td>
			<td>14 (2x7)
			</td>
			<td>5 HR + 3 HP
			</td>
			<td>212 HR + 150 HP
			</td>
			<td>8 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>software-limitted version of XC7Z045
		</tr>
		<tr>
			<td>XC7Z045
			</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)
			</td>
			<td>27325
			</td>
			<td>218600
			</td>
			<td>17600
			</td>
			<td>545
			</td>
			<td>900
			</td>
			<td>8
			</td>
			<td>14 (2x7)
			</td>
			<td>5 HR + 3 HP
			</td>
			<td>212 HR + 150 HP
			</td>
			<td>8 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z100
			</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)
			</td>
			<td>34675
			</td>
			<td>277400
			</td>
			<td>27050
			</td>
			<td>755
			</td>
			<td>2020
			</td>
			<td>8
			</td>
			<td>14 (2x7)
			</td>
			<td>5 HR + 3 HP
			</td>
			<td>250 HR + 150 HP
			</td>
			<td>16 GTX
			</td>
			<td>1 Gen2×8
			</td>
			<td>1
			</td>
			<td>dual core
			</td>
			<td>
	<tfoot>
</table>

Note: many 7 series devices are actually software-limitted versions of larger devices[\[74\]](#cite_note-74) for example, XC7A35T is the exact same die as XC7A50T, with the same geometry and block count, but the Xilinx development tools artificially limit device usage to the limits in the table above. Such software-limitted devices have very different behavior from "full" devices when nearing full utilization: a design that would have utilized 90% of XC7A50T resources will most likely fail to route (or succeed with very suboptimal performance), since the place&route tool will have very little space to optimally arrange blocks and will likely run out of routing resources due to suboptimal placement. However, an XC7A35T design that utilizes even 100% of its resources will almost certainly route with no performance degradation, as it is far from the real hardware limits, and the placer has full freedom to utilize any subset of the available blocks as long as the total used CLB/DSP/block RAM count is within the allowed software limit. The software-enforced limits are marked with \* in the above table.

Note: some Spartan-7 devices are identical to some Artix-7 devices, but with disabled transceivers. However, this is different from the above software-enforced usage limit: the transceivers cannot be used anyway, as their power and I/O pads are not bonded out to device pins in the packaging.

Note: the Artix-7 devices use the same PCI Express block as Kintex-7 devices, with Gen2×8 support, but they can only be used in at most Gen2×4 configuration due to GTP transceiver limitations.

Note: several devices have smaller max User I/Os count than the I/O bank count would imply. This means that the device is not available in any packaging that actually bonds out the complete set of pads.

# UltraScale and UltraScale+ 

The UltraScale devices are made of[\[75\]](#cite_note-75)

*   CLBs (configurable logic blocks), which are a modified version of the 7 Series CLB:
    *   every CLB now contains exactly one SLICE, which can be a SLICEM or a SLICEL
    *   every SLICE now contains 8 6-input LUTs, 16 flip-flops, a carry chain, and 3-level tree of wide LUT multiplexers, making it roughly equivalent to two 7 Series SLICEs (and retaining the rough logic capacity of a single CLB)
    *   because of the higher wide LUT multiplexer tree, the LUTs within a SLICE can now be combined up to a single 9-input LUT
    *   the available distributed RAM combinations within a SLICEM are now:
        *   32×16, 64×8, 128×4, 256×2, 512×1 single port RAM
        *   32×8, 64×4, 128×2, 256×1 dual port RAM
        *   32×4, 64×2, 128×1 quad port RAM
        *   32×2, 64×1 octal port RAM
        *   32×14, 64×7 simple dual port RAM
*   36kbit splittable true dual block RAMs, with some minor upgrades compared to 7 Series
*   DSP48E2 blocks, with some minor upgrades compared to 7 Series DSP48E1 blocks
*   I/O banks with CMTs: with major changes from 7 Series[\[76\]](#cite_note-76)
    *   banks still come in HR and HP kinds
    *   each bank has 52 I/O pins: 24 differential pairs, and 4 unpaired pins
    *   the bank is split into 4 byte groups, each made of 6 differential pairs and one unpaired pin
    *   each byte group is further split into a lower nibble (with 3 differential pairs) and upper nibble (with 3 differential pairs and one unpaired pin)
    *   the ISERDES/OSERDES blocks are replaced with BITSLICE blocks; there is one TX BITSLICE and one RX bitslice for every pin, plus an additional TX bitslice for every nibble that can control the tristate signal for all pins in a nibble
    *   each bank has a CMT, with one MMCM and two PLLs
    *   added [MIPI](https://en.wikipedia.org/wiki/MIPI_Alliance "MIPI Alliance") [D-PHY](https://en.wikipedia.org/w/index.php?title=D-PHY&action=edit&redlink=1 "D-PHY (page does not exist)") support
*   much more complex, distributed global clock network split into clock regions
*   system monitors, which is once again a renamed version of 7 Series XADC. There is one system monitor per FPGA die (ie. multi-die FPGAs have multiple system monitors).
*   Miscellaneous configuration logic
*   GTH multi-gigabit transceivers with speed up to 16.3 Gb/s and parallel width of 16, 32, or 64 bits (20, 40, or 80 bits in 8b/10b bypass mode)
*   (on some devices) GTY multi-gigabit transceivers with speed up to 30.5 Gb/s and parallel width of 16, 32, 64, or 128 bits (20, 40, 80, or 160 bits in 8b/10b bypass mode)
*   embedded PCI Express cores capable of Gen3 ×8 operation
*   (on some devices) [100 Gigabit Ethernet](https://en.wikipedia.org/wiki/100_Gigabit_Ethernet "100 Gigabit Ethernet") MAC
*   (on some devices) embedded [Interlaken](https://en.wikipedia.org/wiki/Interlaken_(networking) "Interlaken (networking)") core

The UltraScale+ devices have a few differences:

*   HR banks no longer exist, being replaced with a new kind of I/O banks: HD (High Density) banks, which are very different to HR banks:
    *   24 pins (12 differential pairs) per bank
    *   no CMT
    *   no SERDES or BITSLICE blocks; the only logic available is simple flip-flops or DDR registers
*   upgraded MMCM and PLL
*   upgraded GTH transceivers
*   upgraded GTY transceivers with speed up to 32.75 Gb/s
*   some devices have GTM transceivers with speed up to 58.0 Gb/s (using [PAM4](https://en.wikipedia.org/wiki/PAM4 "PAM4") encoding) and parallel width of 16, 32, 64, or 128 bits (20, 40, 80, or 160 bits in 8b/10b bypass mode)
*   new PCI Express cores:
    *   PCIE4 core capable of Gen3 ×16 or Gen4 ×8 operation
    *   PCIE4C core, additionally capable of CCIX protocol
*   some devices have new UltraRAM blocks, which are true dual port 288kbit RAMs, in 4096×72 configuration

Zynq UltraScale+ devices are [ARM Cortex-A53](https://en.wikipedia.org/wiki/ARM_Cortex-A53 "ARM Cortex-A53") based systems on chip sharing a die with an FPGA. The SoC part of the device is called a Processing System (PS). Each model of Zynq UltraScale+ MPSoC is available in up to 3 sub-models: CG, EG, and EV. The main differences among these sub-models are in the CPU and [GPU](https://en.wikipedia.org/wiki/Graphics_processing_unit "Graphics processing unit") configurations.[\[77\]](#cite_note-77) Zynq UltraScale+ RFSoC devices are available in DR sub-models, which have PS capabilities identical to MPSoC EG sub-models.
<table>
	<tbody>
		<tr>
			<th>
			</th>
			<th>CG
			</th>
			<th>EG and DR
			</th>
			<th>EV
		</tr>
		<tr>
			<td>APU
			</td>
			<td><a href=https://en.wikipedia.org/wiki/ARM_Cortex-A title="ARM Cortex-A">2x Arm
					A53</a>
			</td>
			<td>4x Arm A53
			</td>
			<td>4x Arm A53
		</tr>
		<tr>
			<td>RPU
			</td>
			<td><a href=https://en.wikipedia.org/wiki/ARM_Cortex-R title="ARM Cortex-R">2x Arm
					R5</a>
			</td>
			<td>2x Arm R5
			</td>
			<td>2x Arm R5
		</tr>
		<tr>
			<td>GPU
			</td>
			<td>-
			</td>
			<td><a href=https://en.wikipedia.org/wiki/Mali_(GPU) title="Mali (GPU)">Arm
					Mali-400MP2</a>
			</td>
			<td>Arm Mali-400MP2
		</tr>
		<tr>
			<td>VCU
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td><a href=https://en.wikipedia.org/wiki/H.264/MPEG-4_AVC class=mw-redirect
					title="H.264/MPEG-4 AVC">H.264</a>/<a href=https://en.wikipedia.org/wiki/H.265
					class=mw-redirect title=H.265>H.265</a>
</table>

Zynq UltraScale+ devices have some additional blocks:

*   (some RFSoC devices) [SD-FEC](https://en.wikipedia.org/wiki/Forward_Error_Correction "Forward Error Correction") cores
*   (some RFSoC devices) Digital Front End subsystem (a set of hard logic blocks for RF signal processing)
*   (RFSoC devices) high-speed (radio frequency) [analog-to-digital converters](https://en.wikipedia.org/wiki/Analog-to-digital_converter "Analog-to-digital converter") (RF-ADC) and [digital-to-analog converters](https://en.wikipedia.org/wiki/Digital-to-analog_converter "Digital-to-analog converter") (RF-DAC), for 5G applications
*   (MPSoC EV devices) a video codec unit (VCU) performing H.264 and H.265 decoding/encoding
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (36kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Ultra
				RAMs (288kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48E2 blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CMTs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">100
				Gigabit Ethernet MACs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Intelaken Cores
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Others
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
	<tbody>
		<tr>
			<td>XCKU025
			</td>
			<td>Kintex UltraScale
			</td>
			<td>18180
			</td>
			<td>145440
			</td>
			<td>8460
			</td>
			<td>360
			</td>
			<td>-
			</td>
			<td>1152
			</td>
			<td>6
			</td>
			<td>12 (4×3)
			</td>
			<td>2 HR + 4 HP
			</td>
			<td>104 HR + 208 HP
			</td>
			<td>12 GTH
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>cut (partial) version of XCKU040
		</tr>
		<tr>
			<td>XCKU035
			</td>
			<td>Kintex UltraScale
			</td>
			<td>25391*
			</td>
			<td>203128*
			</td>
			<td>
			</td>
			<td>540*
			</td>
			<td>-
			</td>
			<td>1700*
			</td>
			<td>10
			</td>
			<td>20 (4×5)
			</td>
			<td>2 HR + 8 HP
			</td>
			<td>104 HR + 416 HP
			</td>
			<td>16 GTH
			</td>
			<td>2*
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCKU040
		</tr>
		<tr>
			<td>XCKU040
			</td>
			<td>Kintex UltraScale
			</td>
			<td>30300
			</td>
			<td>242400
			</td>
			<td>14100
			</td>
			<td>600
			</td>
			<td>-
			</td>
			<td>1920
			</td>
			<td>10
			</td>
			<td>20 (4×5)
			</td>
			<td>2 HR + 8 HP
			</td>
			<td>104 HR + 416 HP
			</td>
			<td>20 GTH
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCKU060
			</td>
			<td>Kintex UltraScale
			</td>
			<td>41460
			</td>
			<td>331680
			</td>
			<td>18360
			</td>
			<td>1080
			</td>
			<td>-
			</td>
			<td>2760
			</td>
			<td>12
			</td>
			<td>30 (6×5)
			</td>
			<td>2 HR + 10 HP
			</td>
			<td>104 HR + 520 HP
			</td>
			<td>32 GTH
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCKU085
			</td>
			<td>Kintex UltraScale
			</td>
			<td>62190*
			</td>
			<td>497520*
			</td>
			<td>
			</td>
			<td>1620*
			</td>
			<td>-
			</td>
			<td>4100*
			</td>
			<td>22
			</td>
			<td>54 (6×9)
			</td>
			<td>4 HR + 18 HP
			</td>
			<td>104 HR + 572 HP
			</td>
			<td>56 GTH
			</td>
			<td>4*
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCKU115 with one partial die
		</tr>
		<tr>
			<td>XCKU095
			</td>
			<td>Kintex UltraScale
			</td>
			<td>67200
			</td>
			<td>537600
			</td>
			<td>9600
			</td>
			<td>1680*
			</td>
			<td>-
			</td>
			<td>768
			</td>
			<td>16
			</td>
			<td>40 (5×8)
			</td>
			<td>1 HR + 15 HP
			</td>
			<td>52 HR + 650 HP
			</td>
			<td>32 GTH + 32 GTY
			</td>
			<td>4
			</td>
			<td>2*
			</td>
			<td>2*
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVU095
		</tr>
		<tr>
			<td>XCKU115
			</td>
			<td>Kintex UltraScale
			</td>
			<td>82920
			</td>
			<td>663360
			</td>
			<td>36720
			</td>
			<td>2160
			</td>
			<td>-
			</td>
			<td>5520
			</td>
			<td>24
			</td>
			<td>60 (6×10)
			</td>
			<td>4 HR + 20 HP
			</td>
			<td>156 HR + 676 HP
			</td>
			<td>64 GTH
			</td>
			<td>6
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of two XCKU060
		</tr>
		<tr>
			<td>XCVU065
			</td>
			<td>Virtex UltraScale
			</td>
			<td>44760
			</td>
			<td>358080
			</td>
			<td>9660
			</td>
			<td>1260
			</td>
			<td>-
			</td>
			<td>600
			</td>
			<td>10
			</td>
			<td>30 (6×5)
			</td>
			<td>1 HR + 9 HP
			</td>
			<td>52 HR + 468 HP
			</td>
			<td>20 GTH + 20 GTY
			</td>
			<td>2
			</td>
			<td>3
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVU080
			</td>
			<td>Virtex UltraScale
			</td>
			<td>55714*
			</td>
			<td>445712*
			</td>
			<td>
			</td>
			<td>1421*
			</td>
			<td>-
			</td>
			<td>672*
			</td>
			<td>16
			</td>
			<td>40 (5×8)
			</td>
			<td>1 HR + 15 HP
			</td>
			<td>52 HR + 780 HP
			</td>
			<td>32 GTH + 32 GTY
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>6
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVU095
		</tr>
		<tr>
			<td>XCVU095
			</td>
			<td>Virtex UltraScale
			</td>
			<td>67200
			</td>
			<td>537600
			</td>
			<td>9600
			</td>
			<td>1728
			</td>
			<td>-
			</td>
			<td>768
			</td>
			<td>16
			</td>
			<td>40 (5×8)
			</td>
			<td>1 HR + 15 HP
			</td>
			<td>52 HR + 780 HP
			</td>
			<td>32 GTH + 32 GTY
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>6
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVU125
			</td>
			<td>Virtex UltraScale
			</td>
			<td>89520
			</td>
			<td>716160
			</td>
			<td>19320
			</td>
			<td>2520
			</td>
			<td>-
			</td>
			<td>1200
			</td>
			<td>20
			</td>
			<td>60 (6×10)
			</td>
			<td>2 HR + 18 HP
			</td>
			<td>104 HR + 780 HP
			</td>
			<td>40 GTH + 40 GTY
			</td>
			<td>4
			</td>
			<td>6
			</td>
			<td>6
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of two XCVU065
		</tr>
		<tr>
			<td>XCVU160
			</td>
			<td>Virtex UltraScale
			</td>
			<td>115800*
			</td>
			<td>926400*
			</td>
			<td>
			</td>
			<td>3276*
			</td>
			<td>-
			</td>
			<td>1560*
			</td>
			<td>28
			</td>
			<td>84 (6×14)
			</td>
			<td>2 HR + 26 HP
			</td>
			<td>52 HR + 650 HP
			</td>
			<td>52 GTH + 52 GTY
			</td>
			<td>4*
			</td>
			<td>9
			</td>
			<td>8
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVU190 with one partial die
		</tr>
		<tr>
			<td>XCVU190
			</td>
			<td>Virtex UltraScale
			</td>
			<td>134280
			</td>
			<td>1074240
			</td>
			<td>28980
			</td>
			<td>3780
			</td>
			<td>-
			</td>
			<td>1800
			</td>
			<td>30
			</td>
			<td>90 (6×15)
			</td>
			<td>3 HR + 27 HP
			</td>
			<td>52 HR + 650 HP
			</td>
			<td>60 GTH + 60 GTY
			</td>
			<td>6
			</td>
			<td>9
			</td>
			<td>9
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of three XCVU065
		</tr>
		<tr>
			<td>XCVU440
			</td>
			<td>Virtex UltraScale
			</td>
			<td>316620
			</td>
			<td>2532960
			</td>
			<td>57420
			</td>
			<td>2520
			</td>
			<td>-
			</td>
			<td>2880
			</td>
			<td>30
			</td>
			<td>135 (9×15)
			</td>
			<td>3 HR + 27 HP
			</td>
			<td>52 HR + 1404 HP
			</td>
			<td>48 GTH
			</td>
			<td>6
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of three dedicated die
		</tr>
		<tr>
			<td>XCAU7P
			</td>
			<td>Artix UltraScale+
			</td>
			<td>4680
			</td>
			<td>37440
			</td>
			<td>
			</td>
			<td>108
			</td>
			<td>
			</td>
			<td>215
			</td>
			<td>2
			</td>
			<td>
			</td>
			<td>2 HP + 6 HD
			</td>
			<td>104 HP + 144 HD
			</td>
			<td>4 GTH
			</td>
			<td>1 PCIE4C
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCAU10P
			</td>
			<td>Artix UltraScale+
			</td>
			<td>5500*
			</td>
			<td>44000*
			</td>
			<td>
			</td>
			<td>100*
			</td>
			<td>-
			</td>
			<td>400
			</td>
			<td>3
			</td>
			<td>6 (2x3)
			</td>
			<td>3 HP + 3 HD
			</td>
			<td>156 HP + 72 HD
			</td>
			<td>12 GTH
			</td>
			<td>1 PCIE4C
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCAU15P
		</tr>
		<tr>
			<td>XCAU15P
			</td>
			<td>Artix UltraScale+
			</td>
			<td>9720
			</td>
			<td>77760
			</td>
			<td>5040
			</td>
			<td>144
			</td>
			<td>-
			</td>
			<td>576
			</td>
			<td>3
			</td>
			<td>6 (2x3)
			</td>
			<td>3 HP + 3 HD
			</td>
			<td>156 HP + 72 HD
			</td>
			<td>12 GTH
			</td>
			<td>1 PCIE4C
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCAU20P
			</td>
			<td>Artix UltraScale+
			</td>
			<td>13625*
			</td>
			<td>109000*
			</td>
			<td>
			</td>
			<td>200*
			</td>
			<td>-
			</td>
			<td>900*
			</td>
			<td>3*
			</td>
			<td>16 (4x4)
			</td>
			<td>3 HP + 3 HD
			</td>
			<td>156 HP + 72 HD
			</td>
			<td>12 GTY
			</td>
			<td>1 PCIE4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCKU5P
		</tr>
		<tr>
			<td>XCAU25P
			</td>
			<td>Artix UltraScale+
			</td>
			<td>17625*
			</td>
			<td>141000*
			</td>
			<td>
			</td>
			<td>300*
			</td>
			<td>-
			</td>
			<td>1200*
			</td>
			<td>4
			</td>
			<td>16 (4x4)
			</td>
			<td>4 HP + 4 HD
			</td>
			<td>208 HP + 96 HD
			</td>
			<td>12 GTY
			</td>
			<td>1 PCIE4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCKU5P
		</tr>
		<tr>
			<td>XCKU3P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>20340*
			</td>
			<td>162720*
			</td>
			<td>
			</td>
			<td>360*
			</td>
			<td>48*
			</td>
			<td>1368*
			</td>
			<td>4
			</td>
			<td>16 (4×4)
			</td>
			<td>4 HP + 4 HD
			</td>
			<td>208 HP + 96 HD
			</td>
			<td>16 GTY
			</td>
			<td>1 PCIE4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCKU5P
		</tr>
		<tr>
			<td>XCKU5P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>27120
			</td>
			<td>216960
			</td>
			<td>12480
			</td>
			<td>480
			</td>
			<td>64
			</td>
			<td>1824
			</td>
			<td>4
			</td>
			<td>16 (4×4)
			</td>
			<td>4 HP + 4 HD
			</td>
			<td>208 HP + 96 HD
			</td>
			<td>16 GTY
			</td>
			<td>1 PCIE4
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCKU9P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>34260
			</td>
			<td>274080
			</td>
			<td>18000
			</td>
			<td>912
			</td>
			<td>-
			</td>
			<td>2520
			</td>
			<td>4
			</td>
			<td>25 (4×7-3)
			</td>
			<td>4 HP + 5 HD
			</td>
			<td>208 HP + 96 HD
			</td>
			<td>28 GTH
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>same die as XCZU9*, with disabled PS
		</tr>
		<tr>
			<td>XCKU11P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>37320
			</td>
			<td>298560
			</td>
			<td>18540
			</td>
			<td>600
			</td>
			<td>80
			</td>
			<td>2928
			</td>
			<td>8
			</td>
			<td>29 (4×8-3)
			</td>
			<td>8 HP + 4 HD
			</td>
			<td>416 HP + 96 HD
			</td>
			<td>32 GTH + 20 GTY
			</td>
			<td>4 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>same die as XCZU11*, with disabled PS
		</tr>
		<tr>
			<td>XCKU13P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>42660
			</td>
			<td>341280
			</td>
			<td>23040
			</td>
			<td>744
			</td>
			<td>112
			</td>
			<td>3528
			</td>
			<td>4
			</td>
			<td>25 (4×7-3)
			</td>
			<td>4 HP + 5 HD
			</td>
			<td>208 HP + 96 HD
			</td>
			<td>28 GTH
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>same die as XCZU15*, with disabled PS
		</tr>
		<tr>
			<td>XCKU15P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>65340
			</td>
			<td>522720
			</td>
			<td>20160
			</td>
			<td>984
			</td>
			<td>128
			</td>
			<td>1968
			</td>
			<td>11
			</td>
			<td>41 (4×11-3)
			</td>
			<td>11 HP + 4 HD
			</td>
			<td>572 HP + 96 HD
			</td>
			<td>44 GTH + 32 GTY
			</td>
			<td>5 PCIE4
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>same die as XCZU19*, with disabled PS
		</tr>
		<tr>
			<td>XCKU19P
			</td>
			<td>Kintex UltraScale+
			</td>
			<td>105300
			</td>
			<td>842400
			</td>
			<td>
			</td>
			<td>1728
			</td>
			<td>288
			</td>
			<td>1080
			</td>
			<td>9
			</td>
			<td>45 (5×9)
			</td>
			<td>9 HP + 3 HD
			</td>
			<td>468 HP + 72 HD
			</td>
			<td>32 GTY
			</td>
			<td>3 PCIE4C
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>partial version of XCVU23P
		</tr>
		<tr>
			<td>XCVU3P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>49260
			</td>
			<td>394080
			</td>
			<td>24660
			</td>
			<td>720
			</td>
			<td>320
			</td>
			<td>2280
			</td>
			<td>10
			</td>
			<td>30 (6×5)
			</td>
			<td>10 HP
			</td>
			<td>520 HP
			</td>
			<td>40 GTY
			</td>
			<td>2 PCIE4
			</td>
			<td>3
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVU5P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>75072.125*
			</td>
			<td>600577*
			</td>
			<td>
			</td>
			<td>1024*
			</td>
			<td>470*
			</td>
			<td>3474*
			</td>
			<td>20
			</td>
			<td>60 (6×10)
			</td>
			<td>20 HP
			</td>
			<td>832 HP
			</td>
			<td>80 GTY
			</td>
			<td>4 PCIE4
			</td>
			<td>4*
			</td>
			<td>4*
			</td>
			<td>-
			</td>
			<td>software limited version of XCVU7P
		</tr>
		<tr>
			<td>XCVU7P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>98520
			</td>
			<td>788160
			</td>
			<td>49320
			</td>
			<td>1440
			</td>
			<td>640
			</td>
			<td>4560
			</td>
			<td>20
			</td>
			<td>60 (6×10)
			</td>
			<td>20 HP
			</td>
			<td>832 HP
			</td>
			<td>80 GTY
			</td>
			<td>4 PCIE4
			</td>
			<td>6
			</td>
			<td>6
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of two XCVU3P FPGAs
		</tr>
		<tr>
			<td>XCVU9P, XCU200
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>147780
			</td>
			<td>1182240
			</td>
			<td>75120
			</td>
			<td>2160
			</td>
			<td>960
			</td>
			<td>6840
			</td>
			<td>30
			</td>
			<td>90 (6×15)
			</td>
			<td>30 HP
			</td>
			<td>832 HP
			</td>
			<td>120 GTY
			</td>
			<td>6 PCIE4
			</td>
			<td>9
			</td>
			<td>9
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of three XCVU3P FPGAs;
				<p>XCU200 is the designation of the FPGA used on the Alveo U200 board, which is
					rebadged XCVU9P
				</p>
		</tr>
		<tr>
			<td>XCVU11P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>162000
			</td>
			<td>1296000
			</td>
			<td>74160
			</td>
			<td>2016
			</td>
			<td>960
			</td>
			<td>9216
			</td>
			<td>12
			</td>
			<td>96 (8×12)
			</td>
			<td>12 HP
			</td>
			<td>624 HP
			</td>
			<td>96 GTY
			</td>
			<td>3 PCIE4
			</td>
			<td>9
			</td>
			<td>6
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of three die
		</tr>
		<tr>
			<td>XCVU13P, XCU250
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>216000
			</td>
			<td>1728000
			</td>
			<td>98880
			</td>
			<td>2688
			</td>
			<td>1280
			</td>
			<td>12288
			</td>
			<td>16
			</td>
			<td>128 (8×16)
			</td>
			<td>16 HP
			</td>
			<td>832 HP
			</td>
			<td>128 GTY
			</td>
			<td>4 PCIE4
			</td>
			<td>12
			</td>
			<td>8
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of four die (same base die as XCVU11P); XCU250 is the
				designation of the FPGA used on the Alveo U250 board, which is rebadged XCVU13P
		</tr>
		<tr>
			<td>XCVU19P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>510720
			</td>
			<td>4085760
			</td>
			<td>119520
			</td>
			<td>2160
			</td>
			<td>320
			</td>
			<td>3840
			</td>
			<td>40
			</td>
			<td>180 (9×20)
			</td>
			<td>40 HP + 4 HD
			</td>
			<td>1976 HP + 96 HD
			</td>
			<td>80 GTY
			</td>
			<td>8 PCIE4C
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of four die
		</tr>
		<tr>
			<td>XCVU23P, XCU26
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>128700
			</td>
			<td>1029600
			</td>
			<td>29040
			</td>
			<td>2112
			</td>
			<td>352
			</td>
			<td>1320
			</td>
			<td>11
			</td>
			<td>55 (5×11)
			</td>
			<td>11 HP + 3 HD
			</td>
			<td>572 HP + 72 HD
			</td>
			<td>34 GTY + 4 GTM
			</td>
			<td>4 PCIE4C
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>XCU26 is the designation of the FPGA used on the Alveo SN1022 SmartNIC board, which
				is a rebadged XCVU23P
		</tr>
		<tr>
			<td>XCVU27P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>162000*
			</td>
			<td>1296000*
			</td>
			<td>74160*
			</td>
			<td>2016*
			</td>
			<td>960*
			</td>
			<td>9216*
			</td>
			<td>16
			</td>
			<td>128 (8×16)
			</td>
			<td>16 HP
			</td>
			<td>676 HP
			</td>
			<td>32 GTY + 48 GTM
			</td>
			<td>1 PCIE4
			</td>
			<td>15
			</td>
			<td>8
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVU29P
		</tr>
		<tr>
			<td>XCVU29P
			</td>
			<td>Virtex UltraScale+
			</td>
			<td>216000
			</td>
			<td>1728000
			</td>
			<td>98880
			</td>
			<td>2688
			</td>
			<td>1280
			</td>
			<td>12288
			</td>
			<td>16
			</td>
			<td>128 (8×16)
			</td>
			<td>16 HP
			</td>
			<td>676 HP
			</td>
			<td>32 GTY + 48 GTM
			</td>
			<td>1 PCIE4
			</td>
			<td>15
			</td>
			<td>8
			</td>
			<td>-
			</td>
			<td>a multi-die FPGA made of four die; one die is identical to the one used in XCVU11P,
				the other three contain the GTM transceivers
		</tr>
		<tr>
			<td>XCVU31P
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>54960
			</td>
			<td>439680
			</td>
			<td>25680
			</td>
			<td>672
			</td>
			<td>320
			</td>
			<td>2880
			</td>
			<td>4
			</td>
			<td>32 (8×4)
			</td>
			<td>4 HP
			</td>
			<td>208 HP
			</td>
			<td>32 GTY
			</td>
			<td>4 PCIE4C
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>HBM memory controller + 4GB HBM memory stack
			</td>
			<td>same die as XCVU33P, but with less HBM memory
		</tr>
		<tr>
			<td>XCVU33P
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>54960
			</td>
			<td>439680
			</td>
			<td>25680
			</td>
			<td>672
			</td>
			<td>320
			</td>
			<td>2880
			</td>
			<td>4
			</td>
			<td>32 (8×4)
			</td>
			<td>4 HP
			</td>
			<td>208 HP
			</td>
			<td>32 GTY
			</td>
			<td>4 PCIE4C
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>2 HBM memory controllers + 2×4GB HBM memory stacks
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVU35P, XCU50
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>108960
			</td>
			<td>871680
			</td>
			<td>50400
			</td>
			<td>1344
			</td>
			<td>640
			</td>
			<td>5952
			</td>
			<td>8
			</td>
			<td>64 (8×8)
			</td>
			<td>8 HP
			</td>
			<td>416 HP
			</td>
			<td>64 GTY
			</td>
			<td>1 PCIE4 + 4 PCIE4C
			</td>
			<td>5
			</td>
			<td>2
			</td>
			<td>2 HBM memory controllers + 2×4GB HBM memory stacks
			</td>
			<td>a multi-die FPGA made of XCVU33P + one XCVU11P die; XCU50 is the designation of the
				FPGA used on the Alveo U50 board, which is rebadged XCVU35P
		</tr>
		<tr>
			<td>XCVU37P, XCU280,
				<p>XCU55C
				</p>
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>162960
			</td>
			<td>1303680
			</td>
			<td>75120
			</td>
			<td>2016
			</td>
			<td>960
			</td>
			<td>9024
			</td>
			<td>12
			</td>
			<td>96 (8×12)
			</td>
			<td>12 HP
			</td>
			<td>624 HP
			</td>
			<td>96 GTY
			</td>
			<td>2 PCIE4 + 4 PCIE4C
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>2 HBM memory controllers + 2×4GB HBM memory stacks
			</td>
			<td>a multi-die FPGA made of XCVU33P + two XCVU11P die; XCU280 and XCU55C are the
				designations of the FPGAs used on the Alveo U280 and Alveo U55C boards,
				respectively, which are rebadged XCVU37P
		</tr>
		<tr>
			<td>XCVU45P
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>108960
			</td>
			<td>871680
			</td>
			<td>50400
			</td>
			<td>1344
			</td>
			<td>640
			</td>
			<td>5952
			</td>
			<td>8
			</td>
			<td>64 (8×8)
			</td>
			<td>8 HP
			</td>
			<td>416 HP
			</td>
			<td>64 GTY
			</td>
			<td>1 PCIE4 + 4 PCIE4C
			</td>
			<td>5
			</td>
			<td>2
			</td>
			<td>2 HBM memory controllers + 2×8GB HBM memory stacks
			</td>
			<td>same as XCVU35P, but with more HBM memory
		</tr>
		<tr>
			<td>XCVU47P
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>162960
			</td>
			<td>1303680
			</td>
			<td>75120
			</td>
			<td>2016
			</td>
			<td>960
			</td>
			<td>9024
			</td>
			<td>12
			</td>
			<td>96 (8×12)
			</td>
			<td>12 HP
			</td>
			<td>624 HP
			</td>
			<td>96 GTY
			</td>
			<td>2 PCIE4 + 4 PCIE4C
			</td>
			<td>8
			</td>
			<td>4
			</td>
			<td>2 HBM memory controllers + 2×8GB HBM memory stacks
			</td>
			<td>same as XCVU37P, but with more HBM memory
		</tr>
		<tr>
			<td>XCVU57P
			</td>
			<td>Virtex UltraScale+ HBM
			</td>
			<td>162960
			</td>
			<td>1303680
			</td>
			<td>75120
			</td>
			<td>2016
			</td>
			<td>960
			</td>
			<td>9024
			</td>
			<td>12
			</td>
			<td>96 (8×12)
			</td>
			<td>12 HP
			</td>
			<td>624 HP
			</td>
			<td>32 GTY + 32 GTM
			</td>
			<td>4 PCIE4C
			</td>
			<td>10
			</td>
			<td>4
			</td>
			<td>2 HBM memory controllers + 2×8GB HBM memory stacks
			</td>
			<td>same as XCVU47P, but with the XCVU11P die replaced with XCVU27P GTM-containing die
		</tr>
		<tr>
			<td>XCZU1CG, XCZU1EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>4680
			</td>
			<td>37440
			</td>
			<td>
			</td>
			<td>108
			</td>
			<td>-
			</td>
			<td>216
			</td>
			<td>3
			</td>
			<td>3 (1×3)
			</td>
			<td>3 HP + 1 HD
			</td>
			<td>156 HP + 24 HD
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU2CG, XCZU2EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>5904*
			</td>
			<td>47232*
			</td>
			<td>
			</td>
			<td>150*
			</td>
			<td>-
			</td>
			<td>240*
			</td>
			<td>3
			</td>
			<td>6 (2×3)
			</td>
			<td>3 HP + 4 HD
			</td>
			<td>156 HP + 96 HD
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>software-limitted XCZU3
		</tr>
		<tr>
			<td>XCZU3CG, XCZU3EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>8820
			</td>
			<td>70560
			</td>
			<td>3600
			</td>
			<td>216
			</td>
			<td>-
			</td>
			<td>360
			</td>
			<td>3
			</td>
			<td>6 (2×3)
			</td>
			<td>3 HP + 4 HD
			</td>
			<td>156 HP + 96 HD
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU3TCG
				<p>XCZU3TEG
				</p>
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>9000
			</td>
			<td>72000
			</td>
			<td>
			</td>
			<td>144
			</td>
			<td>48
			</td>
			<td>576
			</td>
			<td>1
			</td>
			<td>
			</td>
			<td>1 HP + 3 HD
			</td>
			<td>52 HP + 72 HD
			</td>
			<td>8 GTH
			</td>
			<td>1 PCIE4C
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCZU4CG, XCZU4EG, XCZU4EV
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>10980*
			</td>
			<td>87840*
			</td>
			<td>
			</td>
			<td>128*
			</td>
			<td>48*
			</td>
			<td>728*
			</td>
			<td>4
			</td>
			<td>12 (3×4)
			</td>
			<td>4 HP + 4 HD
			</td>
			<td>156 HP + 96 HD
			</td>
			<td>16 GTH
			</td>
			<td>2 PCIE4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System, VCU
			</td>
			<td>software-limitted XCZU5
		</tr>
		<tr>
			<td>XCZU5CG, XCZU5EG, XCZU5EV, XCK26
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>14640
			</td>
			<td>117120
			</td>
			<td>7200
			</td>
			<td>144
			</td>
			<td>64
			</td>
			<td>1248
			</td>
			<td>4
			</td>
			<td>12 (3×4)
			</td>
			<td>4 HP + 4 HD
			</td>
			<td>156 HP + 96 HD
			</td>
			<td>16 GTH
			</td>
			<td>2 PCIE4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System, VCU
			</td>
			<td>XCK26 is the designation of the device on the Kria K26 system on module, which is a
				rebadged XCZU5EV device
		</tr>
		<tr>
			<td>XCZU6CG, XCZU6EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>26825.5*
			</td>
			<td>214604*
			</td>
			<td>
			</td>
			<td>714*
			</td>
			<td>-
			</td>
			<td>1973*
			</td>
			<td>4
			</td>
			<td>25 (4×7-3)
			</td>
			<td>4 HP + 5 HD
			</td>
			<td>208 HP + 120 HD
			</td>
			<td>24 GTH
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>software-limitted XCZU9
		</tr>
		<tr>
			<td>XCZU7CG, XCZU7EG, XCZU7EV, XCU30
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>28800
			</td>
			<td>230400
			</td>
			<td>12720
			</td>
			<td>312
			</td>
			<td>96
			</td>
			<td>1728
			</td>
			<td>8
			</td>
			<td>20 (4×6-4)
			</td>
			<td>8 HP + 4 HD
			</td>
			<td>416 HP + 48 HD
			</td>
			<td>24 GTH
			</td>
			<td>2 PCIE4
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System, VCU
			</td>
			<td>XCU30 is the designation of the devices on the Alveo U30 board, which are rebadged
				XCZU7EV devices
		</tr>
		<tr>
			<td>XCZU9CG, XCZU9EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>34260
			</td>
			<td>274080
			</td>
			<td>18000
			</td>
			<td>912
			</td>
			<td>-
			</td>
			<td>2520
			</td>
			<td>4
			</td>
			<td>25 (4×7-3)
			</td>
			<td>4 HP + 5 HD
			</td>
			<td>208 HP + 120 HD
			</td>
			<td>24 GTH
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU11EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>37320
			</td>
			<td>298560
			</td>
			<td>18540
			</td>
			<td>600
			</td>
			<td>80
			</td>
			<td>2928
			</td>
			<td>8
			</td>
			<td>29 (4×8-3)
			</td>
			<td>8 HP + 4 HD
			</td>
			<td>416 HP + 96 HD
			</td>
			<td>32 GTH + 16 GTY
			</td>
			<td>4 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU15EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>42660
			</td>
			<td>341280
			</td>
			<td>23040
			</td>
			<td>744
			</td>
			<td>112
			</td>
			<td>3528
			</td>
			<td>4
			</td>
			<td>25 (4×7-3)
			</td>
			<td>4 HP + 5 HD
			</td>
			<td>208 HP + 120 HD
			</td>
			<td>24 GTH
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>Processing System
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU17EG
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>52925.375*
			</td>
			<td>423403*
			</td>
			<td>
			</td>
			<td>796*
			</td>
			<td>102*
			</td>
			<td>1590*
			</td>
			<td>11
			</td>
			<td>41 (4×11-3)
			</td>
			<td>11 HP + 4 HD
			</td>
			<td>572 HP + 96 HD
			</td>
			<td>44 GTH + 28 GTY
			</td>
			<td>4* PCIE4
			</td>
			<td>2*
			</td>
			<td>2*
			</td>
			<td>Processing System
			</td>
			<td>software-limitted XCZU19
		</tr>
		<tr>
			<td>XCZU19EG, XCU25
			</td>
			<td>Zynq UltraScale+ MPSoC
			</td>
			<td>65340
			</td>
			<td>522720
			</td>
			<td>20160
			</td>
			<td>984
			</td>
			<td>128
			</td>
			<td>1968
			</td>
			<td>11
			</td>
			<td>41 (4×11-3)
			</td>
			<td>11 HP + 4 HD
			</td>
			<td>572 HP + 96 HD
			</td>
			<td>44 GTH + 28 GTY
			</td>
			<td>5 PCIE4
			</td>
			<td>4
			</td>
			<td>4
			</td>
			<td>Processing System
			</td>
			<td>XCU25 is the designation of the device on the Alveo U25 board, which is a rebadged
				XCZU19EG device
		</tr>
		<tr>
			<td>XCZU21DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>208 HP + 72 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>8 SD-FEC cores
				</p>
			</td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU25DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>38761*
			</td>
			<td>310088*
			</td>
			<td>19561*
			</td>
			<td>792*
			</td>
			<td>48*
			</td>
			<td>3145*
			</td>
			<td>6
			</td>
			<td>33 (6×6-3)
			</td>
			<td>6 HP + 4 HD
			</td>
			<td>299 HP + 48 HD
			</td>
			<td>8 GTY
			</td>
			<td>1 PCIE4
			</td>
			<td>1
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>8×4GSPS RF-ADC, 8×6.5GSPS RF-DAC
				</p>
			</td>
			<td>partial XCZU28DR die
		</tr>
		<tr>
			<td>XCZU27DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>299 HP + 48 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>8×4GSPS RF-ADC, 8×6.5GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU28DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>299 HP + 48 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>8×4GSPS RF-ADC, 8×6.5GSPS RF-DAC,
				<p>8 SD-FEC cores
				</p>
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU29DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>312 HP + 96 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>16×2GSPS RF-ADC, 16×6.5GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU39DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>312 HP + 96 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>16×2.2GSPS RF-ADC, 16×6.5GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU42DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>27960
			</td>
			<td>223680
			</td>
			<td>13740
			</td>
			<td>648
			</td>
			<td>160
			</td>
			<td>1872
			</td>
			<td>5
			</td>
			<td>22 (5x5-3)
			</td>
			<td>5 HP + 1 HD
			</td>
			<td>128 HP + 24 HD
			</td>
			<td>8 GTY
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>Processing System,
				<p>2×5GSPS RF-ADC,
				<p>8×2.5GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU67DR
		</tr>
		<tr>
			<td>XCZU43DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>299 HP + 48 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4C
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>4×5GSPS RF-ADC,
				<p>4×10GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU46DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>312 HP + 48 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4C
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>4×5GSPS RF-ADC,
				<p>8×2.5GSPS RF-ADC
				<p>12×10GSPS RF-DAC,
				<p>8 SD-FEC cores
				</p>
			</td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU47DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>299 HP + 48 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4C
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>8×5GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU48DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>299 HP + 48 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4C
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>8×5GSPS RF-ADC,
				<p>8×10GSPS RF-DAC,
				<p>8 SD-FEC cores
				</p>
			</td>
			<td>
		</tr>
		<tr>
			<td>XCZU49DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>53160
			</td>
			<td>425280
			</td>
			<td>26700
			</td>
			<td>1080
			</td>
			<td>80
			</td>
			<td>4272
			</td>
			<td>8
			</td>
			<td>45 (6×8-3)
			</td>
			<td>8 HP + 6 HD
			</td>
			<td>312 HP + 96 HD
			</td>
			<td>16 GTY
			</td>
			<td>2 PCIE4C
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>Processing System,
				<p>16×2.5GSPS RF-ADC,
				<p>16×10GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU65DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>27960
			</td>
			<td>223680
			</td>
			<td>13740
			</td>
			<td>648
			</td>
			<td>160
			</td>
			<td>1872
			</td>
			<td>5
			</td>
			<td>22 (5x5-3)
			</td>
			<td>5 HP + 1 HD
			</td>
			<td>128 HP + 24 HD
			</td>
			<td>8 GTY
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>Processing System,
				<p>Digital Front End,
				<p>6×5.9GSPS RF-ADC,
				<p>6×10GSPS RF-DAC
				</p>
			</td>
			<td>same die as XCZU67DR
		</tr>
		<tr>
			<td>XCZU67DR
			</td>
			<td>Zynq UltraScale+ RFSoC
			</td>
			<td>27960
			</td>
			<td>223680
			</td>
			<td>13740
			</td>
			<td>648
			</td>
			<td>160
			</td>
			<td>1872
			</td>
			<td>5
			</td>
			<td>22 (5x5-3)
			</td>
			<td>5 HP + 1 HD
			</td>
			<td>128 HP + 24 HD
			</td>
			<td>8 GTY
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>Processing System,
				<p>Digital Front End,
					2×5.9GSPS RF-ADC,
				<p>8×2.95GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p>
			</td>
			<td>
	<tfoot>
</table>

Note: the clock region grid is irregular on some UltraScale+ devices because of a hole in bottom for the Processing System (and possibly the VCU).

# Versal

In 2018, Xilinx announced a product line called Versal.[\[78\]](#cite_note-78) Versal chips contain CPU, GPU, [DSP](https://en.wikipedia.org/wiki/Digital_signal_processor "Digital signal processor"), and FPGA components. Versal is fabricated using 7nm process technology.

The Versal devices are made of[\[79\]](#cite_note-79)

*   PMC (Platform Management Controller), a [MicroBlaze](https://en.wikipedia.org/wiki/MicroBlaze "MicroBlaze")\-based processor block responsible for booting the device and monitoring its operations
*   PS (Processing System), an ARM [system on a chip](https://en.wikipedia.org/wiki/System_on_a_chip "System on a chip") block with dual core [Cortex-A72](https://en.wikipedia.org/wiki/ARM_Cortex-A72 "ARM Cortex-A72") (APU) and dual-core [Cortex-R5F](https://en.wikipedia.org/wiki/ARM_Cortex-R "ARM Cortex-R") (RPU)
*   (on some devices) CPM, a hard PCI Express block with CCIX support; comes in Gen4 and Gen5 version
*   (on some devices) XRAM, a single 32Mbit block of static RAM
*   a NoC ([Network on Chip](https://en.wikipedia.org/wiki/Network_on_a_chip "Network on a chip")) spanning the device, with [AXI4](https://en.wikipedia.org/wiki/AMBA_(bus_protocol) "AMBA (bus protocol)") interface blocks, connecting the PS, the CPM, the FPGA, the DDRMC cores, and the AI cores together
*   one or more DDRMC (DDR memory controller) blocks
*   (on some devices) HBM memory controller blocks
*   XPIO I/O banks, which are the successor to UltraScale+ HP I/O banks; in a departure from previous devices, the XPIO banks are considered to be outside the FPGA part, and some XPIO banks can only be used by the DDRMC blocks (without FPGA connectivity)
*   GTY transceivers, which can be used by the FPGA or by the CPM
*   GTYP transceivers, which are a minor improvement of GTY transceivers
*   GTM transceivers
*   the FPGA fabric with:
    *   configurable logic blocks (CLBs), which are quite different to previous architectures
        *   a CLB is made of 4 SLICEs: 2 SLICELs and 2 SLICEMs
        *   each SLICE still contains 8 6-input LUTs, each fracturable into two 5-input LUTs with shared inputs
        *   each slice still contains 16 flip-flops, two for each LUT
        *   there are no more wide LUT multiplexers
        *   the carry chain has been replaced with new carry and cascade logic
        *   the distributed RAM configurations are different
    *   36kbit true dual port block RAMs, with some changes from UltraScale+
    *   288kbit UltraRAM blocks, with some changes from UltraScale+
    *   DSP58 blocks, which replace the old DSP48\* blocks; two adjacent DSP58 blocks can be combined into a single DSP58\_CPLX block, performing [complex](https://en.wikipedia.org/wiki/Complex_number "Complex number") arithmetic
    *   HD I/O blocks, similar to UltraScale+
        *   now with 11 differential pairs (22 pins) per block
    *   NoC master access ports
    *   NoC slave access ports
    *   hard IP blocks:
        *   PCI Express Gen4 and Gen5 cores
        *   MRMAC (Multirate Ethernet MAC), usable in 1×100Gbit, 2×50Gbit, 1×40Gbit, 4×25Gbit, 4×10Gbit configurations
        *   DCMAC (600G Channelized Multirate Ethernet Subsystem), usable in 1×400Gbit, 3×200Gbit, 6×100Gbit configurations
        *   600Gbit Interlaken block, usable in 12×56.42Gbit, 24×28.21Gbit, or 24×12.5Gbit configurations
        *   400Gbit HSC (High-Speed Crypto) Engine, usable in 1×400Gbit, 2×200Gbit, or 4×100Gbit configurations
        *   VDE (Video Decoder Engine)
*   (on some devices) [AI](https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence") Engines, [vector processor](https://en.wikipedia.org/wiki/Vector_processor "Vector processor") cores meant for [machine learning](https://en.wikipedia.org/wiki/Machine_learning "Machine learning") usage
*   (on some devices) [AI](https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence")\-ML Engines, updated version of the AI Engines

<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">SLICEs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=SLICEs×8)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (36kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Ultra
				RAMs (288kbit each)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DSP58
				blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DDRMC
				blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">XPIO
				banks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">HDIO
				banks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">NoC
				master/slave ports
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Transceivers
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Ethernet MACs
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Interlaken blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">HSC
				blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">AI
				Engines
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Other
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
	<tbody>
		<tr>
			<td>XCVE2002
			</td>
			<td>Versal AI Edge
			</td>
			<td>2500*
			</td>
			<td>20000*
			</td>
			<td>24*
			</td>
			<td>24*
			</td>
			<td>90*
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>0
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>8 AI-ML
			</td>
			<td>XRAM
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVE2102
			</td>
			<td>Versal AI Edge
			</td>
			<td>4576
			</td>
			<td>36608
			</td>
			<td>47
			</td>
			<td>47
			</td>
			<td>176
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>0
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>12 AI-ML
			</td>
			<td>XRAM
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVE2202
			</td>
			<td>Versal AI Edge
			</td>
			<td>13125*
			</td>
			<td>105000*
			</td>
			<td>108*
			</td>
			<td>108*
			</td>
			<td>324*
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>1
			</td>
			<td>5
			</td>
			<td>8 GTYP
			</td>
			<td>1 Gen4
			</td>
			<td>1 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>24 AI-ML (12×2)
			</td>
			<td>XRAM
			</td>
			<td>software-limitted version of XCVE2302, not yet in production
		</tr>
		<tr>
			<td>XCVE2302
			</td>
			<td>Versal AI Edge
			</td>
			<td>18784
			</td>
			<td>150272
			</td>
			<td>155
			</td>
			<td>155
			</td>
			<td>464
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>1
			</td>
			<td>5
			</td>
			<td>8 GTYP
			</td>
			<td>1 Gen4
			</td>
			<td>1 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>34 AI-ML (17×2)
			</td>
			<td>XRAM
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVE1752
			</td>
			<td>Versal AI Edge
			</td>
			<td>56064
			</td>
			<td>448512
			</td>
			<td>954
			</td>
			<td>462
			</td>
			<td>1312
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>44 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>304 (38×8)
			</td>
			<td>CPM Gen4
			</td>
			<td>software-limitted version of XCVC1702
		</tr>
		<tr>
			<td>XCVE2602
			</td>
			<td>Versal AI Edge
			</td>
			<td>46875*
			</td>
			<td>375000*
			</td>
			<td>476*
			</td>
			<td>224*
			</td>
			<td>984*
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>32 GTYP
			</td>
			<td>4 Gen5
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>152 AI-ML (38×4)
			</td>
			<td>CPM Gen5, 2×VDE
			</td>
			<td>software-limitted version of XCVC2802, not yet in production
		</tr>
		<tr>
			<td>XCVE2802
			</td>
			<td>Versal AI Edge
			</td>
			<td>65088
			</td>
			<td>520704
			</td>
			<td>600
			</td>
			<td>264
			</td>
			<td>1312
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>32 GTYP
			</td>
			<td>4 Gen5
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>304 AI-ML (38×8)
			</td>
			<td>CPM Gen5, 4×VDE
			</td>
			<td>software-limitted version of XCVC2802, not yet in production
		</tr>
		<tr>
			<td>XCVC1352
			</td>
			<td>Versal AI Core
			</td>
			<td>30848
			</td>
			<td>246784
			</td>
			<td>441
			</td>
			<td>209
			</td>
			<td>928
			</td>
			<td>2
			</td>
			<td>7
			</td>
			<td>2
			</td>
			<td>10
			</td>
			<td>8 GTYP
			</td>
			<td>1 Gen4
			</td>
			<td>1 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>128
			</td>
			<td>XRAM
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVC1502
			</td>
			<td>Versal AI Core
			</td>
			<td>46544
			</td>
			<td>372352*
			</td>
			<td>848
			</td>
			<td>390
			</td>
			<td>1032
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>1
			</td>
			<td>21
			</td>
			<td>32 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>3 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>198 (33×6)
			</td>
			<td>CPM Gen4
			</td>
			<td>software-limitted version of XCVC1702
		</tr>
		<tr>
			<td>XCVC1702
			</td>
			<td>Versal AI Core
			</td>
			<td>56064
			</td>
			<td>448512
			</td>
			<td>954
			</td>
			<td>462
			</td>
			<td>1312
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>44 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>4 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>304 (38×8)
			</td>
			<td>CPM Gen4
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVC1802
			</td>
			<td>Versal AI Core
			</td>
			<td>90625*
			</td>
			<td>725000*
			</td>
			<td>800*
			</td>
			<td>325*
			</td>
			<td>1600*
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>2
			</td>
			<td>28
			</td>
			<td>44 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>4 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>300 (50×6)
			</td>
			<td>CPM Gen4
			</td>
			<td>software-limitted version of XCVC1902
		</tr>
		<tr>
			<td>XCVC1902
			</td>
			<td>Versal AI Core
			</td>
			<td>112480
			</td>
			<td>899840
			</td>
			<td>967
			</td>
			<td>463
			</td>
			<td>1968
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>2
			</td>
			<td>28
			</td>
			<td>44 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>4 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>400 (50×8)
			</td>
			<td>CPM Gen4
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVC2602
			</td>
			<td>Versal AI Core
			</td>
			<td>46875*
			</td>
			<td>375000*
			</td>
			<td>476*
			</td>
			<td>224*
			</td>
			<td>984*
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>32 GTYP
			</td>
			<td>4 Gen5
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>152 AI-ML (38×4)
			</td>
			<td>CPM Gen5, 2×VDE
			</td>
			<td>software-limitted version of XCVC2802, not yet in production
		</tr>
		<tr>
			<td>XCVC2802
			</td>
			<td>Versal AI Core
			</td>
			<td>65088
			</td>
			<td>520704
			</td>
			<td>600
			</td>
			<td>264
			</td>
			<td>1312
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>32 GTYP
			</td>
			<td>4 Gen5
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>304 AI-ML (38×8)
			</td>
			<td>CPM Gen5, 4×VDE
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVM1102
			</td>
			<td>Versal Prime
			</td>
			<td>18784
			</td>
			<td>150272
			</td>
			<td>155
			</td>
			<td>155
			</td>
			<td>464
			</td>
			<td>1
			</td>
			<td>4
			</td>
			<td>1
			</td>
			<td>5
			</td>
			<td>8 GTYP
			</td>
			<td>1 Gen4
			</td>
			<td>1 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>XRAM
			</td>
			<td>software-limitted version of XCVE2302, not yet in production
		</tr>
		<tr>
			<td>XCVM1302
			</td>
			<td>Versal Prime
			</td>
			<td>39616*
			</td>
			<td>316928*
			</td>
			<td>502*
			</td>
			<td>178*
			</td>
			<td>832*
			</td>
			<td>2
			</td>
			<td>8
			</td>
			<td>1
			</td>
			<td>9*
			</td>
			<td>24 GTY
			</td>
			<td>2 Gen4
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>CPM Gen4
			</td>
			<td>software-limitted version of XCVM1402
		</tr>
		<tr>
			<td>XCVM1402
			</td>
			<td>Versal Prime
			</td>
			<td>70720
			</td>
			<td>565760
			</td>
			<td>1150
			</td>
			<td>286
			</td>
			<td>1696
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>1
			</td>
			<td>18
			</td>
			<td>24 GTY
			</td>
			<td>2 Gen4
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>CPM Gen4
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVM1502
			</td>
			<td>Versal Prime
			</td>
			<td>56064
			</td>
			<td>448512
			</td>
			<td>954
			</td>
			<td>462
			</td>
			<td>1312
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>44 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>4 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>CPM Gen4
			</td>
			<td>XCVC1702 with AI Engines disabled
		</tr>
		<tr>
			<td>XCVM1802
			</td>
			<td>Versal Prime
			</td>
			<td>112480
			</td>
			<td>899840
			</td>
			<td>967
			</td>
			<td>463
			</td>
			<td>1968
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>2
			</td>
			<td>28
			</td>
			<td>44 GTY
			</td>
			<td>4 Gen4
			</td>
			<td>4 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>CPM Gen4
			</td>
			<td>XCVC1902 with AI Engines disabled
		</tr>
		<tr>
			<td>XCVM2202
			</td>
			<td>Versal Prime
			</td>
			<td>65088
			</td>
			<td>520704
			</td>
			<td>600
			</td>
			<td>264
			</td>
			<td>1312
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>21
			</td>
			<td>32 GTYP
			</td>
			<td>4 Gen5
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>XCVC2802 with AI Engines and VDE disabled, not yet in production
		</tr>
		<tr>
			<td>XCVM2302
			</td>
			<td>Versal Prime
			</td>
			<td>89984
			</td>
			<td>719872
			</td>
			<td>1405
			</td>
			<td>453
			</td>
			<td>1904
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>30
			</td>
			<td>8 GTYP + 40 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>6 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVP1402, not yet in production
		</tr>
		<tr>
			<td>XCVM2502
			</td>
			<td>Versal Prime
			</td>
			<td>112528
			</td>
			<td>900224
			</td>
			<td>1341
			</td>
			<td>677
			</td>
			<td>3984
			</td>
			<td>4
			</td>
			<td>12
			</td>
			<td>-
			</td>
			<td>28
			</td>
			<td>16 GTYP
			</td>
			<td>2 Gen5
			</td>
			<td>2 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>software-limitted version of XCVP1202, not yet in production
		</tr>
		<tr>
			<td>XCVM2902
			</td>
			<td>Versal Prime
			</td>
			<td>127616
			</td>
			<td>1020928
			</td>
			<td>1981
			</td>
			<td>645
			</td>
			<td>2672
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>42
			</td>
			<td>8 GTYP + 40 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>6 MRMAC
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVP1402, not yet in production
		</tr>
		<tr>
			<td>XCVP1002
			</td>
			<td>Versal Premium
			</td>
			<td>47600*
			</td>
			<td>380800*
			</td>
			<td>535*
			</td>
			<td>345*
			</td>
			<td>1140*
			</td>
			<td>2
			</td>
			<td>7
			</td>
			<td>-
			</td>
			<td>16*
			</td>
			<td>20 GTY + 24 GTM
			</td>
			<td>1 Gen4
			</td>
			<td>3 MRMAC + 2 DCMAC
			</td>
			<td>1
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>CPM Gen4
			</td>
			<td>software-limitted version of XCVP1052, not yet in production
		</tr>
		<tr>
			<td>XCVP1052
			</td>
			<td>Versal Premium
			</td>
			<td>67760
			</td>
			<td>542080
			</td>
			<td>751
			</td>
			<td>489
			</td>
			<td>1572
			</td>
			<td>2
			</td>
			<td>7
			</td>
			<td>-
			</td>
			<td>22
			</td>
			<td>20 GTY + 48 GTM
			</td>
			<td>1 Gen4
			</td>
			<td>5 MRMAC + 3 DCMAC
			</td>
			<td>2
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>CPM Gen4
			</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVP1102
			</td>
			<td>Versal Premium
			</td>
			<td>89984
			</td>
			<td>719872
			</td>
			<td>1405
			</td>
			<td>453
			</td>
			<td>1904
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>30
			</td>
			<td>8 GTYP + 64 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>6 MRMAC + 4 DCMAC
			</td>
			<td>2
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>software-limitted version of XCVP1402
		</tr>
		<tr>
			<td>XCVP1202
			</td>
			<td>Versal Premium
			</td>
			<td>112528
			</td>
			<td>900224
			</td>
			<td>1341
			</td>
			<td>677
			</td>
			<td>3984
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>28
			</td>
			<td>28 GTYP + 20 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>2 MRMAC + 1 DCMAC
			</td>
			<td>-
			</td>
			<td>1
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVP1402
			</td>
			<td>Versal Premium
			</td>
			<td>127616
			</td>
			<td>1020928
			</td>
			<td>1981
			</td>
			<td>645
			</td>
			<td>2672
			</td>
			<td>3
			</td>
			<td>9
			</td>
			<td>2
			</td>
			<td>42
			</td>
			<td>8 GTYP + 96 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>6 MRMAC + 8 DCMAC
			</td>
			<td>2
			</td>
			<td>5
			</td>
			<td>-
			</td>
			<td>-
			</td>
			<td>
		</tr>
		<tr>
			<td>XCVP1502
			</td>
			<td>Versal Premium
			</td>
			<td>215056
			</td>
			<td>1720448
			</td>
			<td>2541
			</td>
			<td>1301
			</td>
			<td>7440
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>52
			</td>
			<td>28 GTYP + 60 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>4 MRMAC + 3 DCMAC
			</td>
			<td>1
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>multi-die device consisting of XCVP1202 + an extension die
		</tr>
		<tr>
			<td>XCVP1552
			</td>
			<td>Versal Premium
			</td>
			<td>219248
			</td>
			<td>1753984
			</td>
			<td>2541
			</td>
			<td>1301
			</td>
			<td>7392
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>52
			</td>
			<td>68 GTYP + 20 GTM
			</td>
			<td>8 Gen5
			</td>
			<td>4 MRMAC + 1 DCMAC
			</td>
			<td>-
			</td>
			<td>2
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>XCVH15x2 without HBM
		</tr>
		<tr>
			<td>XCVP1702
			</td>
			<td>Versal Premium
			</td>
			<td>317584
			</td>
			<td>2540672
			</td>
			<td>3741
			</td>
			<td>1925
			</td>
			<td>10896
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>76
			</td>
			<td>28 GTYP + 100 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>6 MRMAC + 5 DCMAC
			</td>
			<td>2
			</td>
			<td>3
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>multi-die device consisting of XCVP1202 + 2× extension die (same as XCVP1502)
		</tr>
		<tr>
			<td>XCVP1802
			</td>
			<td>Versal Premium
			</td>
			<td>420112
			</td>
			<td>3360896
			</td>
			<td>4941
			</td>
			<td>2549
			</td>
			<td>14352
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>100
			</td>
			<td>28 GTYP + 140 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>8 MRMAC + 7 DCMAC
			</td>
			<td>3
			</td>
			<td>4
			</td>
			<td>-
			</td>
			<td>CPM Gen5
			</td>
			<td>multi-die device consisting of XCVP1202 + 3× extension die (same as XCVP1502)
		</tr>
		<tr>
			<td>XCVP2502
			</td>
			<td>Versal Premium
			</td>
			<td>213584
			</td>
			<td>1708672
			</td>
			<td>2541
			</td>
			<td>1301
			</td>
			<td>7392
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>52
			</td>
			<td>28 GTYP + 60 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>4 MRMAC + 3 DCMAC
			</td>
			<td>1
			</td>
			<td>2
			</td>
			<td>472 (59×8)
			</td>
			<td>CPM Gen5
			</td>
			<td>multi-die device consisting of XCVP1202 + AI extension die
		</tr>
		<tr>
			<td>XCVP2802
			</td>
			<td>Versal Premium
			</td>
			<td>418640
			</td>
			<td>3349120
			</td>
			<td>4941
			</td>
			<td>2549
			</td>
			<td>14304
			</td>
			<td>4
			</td>
			<td>13
			</td>
			<td>-
			</td>
			<td>100
			</td>
			<td>28 GTYP + 140 GTM
			</td>
			<td>2 Gen5
			</td>
			<td>8 MRMAC + 7 DCMAC
			</td>
			<td>3
			</td>
			<td>4
			</td>
			<td>472 (59×8)
			</td>
			<td>CPM Gen5
			</td>
			<td>multi-die device consisting of XCVP1202 + 2× extension die (same as XCVP1502) + AI
				extension die (same as XCVP2502)
		</tr>
		<tr>
			<td>XCVH1522
			</td>
			<td rowspan=3>Versal HBM
			</td>
			<td rowspan=3>219248
			</td>
			<td rowspan=3>1753984
			</td>
			<td rowspan=3>2541
			</td>
			<td rowspan=3>1301
			</td>
			<td rowspan=3>7392
			</td>
			<td rowspan=3>4
			</td>
			<td rowspan=3>13
			</td>
			<td rowspan=3>-
			</td>
			<td rowspan=3>52
			</td>
			<td rowspan=3>68 GTYP + 20 GTM
			</td>
			<td rowspan=3>8 Gen5
			</td>
			<td rowspan=3>4 MRMAC + 1 DCMAC
			</td>
			<td rowspan=3>-
			</td>
			<td rowspan=3>2
			</td>
			<td rowspan=3>-
			</td>
			<td>CPM Gen5, 8GB HBM
			</td>
			<td rowspan=3>multi-die device consisting of XCVP1202 + HBM extension die + HBM memory
				stacks, not yet in production
		</tr>
		<tr>
			<td>XCVH1542
			</td>
			<td>CPM Gen5, 16GB HBM
		</tr>
		<tr>
			<td>XCVH1582
			</td>
			<td>CPM Gen5, 32GB HBM
		</tr>
		<tr>
			<td>XCVH1742
			</td>
			<td rowspan=2>Versal HBM
			</td>
			<td rowspan=2>321776
			</td>
			<td rowspan=2>2574208
			</td>
			<td rowspan=2>3741
			</td>
			<td rowspan=2>1925
			</td>
			<td rowspan=2>10848
			</td>
			<td rowspan=2>4
			</td>
			<td rowspan=2>13
			</td>
			<td rowspan=2>-
			</td>
			<td rowspan=2>76
			</td>
			<td rowspan=2>68 GTYP + 60 GTM
			</td>
			<td rowspan=2>2 Gen5
			</td>
			<td rowspan=2>6 MRMAC + 3 DCMAC
			</td>
			<td rowspan=2>1
			</td>
			<td rowspan=2>3
			</td>
			<td rowspan=2>-
			</td>
			<td>CPM Gen5, 16GB HBM
			</td>
			<td rowspan=2>multi-die device consisting of XCVP1202 + extension die (same as XCVP1502)
				+ HBM extension die (same as XCVH15x2) + HBM memory stacks, not yet in production
		</tr>
		<tr>
			<td>XCVH1782
			</td>
			<td>CPM Gen5, 32GB HBM
	<tfoot>
</table>

# Alveo and Kria 

In addition to standalone FPGA chips, Xilinx also offers the Alveo product line of ready-to-use FPGA-based accelerator boards, and the Kria product line of FPGA-based Systems-on-Module (SOMs). The FPGAs used on these boards reuse the same die as standalone chips, but are considered to be distinct products by the Vivado toolchain.

<table>
	<tbody>
		<tr>
			<th>Product
			</th>
			<th>Purpose
			</th>
			<th>FPGA
			</th>
			<th>Corresponding standalone FPGA
			</th>
			<th>Board format
			</th>
			<th>Peripherials on board
		</tr>
		<tr>
			<td>Alveo SN1000 SmartNIC<sup id=cite_ref-80 class=reference><a
						href=#cite_note-80>[80]</a></sup>
			</td>
			<td rowspan=2>Accelerated <a
					href=https://en.wikipedia.org/wiki/Network_interface_controller
					title="Network interface controller">network interface controller</a>
			</td>
			<td>XCU26
			</td>
			<td>XCVU23P
			</td>
			<td>PCI Express ×16 full height, half length, single slot
			</td>
			<td>
				<ul>
					<li>PCI Express Gen 3 ×16 or Gen 4 ×8 interface to FPGA</li>
					<li>Dedicated 16-core <a
							href=https://en.wikipedia.org/wiki/ARM_architecture_family
							title="ARM architecture family">ARMv8</a> <a
							href=https://en.wikipedia.org/wiki/ARM_Cortex-A72
							title="ARM Cortex-A72">Cortex-A72</a> CPU (<a
							href=https://en.wikipedia.org/wiki/NXP_Semiconductors
							title="NXP Semiconductors">NXP</a> Layerscape LX2162A), connected to
						FPGA via internal PCI Express Gen 3 ×8 link</li>
					<li>4GB 72-bit component <a href=https://en.wikipedia.org/wiki/DDR4_SDRAM
							title="DDR4 SDRAM">DDR4</a> RAM for the ARM CPU</li>
					<li>2×4GB 72-bit component DDR4 RAM for the FPGA</li>
					<li>2×<a href=https://en.wikipedia.org/wiki/Small_Form-factor_Pluggable
							title="Small Form-factor Pluggable">QSFP28</a> <a
							href=https://en.wikipedia.org/wiki/100_Gigabit_Ethernet
							title="100 Gigabit Ethernet">100 Gigabit Ethernet</a></li>
					<li>16GB of eMMC NAND flash</li>
					<li>64MB of NOR flash</li>
					<li><a href=https://en.wikipedia.org/wiki/NC-SI title=NC-SI>NC-SI</a> sideband
						connector
				</ul>
		</tr>
		<tr>
			<td>Alveo U25N
			</td>
			<td>XCU25
			</td>
			<td>XCZU19EG
			</td>
			<td>PCI Express ×16 half height, half length, single slot
			</td>
			<td>
				<ul>
					<li>PCI Express Gen 3 ×16 interface to the FPGA's PS block</li>
					<li>2GB 40-bit component <a href=https://en.wikipedia.org/wiki/DDR4_SDRAM
							title="DDR4 SDRAM">DDR4</a> RAM for the PS block</li>
					<li>4GB 72-bit component <a href=https://en.wikipedia.org/wiki/DDR4_SDRAM
							title="DDR4 SDRAM">DDR4</a> RAM for the FPGA fabric</li>
					<li>2×SFP28 25 Gigabit Ethernet</li>
					<li>XtremeScale X2 Ethernet Controller</li>
					<li>Propertiary DMB-1 maintenance port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo U30
			</td>
			<td>Media accelerator card
			</td>
			<td>2×XCU30
			</td>
			<td>2×XCZU7EV
			</td>
			<td>PCI Express ×8 half height, half length, single slot
			</td>
			<td>
				<ul>
					<li>bifurcated 2× PCI Express Gen 3 ×4 interface to the FPGAs' PS blocks (×4
						lanes per device)</li>
					<li>2×4GB 72-bit component <a href=https://en.wikipedia.org/wiki/DDR4_SDRAM
							title="DDR4 SDRAM">DDR4</a> RAM</li>
					<li>Configuration flash</li>
					<li>Propertiary maintenance port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo U55C<sup id=cite_ref-81 class=reference><a href=#cite_note-81>[81]</a></sup>
			</td>
			<td>High performance compute card
			</td>
			<td>XCU55C
			</td>
			<td>XCVU47P
			</td>
			<td>PCI Express ×16 full height, half length, single slot
			</td>
			<td>
				<ul>
					<li>PCI Express Gen 3 ×16 or Gen 4 ×8 interface to FPGA</li>
					<li>16GB of <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory
							title="High Bandwidth Memory">HBM2</a> RAM (on FPGA)</li>
					<li>2×QSFP28 100 Gigabit Ethernet</li>
					<li>Configuration flash</li>
					<li>TI MSP432 satellite controller</li>
					<li><a href=https://en.wikipedia.org/wiki/Micro_USB class=mw-redirect
							title="Micro USB">Micro USB</a> port for configuration</li>
					<li>Propertiary DMB-1 maintenance port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo U50<sup id=cite_ref-82 class=reference><a href=#cite_note-82>[82]</a></sup>
			</td>
			<td rowspan=4>Data center accelerator card
			</td>
			<td>XCU50
			</td>
			<td>XCVU35P
			</td>
			<td>PCI Express ×16 half height, half length, single slot
			</td>
			<td>
				<ul>
					<li>PCI Express Gen 3 ×16 or Gen 4 ×8 interface to FPGA</li>
					<li>8GB of <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory
							title="High Bandwidth Memory">HBM2</a> RAM (on FPGA)</li>
					<li>QSFP28 100 Gigabit Ethernet</li>
					<li>Configuration flash</li>
					<li>TI MSP432 satellite controller</li>
					<li>Propertiary DMB-1 maintenance port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo U200<sup id=cite_ref-83 class=reference><a href=#cite_note-83>[83]</a></sup>
			</td>
			<td>XCU200
			</td>
			<td>XCVU9P
			</td>
			<td rowspan=3>PCI Express ×16 full height, full or ¾ length, dual slot
			</td>
			<td rowspan=2>
				<ul>
					<li>PCI Express Gen 3 ×16 interface to FPGA</li>
					<li>4× DDR4 DIMM sockets with 4× 16GB RAM preinstalled</li>
					<li>2×QSFP28 100 Gigabit Ethernet</li>
					<li>Configuration flash</li>
					<li>TI MSP432 satellite controller</li>
					<li><a href=https://en.wikipedia.org/wiki/Micro_USB class=mw-redirect
							title="Micro USB">Micro USB</a> port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo U250
			</td>
			<td>XCU250
			</td>
			<td>XCVU13P
		</tr>
		<tr>
			<td>Alveo U280<sup id=cite_ref-84 class=reference><a href=#cite_note-84>[84]</a></sup>
			</td>
			<td>XCU280
			</td>
			<td>XCVU37P
			</td>
			<td>
				<ul>
					<li>PCI Express Gen 3 ×16 or Gen 4 ×8 interface to FPGA</li>
					<li>8GB of <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory
							title="High Bandwidth Memory">HBM2</a> RAM (on FPGA)</li>
					<li>2× DDR4 DIMM sockets with 2× 16GB RAM preinstalled</li>
					<li>2×QSFP28 100 Gigabit Ethernet</li>
					<li>Configuration flash</li>
					<li>Satellite controller</li>
					<li><a href=https://en.wikipedia.org/wiki/Micro_USB class=mw-redirect
							title="Micro USB">Micro USB</a> port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo X3522<sup id=cite_ref-85 class=reference><a href=#cite_note-85>[85]</a></sup>
			</td>
			<td>Low Latency Network Adapter
			</td>
			<td rowspan=2>XCUX35
			</td>
			<td rowspan=2>XCVU23P
			</td>
			<td rowspan=2>PCI Express ×8 half height, half length, single slot
			</td>
			<td rowspan=2>
				<ul>
					<li>PCI Express Gen 3 ×8 or Gen 4 ×8 interface to FPGA</li>
					<li>2×4GB 72-bit component DDR4 RAM</li>
					<li>2×DSFP28 50 Gigabit Ethernet</li>
					<li>Configuration flash</li>
					<li>LPC5500 satellite controller</li>
					<li>Propertiary maintenance port for configuration
				</ul>
		</tr>
		<tr>
			<td>Alveo X3522PV
			</td>
			<td>Adaptable Accelerator Card
		</tr>
		<tr>
			<td>Kria K26
			</td>
			<td>
			</td>
			<td>XCK26
			</td>
			<td>XCZU5EV
			</td>
			<td><a href=https://en.wikipedia.org/wiki/System_on_module
					title="System on module">System on Module</a>
			</td>
			<td>
				<ul>
					<li>33.33 MHz oscillator, 32.768 kHz RTC crystal</li>
					<li>4GB 64-bit component DDR4 RAM (for PS block)</li>
					<li>16GB eMMC flash</li>
					<li>64MB QSPI flash</li>
					<li>8kB I2C EEPROM</li>
					<li>TPM 2.0</li>
					<li>Power supply circuit, powered by a single 5V input</li>
					<li>Two custom power+IO connectors, exposing HPIO, HDIO, GTH, and GTR pins of
						the FPGA
				</ul>
</table>

# FPGAs without integrated CPUs [\[86\]](#cite_note-:3-86)

This list is [incomplete], but who the hell want to help WikiPedia when they removed this file?

## Artix 
<table>
	<tbody>
		<tr>
			<th>Family
			</th>
			<th>Launch
			</th>
			<th>Process
			</th>
			<th colspan=3>Logic cells
			</th>
			<th colspan=2>Block RAM
			</th>
			<th colspan=3>DSP slices
			</th>
			<th colspan=4>MGT
			</th>
			<th colspan=2>PCIe blocks
			</th>
			<th colspan=2>Mem Intf BW
			</th>
			<th>IO pins
			</th>
			<th>V<sub>CCINT</sub>
		</tr>
		<tr>
			<td>
			</td>
			<td>
			</td>
			<td>nm
			</td>
			<td>Count (K)
			</td>
			<td>T<sub>ITO</sub> (ns)
			</td>
			<td>T<sub>CKO</sub> (ns)
			</td>
			<td>Total (Mb)
			</td>
			<td>F<sub>MAX</sub> (MHz)
			</td>
			<td>Count
			</td>
			<td>Total GMAC/s
			</td>
			<td>F<sub>MAX</sub> (MHz)
			</td>
			<td>Type
			</td>
			<td>Count
			</td>
			<td>Gbps
			</td>
			<td>Total Gbps
			</td>
			<td>Type
			</td>
			<td>Count
			</td>
			<td>Type
			</td>
			<td>Gbps
			</td>
			<td>
			</td>
			<td>
		</tr>
		<tr>
			<td>Artix-7
			</td>
			<td>2010
			</td>
			<td>28 nm
			</td>
			<td>16-215
			</td>
			<td>0.94
			</td>
			<td>0.4
			</td>
			<td>0.9-13
			</td>
			<td>509
			</td>
			<td>45-740
			</td>
			<td>929
			</td>
			<td>628
			</td>
			<td>GTP
			</td>
			<td>0-16
			</td>
			<td>6.6
			</td>
			<td>211
			</td>
			<td>x4 Gen2
			</td>
			<td>1
			</td>
			<td>DDR3
			</td>
			<td>1066
			</td>
			<td>106-500
			</td>
			<td>1.00
</table>

## Kintex 
<table>
	<tbody>
		<tr>
			<th>Family
			</th>
			<th>Launch
			</th>
			<th>Process
			</th>
			<th colspan=3>Logic cells
			</th>
			<th colspan=2>Block RAM
			</th>
			<th colspan=2>UltraRAM
			</th>
			<th colspan=3>DSP slices
			</th>
			<th colspan=4>MGT
			</th>
			<th colspan=2>PCIe blocks
			</th>
			<th colspan=2>Mem Intf BW
			</th>
			<th>IO pins
			</th>
			<th>V<sub>CCINT</sub>
		</tr>
		<tr>
			<td>
			</td>
			<td>
			</td>
			<td>nm
			</td>
			<td>Count (K)
			</td>
			<td>T<sub>ITO</sub> (ns)
			</td>
			<td>T<sub>CKO</sub> (ns)
			</td>
			<td>Total (Mb)
			</td>
			<td>F<sub>MAX</sub> (MHz)
			</td>
			<td>Total (Mb)
			</td>
			<td>F<sub>MAX</sub> (MHz)
			</td>
			<td>Count
			</td>
			<td>Total GMAC/s
			</td>
			<td>F<sub>MAX</sub> (MHz)
			</td>
			<td>Type
			</td>
			<td>Count
			</td>
			<td>Gbps
			</td>
			<td>Total Gbps
			</td>
			<td>Type
			</td>
			<td>Count
			</td>
			<td>Type
			</td>
			<td>Gbps
			</td>
			<td>
			</td>
			<td>
		</tr>
		<tr>
			<td>Kintex-7
			</td>
			<td>2010
			</td>
			<td>28 nm
			</td>
			<td>66-478
			</td>
			<td>0.58
			</td>
			<td>0.26
			</td>
			<td>5-34
			</td>
			<td>601
			</td>
			<td>
			</td>
			<td>
			</td>
			<td>240-1920
			</td>
			<td>2845
			</td>
			<td>741
			</td>
			<td>GTX
			</td>
			<td>4-32
			</td>
			<td>12.5
			</td>
			<td>800
			</td>
			<td>x8 Gen2
			</td>
			<td>1
			</td>
			<td>DDR3
			</td>
			<td>1866
			</td>
			<td>285-500
			</td>
			<td>1.00
		</tr>
		<tr>
			<td>Kintex UltraScale
			</td>
			<td>2013<sup id=cite_ref-:1_87-0 class=reference><a href=#cite_note-:1-87>[87]</a></sup>
			</td>
			<td>20 nm
			</td>
			<td>318-1451
			</td>
			<td>
			</td>
			<td>
			</td>
			<td>12.7-75.9
			</td>
			<td>660
			</td>
			<td>
			</td>
			<td>
			</td>
			<td>768-5520
			</td>
			<td>8180
			</td>
			<td>741
			</td>
			<td>GTH, GTY
			</td>
			<td>12-64
			</td>
			<td>16.3
			</td>
			<td>2086
			</td>
			<td>x8 Gen3
			</td>
			<td>1-6
			</td>
			<td>DDR3
			</td>
			<td>2400
			</td>
			<td>312-832
			</td>
			<td>0.95
		</tr>
		<tr>
			<td>Kintex UltraScale+
			</td>
			<td>2015<sup id=cite_ref-:2_88-0 class=reference><a href=#cite_note-:2-88>[88]</a></sup>
			</td>
			<td>16 nm
			</td>
			<td>356-1143
			</td>
			<td>
			</td>
			<td>
			</td>
			<td>12.7-34.6
			</td>
			<td>825
			</td>
			<td>0-36
			</td>
			<td>650
			</td>
			<td>1368-3528
			</td>
			<td>6287
			</td>
			<td>891
			</td>
			<td>GTH, GTY
			</td>
			<td>16-76
			</td>
			<td>32.75
			</td>
			<td>3268
			</td>
			<td>x16 Gen3
			</td>
			<td>0-5
			</td>
			<td>DDR4
			</td>
			<td>2666
			</td>
			<td>280-668
			</td>
			<td>0.85
</table>


# References


1.  **[^](#cite_ref-1 "Jump up")** Akthar, Shahul (2014-09-21). ["Block RAM and Distributed RAM in Xilinx FPGA"](https://allaboutfpga.com/block-ram-and-distributed-ram-in-xilinx-fpga/). _All About FPGA_. Retrieved 2018-12-03.
2.  **[^](#cite_ref-2 "Jump up")** ["UltraRAM: Breakthrough Embedded Memory Integration on UltraScale+ Devices"](https://www.xilinx.com/support/documentation/white_papers/wp477-ultraram.pdf) (PDF). _Xilinx_. 2016-06-14. Retrieved 2018-12-03.
3.  ^ [Jump up to: _**a**_](#cite_ref-:4_3-0) [_**b**_](#cite_ref-:4_3-1) ["Xcell Journal: Issue 10"](https://www.xilinx.com/publications/archives/xcell/Xcell10.pdf) (PDF)
4.  **[^](#cite_ref-4 "Jump up")** ["Logic cell concept in xilinx fpgas"](https://forums.xilinx.com/t5/Virtex-Family-FPGAs-Archived/Logic-cell-concept-in-xilinx-fpgas/m-p/61742#M5453). _forums.xilinx.com_. 2010-02-13. Retrieved 2021-04-26.
5.  **[^](#cite_ref-5 "Jump up")** ["Marketing Math 201"](https://www.eejournal.com/article/20151124-marketingmath/). _EEJournal_. 2015-11-24. Retrieved 2021-04-28.
6.  ^ [Jump up to: _**a**_](#cite_ref-:0_6-0) [_**b**_](#cite_ref-:0_6-1) ["Xcell Journal: Issue 3"](https://www.xilinx.com/publications/archives/xcell/Xcell3.pdf) (PDF)
7.  **[^](#cite_ref-7 "Jump up")** ["Xcell Journal: Issue 9"](https://www.xilinx.com/publications/archives/xcell/Xcell9.pdf) (PDF)
8.  **[^](#cite_ref-8 "Jump up")** ["Xcell Journal: Issue 8"](https://www.xilinx.com/publications/archives/xcell/Xcell8.pdf) (PDF)
9.  **[^](#cite_ref-9 "Jump up")** ["Xcell Journal, Issue 13"](https://www.xilinx.com/publications/archives/xcell/Xcell13.pdf) (PDF)
10.  ^ [Jump up to: _**a**_](#cite_ref-:9_10-0) [_**b**_](#cite_ref-:9_10-1) ["Xcell Journal, Issue 19"](https://www.xilinx.com/publications/archives/xcell/Xcell19.pdf) (PDF)
11.  **[^](#cite_ref-11 "Jump up")** ["Xcell Journal, Issue 12"](https://www.xilinx.com/publications/archives/xcell/Xcell12.pdf) (PDF)
12.  ^ [Jump up to: _**a**_](#cite_ref-:10_12-0) [_**b**_](#cite_ref-:10_12-1) [_**c**_](#cite_ref-:10_12-2) ["Xcell Journal, Issue 18"](https://www.xilinx.com/publications/archives/xcell/Xcell18.pdf) (PDF)
13.  ^ [Jump up to: _**a**_](#cite_ref-:5_13-0) [_**b**_](#cite_ref-:5_13-1) ["XILINX INC (Form Type: 10-K, Filing Date: 06/18/1999"](http://edgar.secdatabase.com/2304/74398899000004/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24.
14.  **[^](#cite_ref-14 "Jump up")** ["XCELL 20 Newsletter (Q1 96)"](https://www.xilinx.com/publications/archives/xcell/Xcell20.pdf) (PDF)
15.  ^ [Jump up to: _**a**_](#cite_ref-:6_15-0) [_**b**_](#cite_ref-:6_15-1) [_**c**_](#cite_ref-:6_15-2) ["XILINX INC (Form Type: 10-K, Filing Date: 06/19/1998"](http://edgar.secdatabase.com/971/74398898000004/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24.
16.  ^ [Jump up to: _**a**_](#cite_ref-:11_16-0) [_**b**_](#cite_ref-:11_16-1) [_**c**_](#cite_ref-:11_16-2) [_**d**_](#cite_ref-:11_16-3) ["Xilinx Xcell Journal Issue 30"](https://www.xilinx.com/publications/archives/xcell/Xcell30.pdf) (PDF)
17.  ^ [Jump up to: _**a**_](#cite_ref-:7_17-0) [_**b**_](#cite_ref-:7_17-1) [_**c**_](#cite_ref-:7_17-2) ["XILINX INC (Form Type: 10-K, Filing Date: 06/12/2003"](http://edgar.secdatabase.com/1276/101287003003078/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24.
18.  **[^](#cite_ref-18 "Jump up")** ["Xilinx Xcell Quarterly Newsletter #22 (Q3 96)"](https://www.xilinx.com/publications/archives/xcell/Xcell22.pdf) (PDF)
19.  **[^](#cite_ref-19 "Jump up")** ["XILINX INC (Form Type: 10-K, Filing Date: 06/12/2001"](http://edgar.secdatabase.com/1862/101287001501165/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24.
20.  **[^](#cite_ref-20 "Jump up")** ["XILINX INC (Form Type: 10-K, Filing Date: 06/04/2004)"](http://edgar.secdatabase.com/2528/104746904019430/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24
21.  **[^](#cite_ref-21 "Jump up")** ["XILINX INC (Form Type: 10-K, Filing Date: 06/17/2002)"](http://edgar.secdatabase.com/2603/101287002002739/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24.
22.  **[^](#cite_ref-22 "Jump up")** ["Xcell Journal, Issue 46"](https://www.xilinx.com/publications/archives/xcell/Xcell46.pdf) (PDF)
23.  **[^](#cite_ref-23 "Jump up")** ["XILINX INC (Form Type: 10-K, Filing Date: 06/01/2005)"](http://edgar.secdatabase.com/669/104746905016238/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24
24.  **[^](#cite_ref-24 "Jump up")** ["XILINX INC Form 10-K Annual Report Filed 2020-05-08"](http://edgar.secdatabase.com/1978/74398820000020/filing-main.htm). _edgar.secdatabase.com_. Retrieved 2021-04-24
25.  **[^](#cite_ref-25 "Jump up")** Xilinx. ["XC2000 Logic Cell Array Families Product Description"](https://labmaster.com/surplus/parts/html/941557-pl/xc2000.pdf) (PDF)
26.  **[^](#cite_ref-26 "Jump up")** Xilinx. ["XC3000 Logic Cell Array Families"](http://pdf.datasheetcatalog.com/datasheets/480/287750_DS.pdf) (PDF)
27.  **[^](#cite_ref-27 "Jump up")** Xilinx. ["XC4000, XC4000A, XC4000H Logic Cell Array Families"](https://media.digikey.com/pdf/Data%20Sheets/Xilinx%20PDFs/XC4000,A,H.pdf) (PDF)
28.  **[^](#cite_ref-28 "Jump up")** Xilinx. ["XC4000E and XC4000X Series FPGA data sheet"](https://www.xilinx.com/support/documentation/data_sheets/4000.pdf) (PDF)
29.  **[^](#cite_ref-29 "Jump up")** Xilinx. ["XC4000XLA/XV Field Programmable Gate Arrays"](https://www.xilinx.com/support/documentation/data_sheets/ds015.pdf) (PDF)
30.  **[^](#cite_ref-30 "Jump up")** Xilinx. ["Spartan and Spartan-XL FPGA Families Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds060.pdf) (PDF)
31.  **[^](#cite_ref-31 "Jump up")** Xilinx. ["XC5200 Series Field Programmable Gate Arrays"](https://www.xilinx.com/support/documentation/data_sheets/5200.pdf) (PDF)
32.  ^ [Jump up to: _**a**_](#cite_ref-:8_32-0) [_**b**_](#cite_ref-:8_32-1) [_**c**_](#cite_ref-:8_32-2) ["Xilinx Programmable Logic Data Book"](http://noel.feld.cvut.cz/hw/xilinx/Xilinx96.pdf) (PDF)
33.  **[^](#cite_ref-33 "Jump up")** ["Spartan-II FPGA Family Data Sheet"](https://japan.xilinx.com/support/documentation/data_sheets/ds001.pdf) (PDF)
34.  **[^](#cite_ref-34 "Jump up")** ["Virtex™ 2.5V Field Programmable Gate Arrays"](https://japan.xilinx.com/support/documentation/data_sheets/ds003.pdf) (PDF)
35.  **[^](#cite_ref-35 "Jump up")** ["Virtex™-E 1.8V Field Programmable Gate Arrays"](https://japan.xilinx.com/support/documentation/data_sheets/ds022.pdf) (PDF)
36.  **[^](#cite_ref-36 "Jump up")** ["Spartan-IIE FPGA Family Data Sheet"](https://japan.xilinx.com/support/documentation/data_sheets/ds077.pdf) (PDF)
37.  **[^](#cite_ref-37 "Jump up")** ["Virtex™-E 1.8V Extended Memory Field Programmable Gate Arrays"](https://www.xilinx.com/support/documentation/data_sheets/ds025.pdf) (PDF)
38.  **[^](#cite_ref-38 "Jump up")** ["Virtex-II Platform FPGAs: Complete Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds031.pdf) (PDF)
39.  **[^](#cite_ref-39 "Jump up")** ["Virtex-II Pro and Virtex-II Pro X Platform FPGAs: Introduction and Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds083.pdf) (PDF)
40.  **[^](#cite_ref-40 "Jump up")** ["Spartan-3 FPGA Family Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds099.pdf) (PDF)
41.  **[^](#cite_ref-41 "Jump up")** ["Spartan-3E FPGA Family Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds312.pdf) (PDF)
42.  **[^](#cite_ref-42 "Jump up")** ["Spartan-3A FPGA Family: Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds529.pdf) (PDF)
43.  **[^](#cite_ref-43 "Jump up")** ["Spartan-3A DSP FPGA Family Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds610.pdf) (PDF)
44.  **[^](#cite_ref-44 "Jump up")** ["Virtex-4 Family Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds112.pdf) (PDF)
45.  **[^](#cite_ref-45 "Jump up")** ["Virtex-4 FPGA User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug070.pdf) (PDF)
46.  **[^](#cite_ref-46 "Jump up")** ["XtremeDSP for Virtex-4 FPGAs, User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug073.pdf) (PDF)
47.  **[^](#cite_ref-47 "Jump up")** ["Virtex-5 Family Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds100.pdf) (PDF)
48.  **[^](#cite_ref-48 "Jump up")** ["Virtex-5 FPGA User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug190.pdf) (PDF)
49.  **[^](#cite_ref-49 "Jump up")** ["Virtex-5 FPGA XtremeDSP Design Considerations, User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug193.pdf) (PDF)
50.  **[^](#cite_ref-50 "Jump up")** ["Virtex-5 FPGA RocketIO GTP Transceiver User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug196.pdf) (PDF)
51.  **[^](#cite_ref-51 "Jump up")** ["Virtex-5 RocketIO GTX Transceiver, User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug198.pdf) (PDF)
52.  **[^](#cite_ref-52 "Jump up")** ["Virtex-6 Family Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds150.pdf) (PDF)
53.  **[^](#cite_ref-53 "Jump up")** ["Virtex-6 FPGA Configurable Logic Block, User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug364.pdf) (PDF)
54.  **[^](#cite_ref-54 "Jump up")** ["Virtex-6 FPGA Memory Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug363.pdf) (PDF)
55.  **[^](#cite_ref-55 "Jump up")** ["Virtex-6 FPGA DSP48E1 Slice, User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug369.pdf) (PDF)
56.  **[^](#cite_ref-56 "Jump up")** ["Virtex-6 FPGA SelectIO Resources, User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug361.pdf) (PDF)
57.  **[^](#cite_ref-57 "Jump up")** ["Virtex-6 FPGA Clocking Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug362.pdf) (PDF)
58.  **[^](#cite_ref-58 "Jump up")** ["Virtex-6 CXT Family Data Sheet"](https://www.xilinx.com/support/documentation/data_sheets/ds153.pdf) (PDF)
59.  **[^](#cite_ref-59 "Jump up")** ["Spartan-6 Family Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds160.pdf) (PDF)
60.  **[^](#cite_ref-60 "Jump up")** ["Spartan-6 FPGA Configurable Logic Block User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug384.pdf) (PDF)
61.  **[^](#cite_ref-61 "Jump up")** ["Spartan-6 FPGA Block RAM Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug383.pdf) (PDF)
62.  **[^](#cite_ref-62 "Jump up")** ["Spartan-6 FPGA DSP48A1 Slice"](https://www.xilinx.com/support/documentation/user_guides/ug389.pdf) (PDF)
63.  **[^](#cite_ref-63 "Jump up")** ["Spartan-6 FPGA SelectIO Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug381.pdf) (PDF)
64.  **[^](#cite_ref-64 "Jump up")** ["Spartan-6 FPGA Memory Controller User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug388.pdf) (PDF)
65.  **[^](#cite_ref-65 "Jump up")** ["Spartan-6 FPGA Clocking Resources"](https://www.xilinx.com/support/documentation/user_guides/ug382.pdf) (PDF)
66.  **[^](#cite_ref-66 "Jump up")** ["Spartan-6 FPGA GTP Transceivers User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug386.pdf) (PDF)
67.  **[^](#cite_ref-67 "Jump up")** ["7 Series FPGAs Data Sheet: Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds180_7Series_Overview.pdf) (PDF)
68.  **[^](#cite_ref-68 "Jump up")** ["7 Series FPGAs SelectIO Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug471_7Series_SelectIO.pdf) (PDF)
69.  **[^](#cite_ref-69 "Jump up")** ["7 Series FPGAs Clocking Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug472_7Series_Clocking.pdf) (PDF)
70.  **[^](#cite_ref-70 "Jump up")** ["7 Series FPGAs GTP Transceivers User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug482_7Series_GTP_Transceivers.pdf) (PDF)
71.  **[^](#cite_ref-71 "Jump up")** ["7 Series FPGAs GTX/GTH Transceivers"](https://www.xilinx.com/support/documentation/user_guides/ug476_7Series_Transceivers.pdf) (PDF)
72.  **[^](#cite_ref-72 "Jump up")** ["Zynq-7000 SoC Technical Reference Manual"](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf) (PDF)
73.  **[^](#cite_ref-73 "Jump up")** ["Zynq-7000 SoC Data Sheet: Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds190-Zynq-7000-Overview.pdf) (PDF)
74.  **[^](#cite_ref-74 "Jump up")** ["Are Xilinx XC7A35T actually the same die as something else or...? - Page 1"](https://www.eevblog.com/forum/fpga/are-xilinx-xc7a35t-actually-the-same-die-as-something-else-or/). _www.eevblog.com_. Retrieved 2021-04-25.
75.  **[^](#cite_ref-75 "Jump up")** ["UltraScale Architecture and Product Data Sheet: Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds890-ultrascale-overview.pdf) (PDF)
76.  **[^](#cite_ref-76 "Jump up")** ["UltraScale Architecture SelectIO Resources User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug571-ultrascale-selectio.pdf) (PDF)
77.  **[^](#cite_ref-77 "Jump up")** ["UltraScale Architecture and Product Data Sheet: Overview"](https://www.xilinx.com/support/documentation/data_sheets/ds890-ultrascale-overview.pdf) (PDF). _Xilinx_. Retrieved 2018-12-03.
78.  **[^](#cite_ref-78 "Jump up")** Merritt, Rick (2018-10-03). ["Xilinx Unveils Versal SoC"](https://www.eetasia.com/news/article/18100303-xilinx-unveils-versal-soc). _EE Times Asia_. Retrieved 2018-12-03.
79.  **[^](#cite_ref-79 "Jump up")** ["Versal Architecture and Product Data Sheet: Overview (DS950)"](https://www.xilinx.com/support/documentation/data_sheets/ds950-versal-overview.pdf) (PDF)
80.  **[^](#cite_ref-80 "Jump up")** ["Alveo SN1000 SmartNICs Data Sheet (DS989) (v1.4)"](https://docs.xilinx.com/v/u/en-US/ds989-sn1000). 2022-04-22.
81.  **[^](#cite_ref-81 "Jump up")** ["Alveo U55C Data Center Accelerator Cards Data Sheet (DS978) (v1.1)"](https://www.xilinx.com/content/dam/xilinx/support/documents/data_sheets/ds978-u55c.pdf) (PDF). 2022-09-01.
82.  **[^](#cite_ref-82 "Jump up")** ["Alveo U50 Data Center Accelerator Card Data Sheet (DS965) (v1.7.1)"](https://www.xilinx.com/content/dam/xilinx/support/documents/data_sheets/ds965-u50.pdf) (PDF). 2022-08-27.
83.  **[^](#cite_ref-83 "Jump up")** ["Alveo U200 and U250 Data Center Accelerator Cards Data Sheet (DS962) (v1.5)"](https://docs.xilinx.com/r/en-US/ds962-u200-u250). 2022-09-01.
84.  **[^](#cite_ref-84 "Jump up")** ["Alveo U280 Data Center Accelerator Card Data Sheet (DS963) (v1.5)"](https://docs.xilinx.com/r/en-US/ds963-u280). 2022-09-01.
85.  **[^](#cite_ref-85 "Jump up")** ["Alveo X3522 Data Sheet (DS1002) (v1.0)"](https://docs.xilinx.com/r/en-US/ds1002-x3522). 2022-10-18.
86.  **[^](#cite_ref-:3_86-0 "Jump up")** Lazzaro, John. ["Xilinx Part Family History"](http://www-inst.eecs.berkeley.edu/~cs294-59/fa10/resources/Xilinx-history/Xilinx-history.html). _UC Berkeley_. Retrieved 2018-12-03.
87.  **[^](#cite_ref-:1_87-0 "Jump up")** ["First 20nm UtraScale ASIC-Class FPGA From Xilinx"](https://www.eetimes.com/document.asp?doc_id=1318843). _EE Times_. 2013-07-09. Retrieved 2018-12-03.
88.  **[^](#cite_ref-:2_88-0 "Jump up")** ["Xilinx Unveils 16nm Ultrascale+ FPGAs, MPSoCs & 3D ICs"](https://www.eetimes.com/document.asp?doc_id=1325799). _EE Times_. 2015-02-24. Retrieved 2018-12-03.
