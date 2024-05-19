
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
