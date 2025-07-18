
# Versal

In 2018, Xilinx announced a product line called Versal.[\[78\]](#cite_note-78) Versal chips contain CPU, GPU, [DSP](https://en.wikipedia.org/wiki/Digital_signal_processor "Digital signal processor"), and FPGA components. Versal is fabricated using 7nm process technology.

The Versal devices are made of:[\[79\]](#cite_note-79)

*   PMC (Platform Management Controller), a [MicroBlaze](https://en.wikipedia.org/wiki/MicroBlaze "MicroBlaze")\-based processor block responsible for booting the device and monitoring its operations
*   PS (Processing System), an ARM [system on a chip](https://en.wikipedia.org/wiki/System_on_a_chip "System on a chip") block with
    *  Dual core [Cortex-A72](https://en.wikipedia.org/wiki/ARM_Cortex-A72 "ARM Cortex-A72") application processors and dual-core [Cortex-R5F](https://en.wikipedia.org/wiki/ARM_Cortex-R "ARM Cortex-R") real-time processors on first generation Versal devices
    *  Up to 8 cores Cortex-A78E application processors and 10 cores Cortex-R52 realtime processors on second generation Versal devices
*   (on some devices) CPM, a hard PCI Express block with CCIX support; comes in Gen4 and Gen5 version
*   (on some devices) XRAM, a single 32Mbit block of static RAM
*   a NoC ([Network on Chip](https://en.wikipedia.org/wiki/Network_on_a_chip "Network on a chip")) spanning the device, with [AXI4](https://en.wikipedia.org/wiki/AMBA_(bus_protocol) "AMBA (bus protocol)") interface blocks, connecting the PS, the CPM, the FPGA, the DDRMC cores, and the AI cores together
*   one or more DDRMC (DDR memory controller) blocks
*   (on some devices) HBM memory controller blocks
*   XPIO I/O banks, which are the successor to UltraScale+ HP I/O banks; in a departure from previous devices, the XPIO banks are considered to be outside the FPGA part, and some XPIO banks can only be used by the DDRMC blocks (without FPGA connectivity)
*   GTY transceivers, which can be used by the FPGA or by the CPM
*   GTYP transceivers, which are a minor improvement of GTY transceivers
*   GTM and GTM2 transceivers
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
        *   (2nd Gen device only) 4-core Mali-G78AE GPU 
        *   (2nd Gen selected device only) Image signal processor (ISP) 
        *   (2nd Gen selected device only) Video processing pipeline (VPP)
*   (on some devices) [AI](https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence") Engines, [vector processor](https://en.wikipedia.org/wiki/Vector_processor "Vector processor") cores meant for [machine learning](https://en.wikipedia.org/wiki/Machine_learning "Machine learning") usage
*   (on some devices) [AI](https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence")\-ML Engines, updated version of the AI Engines
*   (on some devices) [AI](https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence")\-ML v2 Engines, further updated version of the AI-ML Engines
*   (on some devices) LDPC decoders

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
			</th>
	</thead>
	<tbody>
		<tr>
			<td>XCVE2002</td>
			<td>Versal AI Edge</td>
			<td>2500*</td>
			<td>20000*</td>
			<td>24*</td>
			<td>24*</td>
			<td>90*</td>
			<td>1</td>
			<td>4</td>
			<td>0</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>8 AI-ML</td>
			<td>XRAM</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVE2102</td>
			<td>Versal AI Edge</td>
			<td>4576</td>
			<td>36608</td>
			<td>47</td>
			<td>47</td>
			<td>176</td>
			<td>1</td>
			<td>4</td>
			<td>0</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>12 AI-ML</td>
			<td>XRAM</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVE2202</td>
			<td>Versal AI Edge</td>
			<td>13125*</td>
			<td>105000*</td>
			<td>108*</td>
			<td>108*</td>
			<td>324*</td>
			<td>1</td>
			<td>4</td>
			<td>1</td>
			<td>5</td>
			<td>8 GTYP</td>
			<td>1 Gen4</td>
			<td>1 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>24 AI-ML (12×2)</td>
			<td>XRAM</td>
			<td>software-limitted version of XCVE2302, not yet in production
		</tr>
		<tr>
			<td>XCVE2302</td>
			<td>Versal AI Edge</td>
			<td>18784</td>
			<td>150272</td>
			<td>155</td>
			<td>155</td>
			<td>464</td>
			<td>1</td>
			<td>4</td>
			<td>1</td>
			<td>5</td>
			<td>8 GTYP</td>
			<td>1 Gen4</td>
			<td>1 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>34 AI-ML (17×2)</td>
			<td>XRAM</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVE1752</td>
			<td>Versal AI Edge</td>
			<td>56064</td>
			<td>448512</td>
			<td>954</td>
			<td>462</td>
			<td>1312</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>44 GTY</td>
			<td>4 Gen4</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>304 (38×8)</td>
			<td>CPM Gen4</td>
			<td>software-limitted version of XCVC1702
		</tr>
		<tr>
			<td>XCVE2602</td>
			<td>Versal AI Edge</td>
			<td>46875*</td>
			<td>375000*</td>
			<td>476*</td>
			<td>224*</td>
			<td>984*</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>32 GTYP</td>
			<td>4 Gen5</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>152 AI-ML (38×4)</td>
			<td>CPM Gen5, 2×VDE</td>
			<td>software-limitted version of XCVC2802, not yet in production
		</tr>
		<tr>
			<td>XCVE2802</td>
			<td>Versal AI Edge</td>
			<td>65088</td>
			<td>520704</td>
			<td>600</td>
			<td>264</td>
			<td>1312</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>32 GTYP</td>
			<td>4 Gen5</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>304 AI-ML (38×8)</td>
			<td>CPM Gen5, 4×VDE</td>
			<td>software-limitted version of XCVC2802, not yet in production
		</tr>
		<tr>
			<td>XCVC1352</td>
			<td>Versal AI Core</td>
			<td>30848</td>
			<td>246784</td>
			<td>441</td>
			<td>209</td>
			<td>928</td>
			<td>2</td>
			<td>7</td>
			<td>2</td>
			<td>10</td>
			<td>8 GTYP</td>
			<td>1 Gen4</td>
			<td>1 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>128</td>
			<td>XRAM</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVC1502</td>
			<td>Versal AI Core</td>
			<td>46544</td>
			<td>372352*</td>
			<td>848</td>
			<td>390</td>
			<td>1032</td>
			<td>3</td>
			<td>9</td>
			<td>1</td>
			<td>21</td>
			<td>32 GTY</td>
			<td>4 Gen4</td>
			<td>3 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>198 (33×6)</td>
			<td>CPM Gen4</td>
			<td>software-limitted version of XCVC1702
		</tr>
		<tr>
			<td>XCVC1702</td>
			<td>Versal AI Core</td>
			<td>56064</td>
			<td>448512</td>
			<td>954</td>
			<td>462</td>
			<td>1312</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>44 GTY</td>
			<td>4 Gen4</td>
			<td>4 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>304 (38×8)</td>
			<td>CPM Gen4</td>
			<td>
		</tr>
		<tr>
			<td>XCVC1802</td>
			<td>Versal AI Core</td>
			<td>90625*</td>
			<td>725000*</td>
			<td>800*</td>
			<td>325*</td>
			<td>1600*</td>
			<td>4</td>
			<td>12</td>
			<td>2</td>
			<td>28</td>
			<td>44 GTY</td>
			<td>4 Gen4</td>
			<td>4 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>300 (50×6)</td>
			<td>CPM Gen4</td>
			<td>software-limitted version of XCVC1902
		</tr>
		<tr>
			<td>XCVC1902</td>
			<td>Versal AI Core</td>
			<td>112480</td>
			<td>899840</td>
			<td>967</td>
			<td>463</td>
			<td>1968</td>
			<td>4</td>
			<td>12</td>
			<td>2</td>
			<td>28</td>
			<td>44 GTY</td>
			<td>4 Gen4</td>
			<td>4 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>400 (50×8)</td>
			<td>CPM Gen4</td>
			<td>
		</tr>
		<tr>
			<td>XCVC2602</td>
			<td>Versal AI Core</td>
			<td>46875*</td>
			<td>375000*</td>
			<td>476*</td>
			<td>224*</td>
			<td>984*</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>32 GTYP</td>
			<td>4 Gen5</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>152 AI-ML (38×4)</td>
			<td>CPM Gen5, 2×VDE</td>
			<td>software-limitted version of XCVC2802, not yet in production
		</tr>
		<tr>
			<td>XCVC2802</td>
			<td>Versal AI Core</td>
			<td>65088</td>
			<td>520704</td>
			<td>600</td>
			<td>264</td>
			<td>1312</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>32 GTYP</td>
			<td>4 Gen5</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>304 AI-ML (38×8)</td>
			<td>CPM Gen5, 4×VDE</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVM1102</td>
			<td>Versal Prime</td>
			<td>18784</td>
			<td>150272</td>
			<td>155</td>
			<td>155</td>
			<td>464</td>
			<td>1</td>
			<td>4</td>
			<td>1</td>
			<td>5</td>
			<td>8 GTYP</td>
			<td>1 Gen4</td>
			<td>1 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>XRAM</td>
			<td>software-limitted version of XCVE2302, not yet in production
		</tr>
		<tr>
			<td>XCVM1302</td>
			<td>Versal Prime</td>
			<td>39616*</td>
			<td>316928*</td>
			<td>502*</td>
			<td>178*</td>
			<td>832*</td>
			<td>2</td>
			<td>8</td>
			<td>1</td>
			<td>9*</td>
			<td>24 GTY</td>
			<td>2 Gen4</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>CPM Gen4</td>
			<td>software-limitted version of XCVM1402
		</tr>
		<tr>
			<td>XCVM1402</td>
			<td>Versal Prime</td>
			<td>70720</td>
			<td>565760</td>
			<td>1150</td>
			<td>286</td>
			<td>1696</td>
			<td>4</td>
			<td>12</td>
			<td>1</td>
			<td>18</td>
			<td>24 GTY</td>
			<td>2 Gen4</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>CPM Gen4</td>
			<td>
		</tr>
		<tr>
			<td>XCVM1502</td>
			<td>Versal Prime</td>
			<td>56064</td>
			<td>448512</td>
			<td>954</td>
			<td>462</td>
			<td>1312</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>44 GTY</td>
			<td>4 Gen4</td>
			<td>4 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>CPM Gen4</td>
			<td>XCVC1702 with AI Engines disabled
		</tr>
		<tr>
			<td>XCVM1802</td>
			<td>Versal Prime</td>
			<td>112480</td>
			<td>899840</td>
			<td>967</td>
			<td>463</td>
			<td>1968</td>
			<td>4</td>
			<td>12</td>
			<td>2</td>
			<td>28</td>
			<td>44 GTY</td>
			<td>4 Gen4</td>
			<td>4 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>CPM Gen4</td>
			<td>XCVC1902 with AI Engines disabled
		</tr>
		<tr>
			<td>XCVM2152</td>
			<td>Versal Prime</td>
			<td>43264</td>
			<td>346112</td>
			<td>759</td>
			<td>191</td>
			<td>1704</td>
			<td>4 (DDR5)</td>
			<td>?</td>
			<td>2</td>
			<td>12</td>
			<td>8 GTYP + 8GTM</td>
			<td>2 Gen5</td>
			<td>2 MRMAC + 1 DCMAC</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>XCVC2802 with AI Engines and VDE disabled, not yet in production
		</tr>
		<tr>
			<td>XCVM2202</td>
			<td>Versal Prime</td>
			<td>65088</td>
			<td>520704</td>
			<td>600</td>
			<td>264</td>
			<td>1312</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>21</td>
			<td>32 GTYP</td>
			<td>4 Gen5</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>XCVC2802 with AI Engines and VDE disabled, not yet in production
		</tr>
		<tr>
			<td>XCVM2302</td>
			<td>Versal Prime</td>
			<td>89984</td>
			<td>719872</td>
			<td>1405</td>
			<td>453</td>
			<td>1904</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>30</td>
			<td>8 GTYP + 40 GTM</td>
			<td>2 Gen5</td>
			<td>6 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCVP1402, not yet in production
		</tr>
		<tr>
			<td>XCVM2502</td>
			<td>Versal Prime</td>
			<td>112528</td>
			<td>900224</td>
			<td>1341</td>
			<td>677</td>
			<td>3984</td>
			<td>4</td>
			<td>12</td>
			<td>-</td>
			<td>28</td>
			<td>16 GTYP</td>
			<td>2 Gen5</td>
			<td>2 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>software-limitted version of XCVP1202, not yet in production
		</tr>
		<tr>
			<td>XCVM2902</td>
			<td>Versal Prime</td>
			<td>127616</td>
			<td>1020928</td>
			<td>1981</td>
			<td>645</td>
			<td>2672</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>42</td>
			<td>8 GTYP + 40 GTM</td>
			<td>2 Gen5</td>
			<td>6 MRMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCVP1402, not yet in production
		</tr>
		<tr>
			<td>XCVP1002</td>
			<td>Versal Premium</td>
			<td>47600*</td>
			<td>380800*</td>
			<td>535*</td>
			<td>345*</td>
			<td>1140*</td>
			<td>2</td>
			<td>7</td>
			<td>-</td>
			<td>16*</td>
			<td>20 GTY + 24 GTM</td>
			<td>1 Gen4</td>
			<td>3 MRMAC + 2 DCMAC</td>
			<td>1</td>
			<td>1</td>
			<td>-</td>
			<td>CPM Gen4</td>
			<td>software-limitted version of XCVP1052, not yet in production
		</tr>
		<tr>
			<td>XCVP1052</td>
			<td>Versal Premium</td>
			<td>67760</td>
			<td>542080</td>
			<td>751</td>
			<td>489</td>
			<td>1572</td>
			<td>2</td>
			<td>7</td>
			<td>-</td>
			<td>22</td>
			<td>20 GTY + 48 GTM</td>
			<td>1 Gen4</td>
			<td>5 MRMAC + 3 DCMAC</td>
			<td>2</td>
			<td>1</td>
			<td>-</td>
			<td>CPM Gen4</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCVP1102</td>
			<td>Versal Premium</td>
			<td>89984</td>
			<td>719872</td>
			<td>1405</td>
			<td>453</td>
			<td>1904</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>30</td>
			<td>8 GTYP + 64 GTM</td>
			<td>2 Gen5</td>
			<td>6 MRMAC + 4 DCMAC</td>
			<td>2</td>
			<td>3</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCVP1402
		</tr>
		<tr>
			<td>XCVP1202</td>
			<td>Versal Premium</td>
			<td>112528</td>
			<td>900224</td>
			<td>1341</td>
			<td>677</td>
			<td>3984</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>28</td>
			<td>28 GTYP + 20 GTM</td>
			<td>2 Gen5</td>
			<td>2 MRMAC + 1 DCMAC</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>
		</tr>
		<tr>
			<td>XCVP1402</td>
			<td>Versal Premium</td>
			<td>127616</td>
			<td>1020928</td>
			<td>1981</td>
			<td>645</td>
			<td>2672</td>
			<td>3</td>
			<td>9</td>
			<td>2</td>
			<td>42</td>
			<td>8 GTYP + 96 GTM</td>
			<td>2 Gen5</td>
			<td>6 MRMAC + 8 DCMAC</td>
			<td>2</td>
			<td>5</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCVP1502</td>
			<td>Versal Premium</td>
			<td>215056</td>
			<td>1720448</td>
			<td>2541</td>
			<td>1301</td>
			<td>7440</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>52</td>
			<td>28 GTYP + 60 GTM</td>
			<td>2 Gen5</td>
			<td>4 MRMAC + 3 DCMAC</td>
			<td>1</td>
			<td>2</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>multi-die device consisting of XCVP1202 + an extension die
		</tr>
		<tr>
			<td>XCVP1552</td>
			<td>Versal Premium</td>
			<td>219248</td>
			<td>1753984</td>
			<td>2541</td>
			<td>1301</td>
			<td>7392</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>52</td>
			<td>68 GTYP + 20 GTM</td>
			<td>8 Gen5</td>
			<td>4 MRMAC + 1 DCMAC</td>
			<td>-</td>
			<td>2</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>XCVH15x2 without HBM
		</tr>
		<tr>
			<td>XCVP1702</td>
			<td>Versal Premium</td>
			<td>317584</td>
			<td>2540672</td>
			<td>3741</td>
			<td>1925</td>
			<td>10896</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>76</td>
			<td>28 GTYP + 100 GTM</td>
			<td>2 Gen5</td>
			<td>6 MRMAC + 5 DCMAC</td>
			<td>2</td>
			<td>3</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>multi-die device consisting of XCVP1202 + 2× extension die (same as XCVP1502)
		</tr>
		<tr>
			<td>XCVP1802</td>
			<td>Versal Premium</td>
			<td>420112</td>
			<td>3360896</td>
			<td>4941</td>
			<td>2549</td>
			<td>14352</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>100</td>
			<td>28 GTYP + 140 GTM</td>
			<td>2 Gen5</td>
			<td>8 MRMAC + 7 DCMAC</td>
			<td>3</td>
			<td>4</td>
			<td>-</td>
			<td>CPM Gen5</td>
			<td>multi-die device consisting of XCVP1202 + 3× extension die (same as XCVP1502)
		</tr>
		<tr>
			<td>XCVP1902</td>
			<td>Versal Premium</td>
			<td>1057536</td>
			<td>8460288</td>
			<td>6808</td>
			<td>2200</td>
			<td>6864</td>
			<td>14</td>
			<td>44</td>
			<td>2</td>
			<td>192</td>
			<td>128 GTYP</td>
			<td>16 Gen5</td>
			<td>12 MRMAC + 4 DCMAC</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td></td>
		</tr>
		<tr>
			<td>XCVP2502</td>
			<td>Versal Premium</td>
			<td>213584</td>
			<td>1708672</td>
			<td>2541</td>
			<td>1301</td>
			<td>7392</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>52</td>
			<td>28 GTYP + 60 GTM</td>
			<td>2 Gen5</td>
			<td>4 MRMAC + 3 DCMAC</td>
			<td>1</td>
			<td>2</td>
			<td>472 (59×8)</td>
			<td>CPM Gen5</td>
			<td>multi-die device consisting of XCVP1202 + AI extension die
		</tr>
		<tr>
			<td>XCVP2802</td>
			<td>Versal Premium</td>
			<td>418640</td>
			<td>3349120</td>
			<td>4941</td>
			<td>2549</td>
			<td>14304</td>
			<td>4</td>
			<td>13</td>
			<td>-</td>
			<td>100</td>
			<td>28 GTYP + 140 GTM</td>
			<td>2 Gen5</td>
			<td>8 MRMAC + 7 DCMAC</td>
			<td>3</td>
			<td>4</td>
			<td>472 (59×8)</td>
			<td>CPM Gen5</td>
			<td>multi-die device consisting of XCVP1202 + 2× extension die (same as XCVP1502) + AI
				extension die (same as XCVP2502)
		</tr>
		<tr>
			<td>XCVH1522</td>
			<td rowspan=3>Versal HBM</td>
			<td rowspan=3>219248</td>
			<td rowspan=3>1753984</td>
			<td rowspan=3>2541</td>
			<td rowspan=3>1301</td>
			<td rowspan=3>7392</td>
			<td rowspan=3>4</td>
			<td rowspan=3>13</td>
			<td rowspan=3>-</td>
			<td rowspan=3>52</td>
			<td rowspan=3>68 GTYP + 20 GTM</td>
			<td rowspan=3>8 Gen5</td>
			<td rowspan=3>4 MRMAC + 1 DCMAC</td>
			<td rowspan=3>-</td>
			<td rowspan=3>2</td>
			<td rowspan=3>-</td>
			<td>CPM Gen5, 8GB HBM</td>
			<td rowspan=3>multi-die device consisting of XCVP1202 + HBM extension die + HBM memory
				stacks, not yet in production
		</tr>
		<tr>
			<td>XCVH1542</td>
			<td>CPM Gen5, 16GB HBM
		</tr>
		<tr>
			<td>XCVH1582</td>
			<td>CPM Gen5, 32GB HBM
		</tr>
		<tr>
			<td>XCVH1742</td>
			<td rowspan=2>Versal HBM</td>
			<td rowspan=2>321776</td>
			<td rowspan=2>2574208</td>
			<td rowspan=2>3741</td>
			<td rowspan=2>1925</td>
			<td rowspan=2>10848</td>
			<td rowspan=2>4</td>
			<td rowspan=2>13</td>
			<td rowspan=2>-</td>
			<td rowspan=2>76</td>
			<td rowspan=2>68 GTYP + 60 GTM</td>
			<td rowspan=2>2 Gen5</td>
			<td rowspan=2>6 MRMAC + 3 DCMAC</td>
			<td rowspan=2>1</td>
			<td rowspan=2>3</td>
			<td rowspan=2>-</td>
			<td>CPM Gen5, 16GB HBM</td>
			<td rowspan=2>multi-die device consisting of XCVP1202 + extension die (same as XCVP1502)
				+ HBM extension die (same as XCVH15x2) + HBM memory stacks, not yet in production
		</tr>
		<tr>
			<td>XCVH1782</td>
			<td>CPM Gen5, 32GB HBM
	<tfoot>
</table>

## Versal Gen 2
* Versal Gen 2 series devices change XPIO to X5IO, which is a high-performance I/O with 32 I/Os per bank. 

* Additionally, Versal Premium series increase the PCIe phy to Gen6x8 per controller with the support for CXL 3.1. The transceivers have been updated to GTM2 with minimum 32G and up to 112G datarate (depends on PL vs. PS).
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
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">X5IO
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">HDIO
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">NoC
				master/slave ports
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Transceivers (PL+PS)
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
			</th>
	</thead>
	<tbody>
		<tr>
			<td>XC2VE3304</td><!-- SKU -->
			<td rowspan=2>Versal AI Edge Gen 2</td>
			<td rowspan=2>11824</td><!-- SLICE -->
			<td rowspan=2>94592</td><!-- LUT (SLICE*8) -->
			<td rowspan=2>141</td><!-- BRAM -->
			<td rowspan=2>47</td><!-- URAM -->
			<td rowspan=2>184</td><!-- DSP -->
			<td rowspan=2>3</td><!-- DDRMC -->
			<td rowspan=2>260</td><!-- X5IO -->
			<td rowspan=2>44</td><!-- HDIO -->
			<td rowspan=2>4</td><!-- NoC M/S ports -->
			<td rowspan=2>4+4 GTYP</td><!-- Transceivers -->
			<td rowspan=2>1 Gen5</td><!-- PCIE -->
			<td rowspan=2>1 MRMAC</td><!-- Ethernet MAC -->
			<td rowspan=2>-</td><!-- Interlaken -->
			<td rowspan=2>-</td><!-- HSC -->
			<td rowspan=2>24 AI-ML v2</td><!-- AI Engine -->
			<td>-</td><!-- Other -->
			<td rowspan=2>-</td>
		</tr>
		<tr>
			<td>XC2VE3358</td><!-- SKU -->
			<td>1 VCU + 1 ISP + 1 VPP</td>
		</tr>
		<tr>
			<td>XC2VE3504</td><!-- SKU -->
			<td rowspan=2>Versal AI Edge Gen 2</td>
			<td rowspan=2>28125</td><!-- SLICE -->
			<td rowspan=2>225000</td><!-- LUT (SLICE*8) -->
			<td rowspan=2>388</td><!-- BRAM -->
			<td rowspan=2>12</td><!-- URAM -->
			<td rowspan=2>700</td><!-- DSP -->
			<td rowspan=2>4</td><!-- DDRMC -->
			<td rowspan=2>384</td><!-- X5IO -->
			<td rowspan=2>88</td><!-- HDIO -->
			<td rowspan=2>7</td><!-- NoC M/S ports -->
			<td rowspan=2>12+4 GTYP</td><!-- Transceivers -->
			<td rowspan=2>3 Gen5</td><!-- PCIE -->
			<td rowspan=2>1 MRMAC</td><!-- Ethernet MAC -->
			<td rowspan=2>-</td><!-- Interlaken -->
			<td rowspan=2>-</td><!-- HSC -->
			<td rowspan=2>80 AI-ML v2</td><!-- AI Engine -->
			<td>-</td><!-- Other -->
			<td rowspan=2>-</td>
		</tr>
		<tr>
			<td>XC2VE3558</td><!-- SKU -->
			<td>1 VCU + 3 ISP</td>
		</tr>
		<tr>
			<td>XC2VE3804</td><!-- SKU -->
			<td rowspan=2>Versal AI Edge Gen 2</td>
			<td rowspan=2>67888</td><!-- SLICE -->
			<td rowspan=2>543104</td><!-- LUT (SLICE*8) -->
			<td rowspan=2>1342</td><!-- BRAM -->
			<td rowspan=2>118</td><!-- URAM -->
			<td rowspan=2>2064</td><!-- DSP -->
			<td rowspan=2>5</td><!-- DDRMC -->
			<td rowspan=2>512</td><!-- X5IO -->
			<td rowspan=2>44</td><!-- HDIO -->
			<td rowspan=2>24</td><!-- NoC M/S ports -->
			<td rowspan=2>20+4 GTYP</td><!-- Transceivers -->
			<td rowspan=2>4 Gen5</td><!-- PCIE -->
			<td rowspan=2>3 MRMAC</td><!-- Ethernet MAC -->
			<td rowspan=2>-</td><!-- Interlaken -->
			<td rowspan=2>-</td><!-- HSC -->
			<td rowspan=2>144 AI-ML v2</td><!-- AI Engine -->
			<td>-</td><!-- Other -->
			<td rowspan=2>-</td>
		</tr>
		<tr>
			<td>XC2VE3858</td><!-- SKU -->
			<td>1 VCU + 3 ISP</td>
		</tr>
		<tr>
			<td>XC2VM3354</td><!-- SKU -->
			<td>Versal AI Prime Gen 2</td>
			<td>11824</td><!-- SLICE -->
			<td>94592</td><!-- LUT (SLICE*8) -->
			<td>141</td><!-- BRAM -->
			<td>47</td><!-- URAM -->
			<td>184</td><!-- DSP -->
			<td>3</td><!-- DDRMC -->
			<td>260</td><!-- X5IO -->
			<td>44</td><!-- HDIO -->
			<td>4</td><!-- NoC M/S ports -->
			<td>4+4 GTYP</td><!-- Transceivers -->
			<td>1 Gen5</td><!-- PCIE -->
			<td>1 MRMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>1 VCU</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VM3558</td><!-- SKU -->
			<td>Versal AI Prime Gen 2</td>
			<td>28125</td><!-- SLICE -->
			<td>225000</td><!-- LUT (SLICE*8) -->
			<td>388</td><!-- BRAM -->
			<td>12</td><!-- URAM -->
			<td>700</td><!-- DSP -->
			<td>4</td><!-- DDRMC -->
			<td>384</td><!-- X5IO -->
			<td>88</td><!-- HDIO -->
			<td>7</td><!-- NoC M/S ports -->
			<td>12+4 GTYP</td><!-- Transceivers -->
			<td>3 Gen5</td><!-- PCIE -->
			<td>1 MRMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>1 VCU</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VM3654</td><!-- SKU -->
			<td>Versal AI Prime Gen 2</td>
			<td>39760</td><!-- SLICE -->
			<td>318080</td><!-- LUT (SLICE*8) -->
			<td>631</td><!-- BRAM -->
			<td>83</td><!-- URAM -->
			<td>1428</td><!-- DSP -->
			<td>4</td><!-- DDRMC -->
			<td>184</td><!-- X5IO -->
			<td>22</td><!-- HDIO -->
			<td>7</td><!-- NoC M/S ports -->
			<td>24+4 GTYP</td><!-- Transceivers -->
			<td>2 Gen5</td><!-- PCIE -->
			<td>2 MRMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>1</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>2 VCU</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VM3858</td><!-- SKU -->
			<td>Versal AI Prime Gen 2</td>
			<td>67888</td><!-- SLICE -->
			<td>543104</td><!-- LUT (SLICE*8) -->
			<td>1342</td><!-- BRAM -->
			<td>118</td><!-- URAM -->
			<td>2064</td><!-- DSP -->
			<td>5</td><!-- DDRMC -->
			<td>512</td><!-- X5IO -->
			<td>44</td><!-- HDIO -->
			<td>24</td><!-- NoC M/S ports -->
			<td>20+4 GTYP</td><!-- Transceivers -->
			<td>4 Gen5</td><!-- PCIE -->
			<td>3 MRMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>1 VCU</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VP3102</td><!-- SKU -->
			<td>Versal AI Premium Gen 2</td>
			<td>80432</td><!-- SLICE -->
			<td>643456</td><!-- LUT (SLICE*8) -->
			<td>1246</td><!-- BRAM -->
			<td>288</td><!-- URAM -->
			<td>3332</td><!-- DSP -->
			<td>4</td><!-- DDRMC -->
			<td>416</td><!-- X5IO -->
			<td>22</td><!-- HDIO -->
			<td>24</td><!-- NoC M/S ports -->
			<td>16+16 GTM2</td><!-- Transceivers -->
			<td>2 Gen6</td><!-- PCIE -->
			<td>2 MRMAC + 1 DCMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>4 LDPC Decoders</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VP3202</td><!-- SKU -->
			<td>Versal AI Premium Gen 2</td>
			<td>99632</td><!-- SLICE -->
			<td>797056</td><!-- LUT (SLICE*8) -->
			<td>1510</td><!-- BRAM -->
			<td>360</td><!-- URAM -->
			<td>4004</td><!-- DSP -->
			<td>4</td><!-- DDRMC -->
			<td>416</td><!-- X5IO -->
			<td>22</td><!-- HDIO -->
			<td>24</td><!-- NoC M/S ports -->
			<td>16+16 GTM2</td><!-- Transceivers -->
			<td>2 Gen6</td><!-- PCIE -->
			<td>2 MRMAC + 1 DCMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>6 LDPC Decoders</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VP3402</td><!-- SKU -->
			<td>Versal AI Premium Gen 2</td>
			<td>146352</td><!-- SLICE -->
			<td>1170816</td><!-- LUT (SLICE*8) -->
			<td>2230</td><!-- BRAM -->
			<td>504</td><!-- URAM -->
			<td>6080</td><!-- DSP -->
			<td>8</td><!-- DDRMC -->
			<td>736</td><!-- X5IO -->
			<td>0</td><!-- HDIO -->
			<td>40</td><!-- NoC M/S ports -->
			<td>40+16 GTM2</td><!-- Transceivers -->
			<td>2 Gen6</td><!-- PCIE -->
			<td>1 MRMAC + 3 DCMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>1</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>-</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VP3502</td><!-- SKU -->
			<td>Versal AI Premium Gen 2</td>
			<td>187056</td><!-- SLICE -->
			<td>1496448</td><!-- LUT (SLICE*8) -->
			<td>2806</td><!-- BRAM -->
			<td>648</td><!-- URAM -->
			<td>2856</td><!-- DSP -->
			<td>8</td><!-- DDRMC -->
			<td>736</td><!-- X5IO -->
			<td>0</td><!-- HDIO -->
			<td>40</td><!-- NoC M/S ports -->
			<td>56+16 GTM2</td><!-- Transceivers -->
			<td>2 Gen6</td><!-- PCIE -->
			<td>1 MRMAC + 5 DCMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>1</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>-</td><!-- Other -->
			<td>-</td>
		</tr>
		<tr>
			<td>XC2VP3602</td><!-- SKU -->
			<td>Versal AI Premium Gen 2</td>
			<td>187056</td><!-- SLICE -->
			<td>1496448</td><!-- LUT (SLICE*8) -->
			<td>2806</td><!-- BRAM -->
			<td>648</td><!-- URAM -->
			<td>7616</td><!-- DSP -->
			<td>8</td><!-- DDRMC -->
			<td>736</td><!-- X5IO -->
			<td>0</td><!-- HDIO -->
			<td>40</td><!-- NoC M/S ports -->
			<td>56+16 GTM2</td><!-- Transceivers -->
			<td>2 Gen6</td><!-- PCIE -->
			<td>1 MRMAC + 5 DCMAC</td><!-- Ethernet MAC -->
			<td>-</td><!-- Interlaken -->
			<td>1</td><!-- HSC -->
			<td>-</td><!-- AI Engine -->
			<td>-</td><!-- Other -->
			<td>-</td>
		</tr>
	</tbody>
</table>

## Versal RF Series
The Versal RF series differs from generic Versal devices with the inclusion of following special function hard IP:
* 14-bit RF-ADC and 14-bit RF-DAC with varying sampling rate (As of Jul. 2025, the max DAC sampling rate are all 16GSPS)
* 1 GSPS channelizers (plural)
* FFT/iFFT blocks
* Polyphase Arbitrary Resampler
* Additional memory specific to the AI Engine
* (on some devices) LDPC decoders

The RF series deivces currently have no support for HSC (high speed crypto) blocks and no distinction between PL and PS transceivers.

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
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">X5IO
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">HDIO
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
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">HSC blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">AI Engines
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">AI Engines Memory
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">RF ADC(GSPS)+DAC(GSPS)
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Channelizer
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">FFT/iFFT blocks
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Other
			</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
			</th>
	</thead>
	<tbody>
		<tr>
			<td>XCVR1602</td><!-- SKU -->
			<td rowspan=2>Versal RF Series</td>
			<td rowspan=2>68880</td><!-- SLICE -->
			<td rowspan=2>551040</td><!-- LUT (SLICE*8) -->
			<td rowspan=2>1109</td><!-- BRAM -->
			<td rowspan=2>357</td><!-- URAM -->
			<td rowspan=2>2256</td><!-- DSP -->
			<td rowspan=2>4</td><!-- DDRMC -->
			<td rowspan=2>448</td><!-- X5IO -->
			<td rowspan=2>22</td><!-- HDIO -->
			<td rowspan=2>16</td><!-- NoC M/S ports -->
			<td rowspan=2>12 GTYP + 8 GTM</td><!-- Transceivers -->
			<td rowspan=2>1 Gen5</td><!-- PCIE -->
			<td rowspan=2>2 MRMAC</td><!-- Ethernet MAC -->
			<td rowspan=2>-</td><!-- Interlaken -->
			<td rowspan=2>-</td><!-- HSC -->
			<td rowspan=2>126</td><!-- AI Engine -->
			<td rowspan=2>32 Mb</td><!-- AI Engine Memory -->
			<td>16 (8GSPS) + 16 (16GSPS)</td><!-- RFADC/DAC-->
			<td rowspan=2>224</td><!-- Channelizer -->
			<td rowspan=2>28</td><!-- FFT/iFFT -->
			<td rowspan=2>4 LDPC Decoders</td><!-- Other -->
			<td rowspan=2>-</td>
		</tr>
		<tr>
			<td>XCVR1652</td><!-- SKU -->
			<td>4 (32GSPS) + 16 (16GSPS)</td><!-- RFADC/DAC-->
		</tr>
		<tr>
			<td>XCVR1902</td><!-- SKU -->
			<td rowspan=2>Versal RF Series</td>
			<td rowspan=2>141360</td><!-- SLICE -->
			<td rowspan=2>1130880</td><!-- LUT (SLICE*8) -->
			<td rowspan=2>2266</td><!-- BRAM -->
			<td rowspan=2>262</td><!-- URAM -->
			<td rowspan=2>3976</td><!-- DSP -->
			<td rowspan=2>4</td><!-- DDRMC -->
			<td rowspan=2>448</td><!-- X5IO -->
			<td rowspan=2>22</td><!-- HDIO -->
			<td rowspan=2>36</td><!-- NoC M/S ports -->
			<td rowspan=2>20 GTM2</td><!-- Transceivers -->
			<td rowspan=2>1 Gen5</td><!-- PCIE -->
			<td rowspan=2>2 MRMAC + 3 DCMAC</td><!-- Ethernet MAC -->
			<td rowspan=2>-</td><!-- Interlaken -->
			<td rowspan=2>-</td><!-- HSC -->
			<td rowspan=2>120</td><!-- AI Engine -->
			<td rowspan=2>30 Mb</td><!-- AI Engine Memory -->
			<td>16 (8GSPS) + 16 (16GSPS)</td><!-- RFADC/DAC-->
			<td rowspan=2>320</td><!-- Channelizer -->
			<td rowspan=2>40</td><!-- FFT/iFFT -->
			<td rowspan=2>8 Resampler</td><!-- Other -->
			<td rowspan=2>-</td>
		</tr>
		<tr>
			<td>XCVR1952</td><!-- SKU -->
			<td>8 (32GSPS) + 16 (16GSPS)</td><!-- RFADC/DAC-->
		</tr>
	</tbody>
</table>