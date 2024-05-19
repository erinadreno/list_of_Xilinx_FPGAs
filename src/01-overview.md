# Series overview

<table>
	<tbody>
		<tr>
			<th>Generation</th>
			<th>Family</th>
			<th>Launch</th>
			<th>Process</th>
			<th>Internal operating voltage</th>
			<th>Notes</th>
		</tr>
		<tr>
			<td rowspan=2><a href=#XC2000>XC2000</a></td>
			<td>XC2000</td>
			<td>1985</td>
			<td>2000nm<sup id=cite_ref-:0_6-0 class=reference><a href=#cite_note-:0-6>[6]</a></sup></td>
			<td>5V</td>
			<td>The original FPGA family. This and a few following generations were originally called LCA (Logic Cell
				Array) devices, but later FPGA gradually became the preferred term.</td>
		</tr>
		<tr>
			<td>XC2000L</td>
			<td>1993<sup id=cite_ref-7 class=reference><a href=#cite_note-7>[7]</a></sup></td>
			<td></td>
			<td>3.3V</td>
			<td>Low voltage version of XC2000
		</tr>
		<tr>
			<td rowspan=6><a href=#XC3000>XC3000</a></td>
			<td>XC3000</td>
			<td>1988</td>
			<td>1200nm<sup id=cite_ref-:0_6-1 class=reference><a href=#cite_note-:0-6>[6]</a></sup></td>
			<td rowspan=2>5V</td>
			<td>Improved logic cell, adds intra-FPGA <a href=https://en.wikipedia.org/wiki/Three-state_logic
					title="Three-state logic">tri-state</a> bus support
		</tr>
		<tr>
			<td>XC3000A</td>
			<td>1993</td>
			<td>800nm<sup id=cite_ref-:4_3-1 class=reference><a href=#cite_note-:4-3>[3]</a></sup></td>
			<td>XC3000 with more functionality
		</tr>
		<tr>
			<td>XC3000L</td>
			<td>1993</td>
			<td></td>
			<td>3.3V</td>
			<td>Low voltage version of XC3000A
		</tr>
		<tr>
			<td>XC3100</td>
			<td>1992</td>
			<td>800nm<sup id=cite_ref-8 class=reference><a href=#cite_note-8>[8]</a></sup></td>
			<td rowspan=2>5V</td>
			<td>Faster version of XC3000
		</tr>
		<tr>
			<td>XC3100A</td>
			<td>1994<sup id=cite_ref-9 class=reference><a href=#cite_note-9>[9]</a></sup></td>
			<td>500nm</td>
			<td>Faster version of XC3000A
		</tr>
		<tr>
			<td>XC3100L</td>
			<td>1995<sup id=cite_ref-:9_10-0 class=reference><a href=#cite_note-:9-10>[10]</a></sup></td>
			<td></td>
			<td>3.3V</td>
			<td>Faster version of XC3000L
		</tr>
		<tr>
			<td rowspan=12><a href=#XC4000,_Spartan>XC4000</a></td>
			<td>XC4000</td>
			<td>1991</td>
			<td></td>
			<td>5V</td>
			<td>Improved logic cell, distributed <a href=https://en.wikipedia.org/wiki/Random-access_memory
					title="Random-access memory">RAM</a> support, features carry chains and <a
					href=https://en.wikipedia.org/wiki/JTAG title=JTAG>JTAG</a> support
		</tr>
		<tr>
			<td>XC4000A</td>
			<td>1991</td>
			<td></td>
			<td>5V</td>
			<td>XC4000 with fewer routing resources, small chips
		</tr>
		<tr>
			<td>XC4000D</td>
			<td>1994<sup id=cite_ref-11 class=reference><a href=#cite_note-11>[11]</a></sup></td>
			<td></td>
			<td>5V</td>
			<td>Same as XC4000, but with non-functional RAM
		</tr>
		<tr>
			<td>XC4000H</td>
			<td>1993</td>
			<td></td>
			<td>5V</td>
			<td>XC4000 with more, but less functional, IO cells (for higher pin count)
		</tr>
		<tr>
			<td>XC4000E</td>
			<td>1995<sup id=cite_ref-:10_12-0 class=reference><a href=#cite_note-:10-12>[12]</a></sup></td>
			<td>500nm<sup id=cite_ref-:5_13-0 class=reference><a href=#cite_note-:5-13>[13]</a></sup></td>
			<td>5V</td>
			<td>XC4000 upgrade with more functionality
		</tr>
		<tr>
			<td>XC4000L</td>
			<td>1995<sup id=cite_ref-:9_10-1 class=reference><a href=#cite_note-:9-10>[10]</a></sup></td>
			<td></td>
			<td>3.3V</td>
			<td>Low voltage version of XC4000E
		</tr>
		<tr>
			<td>XC4000EX</td>
			<td>1996<sup id=cite_ref-14 class=reference><a href=#cite_note-14>[14]</a></sup></td>
			<td>500nm</td>
			<td>5V</td>
			<td>XC4000E upgrade with more routing resources, for larger devices
		</tr>
		<tr>
			<td>XC4000XL</td>
			<td>1997</td>
			<td>350nm<sup id=cite_ref-:6_15-0 class=reference><a href=#cite_note-:6-15>[15]</a></sup></td>
			<td>3.3V</td>
			<td>Low voltage version of XC4000EX
		</tr>
		<tr>
			<td>XC4000XLA</td>
			<td>1998<sup id=cite_ref-:11_16-0 class=reference><a href=#cite_note-:11-16>[16]</a></sup></td>
			<td>350nm,<sup id=cite_ref-:11_16-1 class=reference><a href=#cite_note-:11-16>[16]</a></sup> 250nm<sup
					id=cite_ref-:6_15-1 class=reference><a href=#cite_note-:6-15>[15]</a></sup></td>
			<td>3.3V</td>
			<td>XC4000XL upgrade with more functionality
		</tr>
		<tr>
			<td>XC4000XV</td>
			<td>1998</td>
			<td>250nm<sup id=cite_ref-:6_15-2 class=reference><a href=#cite_note-:6-15>[15]</a></sup></td>
			<td>2.5V</td>
			<td>XC4000XLA variant with more routing resources (for large chips)
		</tr>
		<tr>
			<td>Spartan</td>
			<td>1998</td>
			<td>500nm, 350nm<sup id=cite_ref-:7_17-0 class=reference><a href=#cite_note-:7-17>[17]</a></sup></td>
			<td>5V</td>
			<td>Functionally identical to XC4000E, rebranded as low-end part
		</tr>
		<tr>
			<td>Spartan XL</td>
			<td>1998<sup id=cite_ref-:11_16-2 class=reference><a href=#cite_note-:11-16>[16]</a></sup></td>
			<td>350nm,<sup id=cite_ref-:11_16-3 class=reference><a href=#cite_note-:11-16>[16]</a></sup> 250nm<sup
					id=cite_ref-:7_17-1 class=reference><a href=#cite_note-:7-17>[17]</a></sup></td>
			<td>3.3V</td>
			<td>Spartan upgrade with more functionality
		</tr>
		<tr>
			<td rowspan=2><a href=#XC5200>XC5200</a></td>
			<td>XC5200</td>
			<td>1994</td>
			<td>600nm</td>
			<td>5V</td>
			<td>A low end FPGA family with bare bones logic cells
		</tr>
		<tr>
			<td>XC5200L</td>
			<td></td>
			<td>500nm</td>
			<td>3.3V</td>
			<td>Low voltage version of XC5200
		</tr>
		<tr>
			<td colspan=2><a href=#XC6200>XC6200</a></td>
			<td>1995<sup id=cite_ref-:10_12-1 class=reference><a href=#cite_note-:10-12>[12]</a></sup></td>
			<td>650nm</td>
			<td>5V</td>
			<td>An unusual FPGA based on simple logic cells (not LUTs), meant to be used alongside a CPU and optimized
				for on-the-fly reconfiguration. The only FPGA to have a fully documented configuration format by Xilinx.
		</tr>
		<tr>
			<td colspan=2><a href=#XC8100>XC8100</a></td>
			<td>1995<sup id=cite_ref-:10_12-2 class=reference><a href=#cite_note-:10-12>[12]</a></sup></td>
			<td></td>
			<td>5V or 3.3V</td>
			<td>A very unusual sea-of-gates FPGA, using one-time-programmable antifuse storage for the configuration
				(instead of RAM). Quickly discontinued in 1996.<sup id=cite_ref-18 class=reference><a
						href=#cite_note-18>[18]</a></sup>
		</tr>
		<tr>
			<td rowspan=5><a href=#Virtex-Spartan-II>Virtex</a></td>
			<td>Virtex</td>
			<td>1998<sup id=cite_ref-19 class=reference><a href=#cite_note-19>[19]</a></sup></td>
			<td rowspan=2>220nm<sup id=cite_ref-:5_13-1 class=reference><a href=#cite_note-:5-13>[13]</a></sup></td>
			<td rowspan=2>2.5V</td>
			<td>Improved LUT4-based logic cell, first Xilinx FPGA family to feature <a
					href=https://en.wikipedia.org/wiki/Delay-locked_loop title="Delay-locked loop">DLLs</a> and block <a
					href=https://en.wikipedia.org/wiki/Random-access_memory title="Random-access memory">RAM</a>
		</tr>
		<tr>
			<td>Spartan-II</td>
			<td>2000</td>
			<td>Identical to Virtex, marketed as low-end part
		</tr>
		<tr>
			<td>Virtex E</td>
			<td>1999</td>
			<td rowspan=3>180nm</td>
			<td rowspan=3>1.8V</td>
			<td>Virtex upgrade with more block RAM, more DLLs, and improved IO cells (with differential IO support)
		</tr>
		<tr>
			<td>Virtex EM</td>
			<td>2000</td>
			<td>Like Virtex E, but with more block RAM
		</tr>
		<tr>
			<td>Spartan-IIE</td>
			<td>2001<sup id=cite_ref-20 class=reference><a href=#cite_note-20>[20]</a></sup></td>
			<td>Identical to Virtex E, but with some blocks disabled
		</tr>
		<tr>
			<td rowspan=3><a href=#Virtex-II>Virtex-II</a></td>
			<td>Virtex-II</td>
			<td>2001</td>
			<td>150nm</td>
			<td>1.5V</td>
			<td>First Xilinx FPGA family to feature partial reconfiguration and hard multipliers, has DDR input/output
				support, DLLs have been replaced by much more functional DCMs
		</tr>
		<tr>
			<td>Virtex-II Pro</td>
			<td>2002</td>
			<td rowspan=2>130nm<sup id=cite_ref-21 class=reference><a href=#cite_note-21>[21]</a></sup></td>
			<td rowspan=2>1.2V</td>
			<td>Virtex-II upgrade featuring first-generation multi-gigabit transceivers (3.125 Gbit/s, marketed as
				RocketIO™) and embedded <a href=https://en.wikipedia.org/wiki/PowerPC_400 title="PowerPC 400">PPC405</a>
				cores
		</tr>
		<tr>
			<td>Virtex-II Pro X</td>
			<td>2003<sup id=cite_ref-22 class=reference><a href=#cite_note-22>[22]</a></sup></td>
			<td>Virtex-II Pro with multi-gigabit transceiver upgrade (RocketIO X, 6.25 Gbit/s)
		</tr>
		<tr>
			<td rowspan=5><a href=#Spartan-3>Spartan-3</a></td>
			<td>Spartan-3</td>
			<td>2003</td>
			<td rowspan=5>90nm<sup id=cite_ref-:7_17-2 class=reference><a href=#cite_note-:7-17>[17]</a></sup></td>
			<td rowspan=5>1.2V</td>
			<td>A low-end, simplified version of Virtex-II
		</tr>
		<tr>
			<td>Spartan-3E</td>
			<td>2004<sup id=cite_ref-23 class=reference><a href=#cite_note-23>[23]</a></sup></td>
			<td>Spartan-3 upgrade with improved hard multipliers and DCMs, but fewer IO cells
		</tr>
		<tr>
			<td>Spartan-3A</td>
			<td>2006</td>
			<td>Spartan-3E upgrade with improved block RAM (featuring byte enables) and IO cells
		</tr>
		<tr>
			<td>Spartan-3AN</td>
			<td>2007</td>
			<td>Spartan-3A version with integrated <a href=https://en.wikipedia.org/wiki/Serial_Peripheral_Interface
					title="Serial Peripheral Interface">SPI</a> <a href=https://en.wikipedia.org/wiki/Flash_memory
					title="Flash memory">flash</a> (as a separate die within the same package), requiring no external
				bitstream storage
		</tr>
		<tr>
			<td>Spartan-3A DSP</td>
			<td></td>
			<td>Spartan-3A upgrade with new DSP cells (based on Virtex-5 but simplified) replacing the simplistic hard
				multipliers
		</tr>
		<tr>
			<td rowspan=4><a href=#Virtex-4>Virtex-4</a></td>
			<td></td>
			<td rowspan=4>2004</td>
			<td rowspan=4>90nm</td>
			<td rowspan=4>1.2V</td>
			<td>Introduced <a href=https://en.wikipedia.org/wiki/Digital_signal_processing
					title="Digital signal processing">DSP</a> cells replacing the simple hard multipliers, added simple
				serdes functionality to all IO cells, improved partial reconfiguration support
		</tr>
		<tr>
			<td>Virtex-4 LX</td>
			<td>The base "logic optimized" version
		</tr>
		<tr>
			<td>Virtex-4 SX</td>
			<td>DSP-optimized version of Virtex-4: identical functionality to LX, but with much higher DSP-to-logic
				ratio
		</tr>
		<tr>
			<td>Virtex-4 FX</td>
			<td>Virtex-4 with embedded hard <a href=https://en.wikipedia.org/wiki/PowerPC_400
					title="PowerPC 400">PPC405</a> cores, <a href=https://en.wikipedia.org/wiki/Ethernet
					title=Ethernet>Ethernet</a> <a href=https://en.wikipedia.org/wiki/Medium_access_control
					title="Medium access control">MAC</a> blocks, and multi-gigabit transceivers (6.5 Gbit/s)
		</tr>
		<tr>
			<td rowspan=6><a href=#Virtex-5>Virtex-5</a></td>
			<td></td>
			<td rowspan=5>2006</td>
			<td rowspan=6>65nm</td>
			<td rowspan=6>1.0V</td>
			<td>Introduced new LUT6-based logic cells, new block RAM cells (36kbit, splittable to 2×18kbit), new DSP
				cells; added new <a href=https://en.wikipedia.org/wiki/Phase-locked_loop
					title="Phase-locked loop">PLL</a> blocks in addition to DCM blocks
		</tr>
		<tr>
			<td>Virtex-5 LX</td>
			<td>The base "logic optimized" version
		</tr>
		<tr>
			<td>Virtex-5 LXT</td>
			<td>Adds multi-gigabit transceiver support on top of LX (RocketIO GTP transceivers, 3.75 Gbit/s); also adds
				hard <a href=https://en.wikipedia.org/wiki/PCI_Express title="PCI Express">PCI Express</a> (Gen1 ×8) and
				gigabit Ethernet MAC blocks
		</tr>
		<tr>
			<td>Virtex-5 SXT</td>
			<td>DSP-optimized version of Virtex-5: identical functionality to LXT, but with much higher DSP-to-logic
				ratio
		</tr>
		<tr>
			<td>Virtex-5 FXT</td>
			<td>Virtex-5 with GTX transceivers (6.5 Gbit/s) and hard <a href=https://en.wikipedia.org/wiki/PowerPC_400
					title="PowerPC 400">PPC440</a> cores
		</tr>
		<tr>
			<td>Virtex-5 TXT</td>
			<td>2009</td>
			<td>Transceiver-optimized version of Virtex-5: has large amount of GTX transceivers (no PPC cores)
		</tr>
		<tr>
			<td rowspan=6><a href=#Virtex-6>Virtex-6</a></td>
			<td></td>
			<td rowspan=5>2009</td>
			<td rowspan=6>40nm</td>
			<td rowspan=6>0.9V or 1.0V</td>
			<td>Replaces DCM blocks with MMCM blocks (which are an improved version of the existing PLL blocks), minor
				improvements to logic, DSP, block RAM, and IO cells
		</tr>
		<tr>
			<td>Virtex-6 LX</td>
			<td>The base "logic optimized" version
		</tr>
		<tr>
			<td>Virtex-6 LXT</td>
			<td>Adds multi-gigabit transceiver support on top of LX (GTX transceivers, up to 6.6 Gbit/s); also adds hard
				PCI Express (Gen2 ×8) and gigabit Ethernet MAC blocks
		</tr>
		<tr>
			<td>Virtex-6 SXT</td>
			<td>DSP-optimized version of Virtex-6; identical functionality to LXT, but with much higher DSP-to-logic
				ratio
		</tr>
		<tr>
			<td>Virtex-6 HXT</td>
			<td>Transceiver-optimized version of Virtex-6: replaces GTX transceivers with GTH transceivers (11.2 Gb/s)
		</tr>
		<tr>
			<td>Virtex-6 CXT</td>
			<td></td>
			<td>Identical to LXT, but with some transceivers and hard PCI Express / Ethernet MAC blocks disabled
		</tr>
		<tr>
			<td rowspan=2><a href=#Spartan-6>Spartan-6</a></td>
			<td>Spartan-6 LX</td>
			<td rowspan=2>2009</td>
			<td rowspan=2>45nm</td>
			<td rowspan=2>1.0V or 1.2V</td>
			<td>A low-end family built from an amalgamation of Spartan-3A and Virtex-6 features; has a LUT6-based logic
				cell, slightly improved Spartan-3A DSP cell, 18kbit block RAMs (splittable into 2×9kbit), improved DCM
				blocks, PLL blocks, IO blocks with serdes support; also has a new hard memory controller block
		</tr>
		<tr>
			<td>Spartan-6 LXT</td>
			<td>Spartan-6 version with multi-gigabit transceivers (GTP, 3.2 Gbit/s) and hard PCI Express (Gen 1 ×1)
				block
		</tr>
		<tr>
			<td rowspan=8><a href=#7_Series>7 Series</a></td>
			<td></td>
			<td>2010</td>
			<td rowspan=8>28nm</td>
			<td rowspan=8>0.9V, 0.95V, or 1.0V</td>
			<td>A successor to the Virtex-6 family, with several separately-marketed sub-families that are made from
				essentially identical cells with a few exceptions; the IO cells have been split into two variants: HR
				(high range, 3.3V capable cells) and HP (high performance, 1.8V capable cells with DCI functionality)
		</tr>
		<tr>
			<td>Spartan 7</td>
			<td>2017</td>
			<td>Low-end logic-optimized parts, feature HRIO and no special blocks; several parts are identical to Artix
				parts with transceivers disabled
		</tr>
		<tr>
			<td>Artix-7</td>
			<td>2010</td>
			<td>Low-end parts, feature HRIO, GTP transceivers (6.6 Gbit/s), PCI-Express hard block (Gen 2.1 ×4)
		</tr>
		<tr>
			<td>Kintex-7</td>
			<td>2010</td>
			<td>Middle-end parts, feature HRIO and sometimes HPIO, GTX transceivers (12.5 Gbit/s), PCI-Express hard
				block (Gen 2.1 ×8)
		</tr>
		<tr>
			<td>Virtex-7</td>
			<td>2010</td>
			<td>High-end parts, feature HPIO and sometimes HRIO, GTX or GTH transceivers (13.1 Gbit/s), PCI-Express hard
				block (Gen 2.1 ×8 or Gen 3 ×8)
		</tr>
		<tr>
			<td>Virtex-7 3D</td>
			<td>2011</td>
			<td>First FPGA made of multiple die in one package, using a special interposer die for very fast and wide
				inter-die interconnect, essentially presenting as a single unified device made of several "super logic
				regions" (SLRs)
		</tr>
		<tr>
			<td>Virtex-7 HT</td>
			<td>2012</td>
			<td>Virtex-7 3D version that also adds special ultra-high-speed GTZ transceivers (28.05 Gbit/s) via a
				separate die in the same package
		</tr>
		<tr>
			<td>Zynq-7000</td>
			<td>2011</td>
			<td>An <a href=https://en.wikipedia.org/wiki/ARM_Cortex-A9 title="ARM Cortex-A9">ARM Cortex-A9</a> based <a
					href=https://en.wikipedia.org/wiki/System_on_a_chip title="System on a chip">system on a chip</a>
				integrated with an Artix-7 or a Kintex-7 FPGA on a single die
		</tr>
		<tr>
			<td rowspan=3><a href=#UltraScale-and-UltraScale>UltraScale</a></td>
			<td></td>
			<td>2013<sup id=cite_ref-24 class=reference><a href=#cite_note-24>[24]</a></sup></td>
			<td rowspan=3>20nm</td>
			<td rowspan=3>0.9V, 0.95V, or 1.0V</td>
			<td>A successor to 7 Series focused on scalability; features a new distributed clock distribution system as
				well as upgraded logic, DSP, and block RAM cells; hard blocks include the GTH transceivers (16.3
				Gbit/s), GTY transceivers (30.5 Gbit/s), PCI Express (Gen3 ×8) blocks, 100G Ethernet MAC, 150G <a
					href=https://en.wikipedia.org/wiki/Interlaken_(networking)
					title="Interlaken (networking)">Interlaken</a> blocks
		</tr>
		<tr>
			<td>Kintex UltraScale</td>
			<td>2013</td>
			<td>Middle-end parts
		</tr>
		<tr>
			<td>Virtex UltraScale</td>
			<td>2014</td>
			<td>High-end parts
		</tr>
		<tr>
			<td rowspan=10><a href=#UltraScale-and-UltraScale>UltraScale+</a></td>
			<td></td>
			<td>2015</td>
			<td rowspan=10>16nm</td>
			<td rowspan=10>0.72V, 0.85V, or 0.9V</td>
			<td>An UltraScale upgrade with faster GTY transceivers (32.75 Gbit/s) and improved hard blocks (PCI Express
				Gen3 ×16 or Gen4 ×8); HR IO is gone and replaced with simpler HD (High Density) IO; some parts feature
				new UltraRAM (288kbit RAM) blocks
		</tr>
		<tr>
			<td>Spartan UltraScale+</td>
			<td>2025</td>
			<td>Lower-end parts with high IO count
		</tr>
		</tr>
		<tr>
			<td>Artix UltraScale+</td>
			<td>2021</td>
			<td>Low-end parts
		</tr>
		<tr>
			<td>Kintex UltraScale+</td>
			<td>2015</td>
			<td>Middle-end parts
		</tr>
		<tr>
			<td>Virtex UltraScale+</td>
			<td>2016</td>
			<td>High-end parts
		</tr>
		<tr>
			<td>Virtex UltraScale+ 58G</td>
			<td></td>
			<td>Features new GTM transceivers (58 Gbit/s PAM4)
		</tr>
		<tr>
			<td>Virtex UltraScale+ HBM</td>
			<td></td>
			<td>Features <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory title="High Bandwidth Memory">High
					Bandwidth Memory</a> within the same package and an integrated hard memory controller inside the
				FPGA die
		</tr>
		<tr>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>2015</td>
			<td>An <a href=https://en.wikipedia.org/wiki/ARM_Cortex-A53 title="ARM Cortex-A53">ARM Cortex-A53</a> based
				system on a chip integrated with a Kintex UltraScale+ FPGA on the same die
		</tr>
		<tr>
			<td>Zynq UltraScale+ RFSoC</td>
			<td>2017</td>
			<td>Like the MPSoC, but adds RF-DAC and RF-ADC blocks for high-speed radios (<a
					href=https://en.wikipedia.org/wiki/5G title=5G>5G</a> technology)
		</tr>
		<tr>
			<td>Alveo</td>
			<td>2018</td>
			<td>Alveo is a series of accelerator boards that are built on UltraScale+-series FPGAs that are identical to
				some Kintex/Virtex/Zynq devices, but are nominally considered to be distinct chip models
		</tr>
		<tr>
			<td rowspan=8><a href=#Versal>Versal</a></td>
			<td></td>
			<td>2019</td>
			<td rowspan=8>7nm</td>
			<td rowspan=8>0.7V, 0.8V, or 0.88V</td>
			<td>An <a href=https://en.wikipedia.org/wiki/ARM_architecture_family title="ARM ">ARM</a> based
				system on a chip integrated with a new version of FPGA fabric (with new logic, DSP, and block RAM
				cells), hard DDR <a href=https://en.wikipedia.org/wiki/Memory_controller
					title="Memory controller">memory controllers</a>, and a <a
					href=https://en.wikipedia.org/wiki/Network_on_a_chip title="Network on a chip">network-on-chip</a>
				(NoC) connecting all of the parts together
		</tr>
		<tr>
			<td>Versal Prime</td>
			<td>2019</td>
			<td>The base Versal parts, using older Cortex-A72 cores</td>
		</tr>
		<tr>
			<td>Versal Prime Gen 2</td>
			<td>2025</td>
			<td>Versal with integrated Cortex-A78AE cores and Mali-G78AE GPU</td>
		</tr>
		<tr>
			<td>Versal AI Core</td>
			<td>2019</td>
			<td>Features the AI engine cores</td>
		</tr>
		<tr>
			<td>Versal Premium</td>
			<td></td>
			<td>Features high-bandwidth versions of the hard blocks</td>
		</tr>
		<tr>
			<td>Versal AI Edge</td>
			<td></td>
			<td>Lower-end version of AI Core</td>
		</tr>
		<tr>
			<td>Versal AI Edge Gen-2</td>
			<td>2025</td>
			<td>Versal Edge with improved machine learning engines and LPDDR support</td>
		</tr>
		<tr>
			<td>Versal HBM</td>
			<td></td>
			<td>Features <a href=https://en.wikipedia.org/wiki/High_Bandwidth_Memory
					title="High Bandwidth Memory">HBM</a> memory</td>
		</tr>
	</tbody>
</table>

Note: The process information for early FPGA devices (before Virtex) may be inaccurate, due to the devices being subject
to [die shrink](https://en.wikipedia.org/wiki/Die_shrink "Die shrink") without changing the model name — the process
listed above may not be the only process in which a given device has been manufactured.