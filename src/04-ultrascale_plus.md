# UltraScale-plus

The UltraScale+ devices are functionally the same as UltraScale variants, with lipography changed from 20nm to 16nm FinFET. UltraScale+ also brings back Spartan, Artix, and Zynq families of products.

Zynq UltraScale+ devices are [ARM Cortex-A53](https://en.wikipedia.org/wiki/ARM_Cortex-A53 "ARM Cortex-A53") based
systems on chip sharing a die with an FPGA. The SoC part of the device is called a Processing System (PS). Each model of
Zynq UltraScale+ MPSoC is available in up to 3 sub-models: CG, EG, and EV. The main differences among these sub-models
are in the CPU and [GPU](https://en.wikipedia.org/wiki/Graphics_processing_unit "Graphics processing unit")
configurations.[\[77\]](#cite_note-77) Zynq UltraScale+ RFSoC devices are available in DR sub-models, which have PS
capabilities identical to MPSoC EG sub-models.
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
			<td>APU</td>
			<td><a href=https://en.wikipedia.org/wiki/ARM_Cortex-A title="ARM Cortex-A">2x Arm
					A53</a></td>
			<td>4x Arm A53</td>
			<td>4x Arm A53
		</tr>
		<tr>
			<td>RPU</td>
			<td><a href=https://en.wikipedia.org/wiki/ARM_Cortex-R title="ARM Cortex-R">2x Arm
					R5</a></td>
			<td>2x Arm R5</td>
			<td>2x Arm R5
		</tr>
		<tr>
			<td>GPU</td>
			<td>-</td>
			<td><a href=https://en.wikipedia.org/wiki/Mali_(GPU) title="Mali (GPU)">Arm
					Mali-400MP2</a></td>
			<td>Arm Mali-400MP2
		</tr>
		<tr>
			<td>VCU</td>
			<td>-</td>
			<td>-</td>
			<td><a href=https://en.wikipedia.org/wiki/H.264/MPEG-4_AVC class=mw-redirect
					title="H.264/MPEG-4 AVC">H.264</a>/<a href=https://en.wikipedia.org/wiki/H.265 class=mw-redirect
					title=H.265>H.265</a>
</table>

Zynq UltraScale+ devices have some additional blocks:

* (some RFSoC devices) [SD-FEC](https://en.wikipedia.org/wiki/Forward_Error_Correction "Forward Error Correction") cores
* (some RFSoC devices) Digital Front End subsystem (a set of hard logic blocks for RF signal processing)
* (RFSoC devices) high-speed (radio frequency) [analog-to-digital
converters](https://en.wikipedia.org/wiki/Analog-to-digital_converter "Analog-to-digital converter") (RF-ADC) and
[digital-to-analog converters](https://en.wikipedia.org/wiki/Digital-to-analog_converter "Digital-to-analog converter")
(RF-DAC), for 5G applications
* (MPSoC EV devices) a video codec unit (VCU) performing H.264 and H.265 decoding/encoding

* Different generations of Zynq UltraScale+ RFSoC have different ADC resolutions
<table>
	<tbody>
		<tr>
			<th>
			</th>
			<th>Gen1
			</th>
			<th>Gen2
			</th>
			<th>Gen3
			</th>
			<th> DFE
			</th>
		</tr>
		<tr>
			<td>ADC Resolution (bit)
			</td>
			<td>12
			</td>
			<td>12
			</td>
			<td>14
			</td>
			<td>14
			</td>
		</tr>
	</tbody>
</table>


## Artix, Kintex, Spartan, and Virtex UltraScale+ family
<table>
	<tbody>
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
		</tr>
		<tr>
			<td>XCAU7P</td>
			<td>Artix UltraScale+</td>
			<td>4680</td>
			<td>37440</td>
			<td></td>
			<td>108</td>
			<td></td>
			<td>215</td>
			<td>2</td>
			<td></td>
			<td>2 HP + 6 HD</td>
			<td>104 HP + 144 HD</td>
			<td>4 GTH</td>
			<td>1 PCIE4C</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCAU10P</td>
			<td>Artix UltraScale+</td>
			<td>5500*</td>
			<td>44000*</td>
			<td></td>
			<td>100*</td>
			<td>-</td>
			<td>400</td>
			<td>3</td>
			<td>6 (2x3)</td>
			<td>3 HP + 3 HD</td>
			<td>156 HP + 72 HD</td>
			<td>12 GTH</td>
			<td>1 PCIE4C</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCAU15P
		</tr>
		<tr>
			<td>XCAU15P</td>
			<td>Artix UltraScale+</td>
			<td>9720</td>
			<td>77760</td>
			<td>5040</td>
			<td>144</td>
			<td>-</td>
			<td>576</td>
			<td>3</td>
			<td>6 (2x3)</td>
			<td>3 HP + 3 HD</td>
			<td>156 HP + 72 HD</td>
			<td>12 GTH</td>
			<td>1 PCIE4C</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCAU20P</td>
			<td>Artix UltraScale+</td>
			<td>13625*</td>
			<td>109000*</td>
			<td></td>
			<td>200*</td>
			<td>-</td>
			<td>900*</td>
			<td>3*</td>
			<td>16 (4x4)</td>
			<td>3 HP + 3 HD</td>
			<td>156 HP + 72 HD</td>
			<td>12 GTY</td>
			<td>1 PCIE4</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCKU5P
		</tr>
		<tr>
			<td>XCAU25P</td>
			<td>Artix UltraScale+</td>
			<td>17625*</td>
			<td>141000*</td>
			<td></td>
			<td>300*</td>
			<td>-</td>
			<td>1200*</td>
			<td>4</td>
			<td>16 (4x4)</td>
			<td>4 HP + 4 HD</td>
			<td>208 HP + 96 HD</td>
			<td>12 GTY</td>
			<td>1 PCIE4</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCKU5P
		</tr>
		<tr>
			<td>XCKU3P</td>
			<td>Kintex UltraScale+</td>
			<td>20340*</td>
			<td>162720*</td>
			<td></td>
			<td>360*</td>
			<td>48*</td>
			<td>1368*</td>
			<td>4</td>
			<td>16 (4×4)</td>
			<td>4 HP + 4 HD</td>
			<td>208 HP + 96 HD</td>
			<td>16 GTY</td>
			<td>1 PCIE4</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCKU5P
		</tr>
		<tr>
			<td>XCKU5P</td>
			<td>Kintex UltraScale+</td>
			<td>27120</td>
			<td>216960</td>
			<td>12480</td>
			<td>480</td>
			<td>64</td>
			<td>1824</td>
			<td>4</td>
			<td>16 (4×4)</td>
			<td>4 HP + 4 HD</td>
			<td>208 HP + 96 HD</td>
			<td>16 GTY</td>
			<td>1 PCIE4</td>
			<td>1</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCKU9P</td>
			<td>Kintex UltraScale+</td>
			<td>34260</td>
			<td>274080</td>
			<td>18000</td>
			<td>912</td>
			<td>-</td>
			<td>2520</td>
			<td>4</td>
			<td>25 (4×7-3)</td>
			<td>4 HP + 5 HD</td>
			<td>208 HP + 96 HD</td>
			<td>28 GTH</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>same die as XCZU9*, with disabled PS
		</tr>
		<tr>
			<td>XCKU11P</td>
			<td>Kintex UltraScale+</td>
			<td>37320</td>
			<td>298560</td>
			<td>18540</td>
			<td>600</td>
			<td>80</td>
			<td>2928</td>
			<td>8</td>
			<td>29 (4×8-3)</td>
			<td>8 HP + 4 HD</td>
			<td>416 HP + 96 HD</td>
			<td>32 GTH + 20 GTY</td>
			<td>4 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>-</td>
			<td>same die as XCZU11*, with disabled PS
		</tr>
		<tr>
			<td>XCKU13P</td>
			<td>Kintex UltraScale+</td>
			<td>42660</td>
			<td>341280</td>
			<td>23040</td>
			<td>744</td>
			<td>112</td>
			<td>3528</td>
			<td>4</td>
			<td>25 (4×7-3)</td>
			<td>4 HP + 5 HD</td>
			<td>208 HP + 96 HD</td>
			<td>28 GTH</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>same die as XCZU15*, with disabled PS
		</tr>
		<tr>
			<td>XCKU15P</td>
			<td>Kintex UltraScale+</td>
			<td>65340</td>
			<td>522720</td>
			<td>20160</td>
			<td>984</td>
			<td>128</td>
			<td>1968</td>
			<td>11</td>
			<td>41 (4×11-3)</td>
			<td>11 HP + 4 HD</td>
			<td>572 HP + 96 HD</td>
			<td>44 GTH + 32 GTY</td>
			<td>5 PCIE4</td>
			<td>4</td>
			<td>4</td>
			<td>-</td>
			<td>same die as XCZU19*, with disabled PS
		</tr>
		<tr>
			<td>XCKU19P</td>
			<td>Kintex UltraScale+</td>
			<td>105300</td>
			<td>842400</td>
			<td></td>
			<td>1728</td>
			<td>288</td>
			<td>1080</td>
			<td>9</td>
			<td>45 (5×9)</td>
			<td>9 HP + 3 HD</td>
			<td>468 HP + 72 HD</td>
			<td>32 GTY</td>
			<td>3 PCIE4C</td>
			<td>1</td>
			<td>-</td>
			<td>-</td>
			<td>partial version of XCVU23P</td>
		</tr>
		<tr>
			<td>XCSU10P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>625</td><!-- CLB -->
			<td>5000</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>48</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>24</td><!-- DSP -->
			<td>2</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 11 HD</td><!-- IO Banks -->
			<td>52 HP + 252 HD</td><!-- User IO -->
			<td>0</td><!-- Transceiver -->
			<td>0</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU25P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>1250</td><!-- CLB -->
			<td>10000</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>48</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>36</td><!-- DSP -->
			<td>2</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 11 HD</td><!-- IO Banks -->
			<td>52 HP + 252 HD</td><!-- User IO -->
			<td>0</td><!-- Transceiver -->
			<td>0</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU35P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>2040</td><!-- CLB -->
			<td>16320</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>48</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>48</td><!-- DSP -->
			<td>2</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 11 HD</td><!-- IO Banks -->
			<td>52 HP + 252 HD</td><!-- User IO -->
			<td>0</td><!-- Transceiver -->
			<td>0</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU50P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>3000</td><!-- CLB -->
			<td>24000</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>72</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>96</td><!-- DSP -->
			<td>2</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 14 HD</td><!-- IO Banks -->
			<td>52 HP + 336 HD</td><!-- User IO -->
			<td>0</td><!-- Transceiver -->
			<td>0</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>-</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU55P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>3000</td><!-- CLB -->
			<td>24000</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>48</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>96</td><!-- DSP -->
			<td>4</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 7 HD</td><!-- IO Banks -->
			<td>52 HP + 168 HD + 132 XP5</td><!-- User IO -->
			<td>0</td><!-- Transceiver -->
			<td>0</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2x Memory Controller</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU65P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>3750</td><!-- CLB -->
			<td>30000</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>108</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>96</td><!-- DSP -->
			<td>5</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 7 HD</td><!-- IO Banks -->
			<td>52 HP + 168 HD + 132 XP5</td><!-- User IO -->
			<td>4 GTH</td><!-- Transceiver -->
			<td>1 PCIE4CE</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2x Memory Controller</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU100P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>5760</td><!-- CLB -->
			<td>46080</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>144</td><!-- BRAM -->
			<td>0</td><!-- URAM -->
			<td>144</td><!-- DSP -->
			<td>5</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 13 HD</td><!-- IO Banks -->
			<td>52 HP + 294 HD + 132 XP5</td><!-- User IO -->
			<td>4 GTH</td><!-- Transceiver -->
			<td>1 PCIE4CE</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2x Memory Controller</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU150P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>7875</td><!-- CLB -->
			<td>63000</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>168</td><!-- BRAM -->
			<td>16</td><!-- URAM -->
			<td>384</td><!-- DSP -->
			<td>6</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 14 HD</td><!-- IO Banks -->
			<td>52 HP + 336 HD + 132 XP5</td><!-- User IO -->
			<td>8 GTH</td><!-- Transceiver -->
			<td>2 PCIE4CE</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2x Memory Controller</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCSU200P</td><!-- Name -->
			<td>Spartan UltraScale+</td><!-- Family -->
			<td>12480</td><!-- CLB -->
			<td>99840</td><!-- LUT(CLB*8) -->
			<td></td><!-- SLICEM -->
			<td>192</td><!-- BRAM -->
			<td>64</td><!-- URAM -->
			<td>384</td><!-- DSP -->
			<td>6</td><!-- CMT -->
			<td></td><!-- ClockRegion -->
			<td>1 HP + 14 HD</td><!-- IO Banks -->
			<td>52 HP + 336 HD + 132 XP5</td><!-- User IO -->
			<td>8 GTH</td><!-- Transceiver -->
			<td>2 PCIE4CE</td><!-- PCIE -->
			<td>-</td><!-- 100GE MAC -->
			<td>-</td><!-- Interlaken -->
			<td>2x Memory Controller</td><!-- Other -->
			<td></td><!-- Notes -->
		</tr>
		<tr>
			<td>XCVU3P</td>
			<td>Virtex UltraScale+</td>
			<td>49260</td>
			<td>394080</td>
			<td>24660</td>
			<td>720</td>
			<td>320</td>
			<td>2280</td>
			<td>10</td>
			<td>30 (6×5)</td>
			<td>10 HP</td>
			<td>520 HP</td>
			<td>40 GTY</td>
			<td>2 PCIE4</td>
			<td>3</td>
			<td>3</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCVU5P</td>
			<td>Virtex UltraScale+</td>
			<td>75072.125*</td>
			<td>600577*</td>
			<td></td>
			<td>1024*</td>
			<td>470*</td>
			<td>3474*</td>
			<td>20</td>
			<td>60 (6×10)</td>
			<td>20 HP</td>
			<td>832 HP</td>
			<td>80 GTY</td>
			<td>4 PCIE4</td>
			<td>4*</td>
			<td>4*</td>
			<td>-</td>
			<td>software limited version of XCVU7P
		</tr>
		<tr>
			<td>XCVU7P</td>
			<td>Virtex UltraScale+</td>
			<td>98520</td>
			<td>788160</td>
			<td>49320</td>
			<td>1440</td>
			<td>640</td>
			<td>4560</td>
			<td>20</td>
			<td>60 (6×10)</td>
			<td>20 HP</td>
			<td>832 HP</td>
			<td>80 GTY</td>
			<td>4 PCIE4</td>
			<td>6</td>
			<td>6</td>
			<td>-</td>
			<td>a multi-die FPGA made of two XCVU3P FPGAs
		</tr>
		<tr>
			<td>XCVU9P, XCU200</td>
			<td>Virtex UltraScale+</td>
			<td>147780</td>
			<td>1182240</td>
			<td>75120</td>
			<td>2160</td>
			<td>960</td>
			<td>6840</td>
			<td>30</td>
			<td>90 (6×15)</td>
			<td>30 HP</td>
			<td>832 HP</td>
			<td>120 GTY</td>
			<td>6 PCIE4</td>
			<td>9</td>
			<td>9</td>
			<td>-</td>
			<td>a multi-die FPGA made of three XCVU3P FPGAs;
				<p>XCU200 is the designation of the FPGA used on the Alveo U200 board, which is
					rebadged XCVU9P
				</p>
		</tr>
		<tr>
			<td>XCVU11P</td>
			<td>Virtex UltraScale+</td>
			<td>162000</td>
			<td>1296000</td>
			<td>74160</td>
			<td>2016</td>
			<td>960</td>
			<td>9216</td>
			<td>12</td>
			<td>96 (8×12)</td>
			<td>12 HP</td>
			<td>624 HP</td>
			<td>96 GTY</td>
			<td>3 PCIE4</td>
			<td>9</td>
			<td>6</td>
			<td>-</td>
			<td>a multi-die FPGA made of three die
		</tr>
		<tr>
			<td>XCVU13P, XCU250</td>
			<td>Virtex UltraScale+</td>
			<td>216000</td>
			<td>1728000</td>
			<td>98880</td>
			<td>2688</td>
			<td>1280</td>
			<td>12288</td>
			<td>16</td>
			<td>128 (8×16)</td>
			<td>16 HP</td>
			<td>832 HP</td>
			<td>128 GTY</td>
			<td>4 PCIE4</td>
			<td>12</td>
			<td>8</td>
			<td>-</td>
			<td>a multi-die FPGA made of four die (same base die as XCVU11P); XCU250 is the
				designation of the FPGA used on the Alveo U250 board, which is rebadged XCVU13P
		</tr>
		<tr>
			<td>XCVU19P</td>
			<td>Virtex UltraScale+</td>
			<td>510720</td>
			<td>4085760</td>
			<td>119520</td>
			<td>2160</td>
			<td>320</td>
			<td>3840</td>
			<td>40</td>
			<td>180 (9×20)</td>
			<td>40 HP + 4 HD</td>
			<td>1976 HP + 96 HD</td>
			<td>80 GTY</td>
			<td>8 PCIE4C</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>a multi-die FPGA made of four die
		</tr>
		<tr>
			<td>XCVU23P, XCU26</td>
			<td>Virtex UltraScale+</td>
			<td>128700</td>
			<td>1029600</td>
			<td>29040</td>
			<td>2112</td>
			<td>352</td>
			<td>1320</td>
			<td>11</td>
			<td>55 (5×11)</td>
			<td>11 HP + 3 HD</td>
			<td>572 HP + 72 HD</td>
			<td>34 GTY + 4 GTM</td>
			<td>4 PCIE4C</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>XCU26 is the designation of the FPGA used on the Alveo SN1022 SmartNIC board, which
				is a rebadged XCVU23P
		</tr>
		<tr>
			<td>XCVU27P</td>
			<td>Virtex UltraScale+</td>
			<td>162000*</td>
			<td>1296000*</td>
			<td>74160*</td>
			<td>2016*</td>
			<td>960*</td>
			<td>9216*</td>
			<td>16</td>
			<td>128 (8×16)</td>
			<td>16 HP</td>
			<td>676 HP</td>
			<td>32 GTY + 48 GTM</td>
			<td>1 PCIE4</td>
			<td>15</td>
			<td>8</td>
			<td>-</td>
			<td>software-limitted version of XCVU29P
		</tr>
		<tr>
			<td>XCVU29P</td>
			<td>Virtex UltraScale+</td>
			<td>216000</td>
			<td>1728000</td>
			<td>98880</td>
			<td>2688</td>
			<td>1280</td>
			<td>12288</td>
			<td>16</td>
			<td>128 (8×16)</td>
			<td>16 HP</td>
			<td>676 HP</td>
			<td>32 GTY + 48 GTM</td>
			<td>1 PCIE4</td>
			<td>15</td>
			<td>8</td>
			<td>-</td>
			<td>a multi-die FPGA made of four die; one die is identical to the one used in XCVU11P,
				the other three contain the GTM transceivers
		</tr>
		<tr>
			<td>XCVU31P</td>
			<td>Virtex UltraScale+ HBM</td>
			<td>54960</td>
			<td>439680</td>
			<td>25680</td>
			<td>672</td>
			<td>320</td>
			<td>2880</td>
			<td>4</td>
			<td>32 (8×4)</td>
			<td>4 HP</td>
			<td>208 HP</td>
			<td>32 GTY</td>
			<td>4 PCIE4C</td>
			<td>2</td>
			<td>-</td>
			<td>HBM memory controller + 4GB HBM memory stack</td>
			<td>same die as XCVU33P, but with less HBM memory
		</tr>
		<tr>
			<td>XCVU33P</td>
			<td>Virtex UltraScale+ HBM</td>
			<td>54960</td>
			<td>439680</td>
			<td>25680</td>
			<td>672</td>
			<td>320</td>
			<td>2880</td>
			<td>4</td>
			<td>32 (8×4)</td>
			<td>4 HP</td>
			<td>208 HP</td>
			<td>32 GTY</td>
			<td>4 PCIE4C</td>
			<td>2</td>
			<td>-</td>
			<td>2 HBM memory controllers + 2×4GB HBM memory stacks</td>
			<td>
		</tr>
		<tr>
			<td>XCVU35P, XCU50</td>
			<td>Virtex UltraScale+ HBM</td>
			<td>108960</td>
			<td>871680</td>
			<td>50400</td>
			<td>1344</td>
			<td>640</td>
			<td>5952</td>
			<td>8</td>
			<td>64 (8×8)</td>
			<td>8 HP</td>
			<td>416 HP</td>
			<td>64 GTY</td>
			<td>1 PCIE4 + 4 PCIE4C</td>
			<td>5</td>
			<td>2</td>
			<td>2 HBM memory controllers + 2×4GB HBM memory stacks</td>
			<td>a multi-die FPGA made of XCVU33P + one XCVU11P die; XCU50 is the designation of the
				FPGA used on the Alveo U50 board, which is rebadged XCVU35P
		</tr>
		<tr>
			<td>XCVU37P, XCU280,
				<p>XCU55C
				</p></td>
			<td>Virtex UltraScale+ HBM</td>
			<td>162960</td>
			<td>1303680</td>
			<td>75120</td>
			<td>2016</td>
			<td>960</td>
			<td>9024</td>
			<td>12</td>
			<td>96 (8×12)</td>
			<td>12 HP</td>
			<td>624 HP</td>
			<td>96 GTY</td>
			<td>2 PCIE4 + 4 PCIE4C</td>
			<td>8</td>
			<td>4</td>
			<td>2 HBM memory controllers + 2×4GB HBM memory stacks</td>
			<td>a multi-die FPGA made of XCVU33P + two XCVU11P die; XCU280 and XCU55C are the
				designations of the FPGAs used on the Alveo U280 and Alveo U55C boards,
				respectively, which are rebadged XCVU37P
		</tr>
		<tr>
			<td>XCVU45P</td>
			<td>Virtex UltraScale+ HBM</td>
			<td>108960</td>
			<td>871680</td>
			<td>50400</td>
			<td>1344</td>
			<td>640</td>
			<td>5952</td>
			<td>8</td>
			<td>64 (8×8)</td>
			<td>8 HP</td>
			<td>416 HP</td>
			<td>64 GTY</td>
			<td>1 PCIE4 + 4 PCIE4C</td>
			<td>5</td>
			<td>2</td>
			<td>2 HBM memory controllers + 2×8GB HBM memory stacks</td>
			<td>same as XCVU35P, but with more HBM memory
		</tr>
		<tr>
			<td>XCVU47P</td>
			<td>Virtex UltraScale+ HBM</td>
			<td>162960</td>
			<td>1303680</td>
			<td>75120</td>
			<td>2016</td>
			<td>960</td>
			<td>9024</td>
			<td>12</td>
			<td>96 (8×12)</td>
			<td>12 HP</td>
			<td>624 HP</td>
			<td>96 GTY</td>
			<td>2 PCIE4 + 4 PCIE4C</td>
			<td>8</td>
			<td>4</td>
			<td>2 HBM memory controllers + 2×8GB HBM memory stacks</td>
			<td>same as XCVU37P, but with more HBM memory
		</tr>
		<tr>
			<td>XCVU57P</td>
			<td>Virtex UltraScale+ HBM</td>
			<td>162960</td>
			<td>1303680</td>
			<td>75120</td>
			<td>2016</td>
			<td>960</td>
			<td>9024</td>
			<td>12</td>
			<td>96 (8×12)</td>
			<td>12 HP</td>
			<td>624 HP</td>
			<td>32 GTY + 32 GTM</td>
			<td>4 PCIE4C</td>
			<td>10</td>
			<td>4</td>
			<td>2 HBM memory controllers + 2×8GB HBM memory stacks</td>
			<td>same as XCVU47P, but with the XCVU11P die replaced with XCVU27P GTM-containing die
		</tr>
	</tbody>
</table>


## Zynq UltraScale+ Family
<table>
	<tbody>
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
		</tr>
		<tr>
			<td>XCZU1CG, XCZU1EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>4680</td>
			<td>37440</td>
			<td></td>
			<td>108</td>
			<td>-</td>
			<td>216</td>
			<td>3</td>
			<td>3 (1×3)</td>
			<td>3 HP + 1 HD</td>
			<td>156 HP + 24 HD</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>
		</tr>
		<tr>
			<td>XCZU2CG, XCZU2EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>5904*</td>
			<td>47232*</td>
			<td></td>
			<td>150*</td>
			<td>-</td>
			<td>240*</td>
			<td>3</td>
			<td>6 (2×3)</td>
			<td>3 HP + 4 HD</td>
			<td>156 HP + 96 HD</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>software-limitted XCZU3
		</tr>
		<tr>
			<td>XCZU3CG, XCZU3EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>8820</td>
			<td>70560</td>
			<td>3600</td>
			<td>216</td>
			<td>-</td>
			<td>360</td>
			<td>3</td>
			<td>6 (2×3)</td>
			<td>3 HP + 4 HD</td>
			<td>156 HP + 96 HD</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>
		</tr>
		<tr>
			<td>XCZU3TCG
				<p>XCZU3TEG
				</p></td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>9000</td>
			<td>72000</td>
			<td></td>
			<td>144</td>
			<td>48</td>
			<td>576</td>
			<td>1</td>
			<td></td>
			<td>1 HP + 3 HD</td>
			<td>52 HP + 72 HD</td>
			<td>8 GTH</td>
			<td>1 PCIE4C</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>not yet in production
		</tr>
		<tr>
			<td>XCZU4CG, XCZU4EG, XCZU4EV</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>10980*</td>
			<td>87840*</td>
			<td></td>
			<td>128*</td>
			<td>48*</td>
			<td>728*</td>
			<td>4</td>
			<td>12 (3×4)</td>
			<td>4 HP + 4 HD</td>
			<td>156 HP + 96 HD</td>
			<td>16 GTH</td>
			<td>2 PCIE4</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System, VCU</td>
			<td>software-limitted XCZU5
		</tr>
		<tr>
			<td>XCZU5CG, XCZU5EG, XCZU5EV, XCK26</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>14640</td>
			<td>117120</td>
			<td>7200</td>
			<td>144</td>
			<td>64</td>
			<td>1248</td>
			<td>4</td>
			<td>12 (3×4)</td>
			<td>4 HP + 4 HD</td>
			<td>156 HP + 96 HD</td>
			<td>16 GTH</td>
			<td>2 PCIE4</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System, VCU</td>
			<td>XCK26 is the designation of the device on the Kria K26 system on module, which is a
				rebadged XCZU5EV device
		</tr>
		<tr>
			<td>XCZU6CG, XCZU6EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>26825.5*</td>
			<td>214604*</td>
			<td></td>
			<td>714*</td>
			<td>-</td>
			<td>1973*</td>
			<td>4</td>
			<td>25 (4×7-3)</td>
			<td>4 HP + 5 HD</td>
			<td>208 HP + 120 HD</td>
			<td>24 GTH</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>software-limitted XCZU9
		</tr>
		<tr>
			<td>XCZU7CG, XCZU7EG, XCZU7EV, XCU30</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>28800</td>
			<td>230400</td>
			<td>12720</td>
			<td>312</td>
			<td>96</td>
			<td>1728</td>
			<td>8</td>
			<td>20 (4×6-4)</td>
			<td>8 HP + 4 HD</td>
			<td>416 HP + 48 HD</td>
			<td>24 GTH</td>
			<td>2 PCIE4</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System, VCU</td>
			<td>XCU30 is the designation of the devices on the Alveo U30 board, which are rebadged
				XCZU7EV devices
		</tr>
		<tr>
			<td>XCZU9CG, XCZU9EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>34260</td>
			<td>274080</td>
			<td>18000</td>
			<td>912</td>
			<td>-</td>
			<td>2520</td>
			<td>4</td>
			<td>25 (4×7-3)</td>
			<td>4 HP + 5 HD</td>
			<td>208 HP + 120 HD</td>
			<td>24 GTH</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>
		</tr>
		<tr>
			<td>XCZU11EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>37320</td>
			<td>298560</td>
			<td>18540</td>
			<td>600</td>
			<td>80</td>
			<td>2928</td>
			<td>8</td>
			<td>29 (4×8-3)</td>
			<td>8 HP + 4 HD</td>
			<td>416 HP + 96 HD</td>
			<td>32 GTH + 16 GTY</td>
			<td>4 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System</td>
			<td>
		</tr>
		<tr>
			<td>XCZU15EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>42660</td>
			<td>341280</td>
			<td>23040</td>
			<td>744</td>
			<td>112</td>
			<td>3528</td>
			<td>4</td>
			<td>25 (4×7-3)</td>
			<td>4 HP + 5 HD</td>
			<td>208 HP + 120 HD</td>
			<td>24 GTH</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>Processing System</td>
			<td>
		</tr>
		<tr>
			<td>XCZU17EG</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>52925.375*</td>
			<td>423403*</td>
			<td></td>
			<td>796*</td>
			<td>102*</td>
			<td>1590*</td>
			<td>11</td>
			<td>41 (4×11-3)</td>
			<td>11 HP + 4 HD</td>
			<td>572 HP + 96 HD</td>
			<td>44 GTH + 28 GTY</td>
			<td>4* PCIE4</td>
			<td>2*</td>
			<td>2*</td>
			<td>Processing System</td>
			<td>software-limitted XCZU19
		</tr>
		<tr>
			<td>XCZU19EG, XCU25</td>
			<td>Zynq UltraScale+ MPSoC</td>
			<td>65340</td>
			<td>522720</td>
			<td>20160</td>
			<td>984</td>
			<td>128</td>
			<td>1968</td>
			<td>11</td>
			<td>41 (4×11-3)</td>
			<td>11 HP + 4 HD</td>
			<td>572 HP + 96 HD</td>
			<td>44 GTH + 28 GTY</td>
			<td>5 PCIE4</td>
			<td>4</td>
			<td>4</td>
			<td>Processing System</td>
			<td>XCU25 is the designation of the device on the Alveo U25 board, which is a rebadged
				XCZU19EG device
		</tr>
		<tr>
			<td>XCZU21DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 1</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>208 HP + 72 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>8 SD-FEC cores
				</p></td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU25DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 1</td>
			<td>38761*</td>
			<td>310088*</td>
			<td>19561*</td>
			<td>792*</td>
			<td>48*</td>
			<td>3145*</td>
			<td>6</td>
			<td>33 (6×6-3)</td>
			<td>6 HP + 4 HD</td>
			<td>299 HP + 48 HD</td>
			<td>8 GTY</td>
			<td>1 PCIE4</td>
			<td>1</td>
			<td>1</td>
			<td>Processing System,
				<p>8×4GSPS RF-ADC, 8×6.5GSPS RF-DAC
				</p></td>
			<td>partial XCZU28DR die
		</tr>
		<tr>
			<td>XCZU27DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 1</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>299 HP + 48 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>8×4GSPS RF-ADC, 8×6.5GSPS RF-DAC
				</p></td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU28DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 1</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>299 HP + 48 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>8×4GSPS RF-ADC, 8×6.5GSPS RF-DAC,
				<p>8 SD-FEC cores
				</p></td>
			<td>
		</tr>
		<tr>
			<td>XCZU29DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 1</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>312 HP + 96 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>16×2GSPS RF-ADC, 16×6.5GSPS RF-DAC
				</p></td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU39DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 2</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>312 HP + 96 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>16×2.2GSPS RF-ADC, 16×6.5GSPS RF-DAC
				</p></td>
			<td>same die as XCZU28DR
		</tr>
		<tr>
			<td>XCZU42DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 3</td>
			<td>27960</td>
			<td>223680</td>
			<td>13740</td>
			<td>648</td>
			<td>160</td>
			<td>1872</td>
			<td>5</td>
			<td>22 (5x5-3)</td>
			<td>5 HP + 1 HD</td>
			<td>128 HP + 24 HD</td>
			<td>8 GTY</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>Processing System,
				<p>2×5GSPS RF-ADC,
				<p>8×2.5GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p></td>
			<td>same die as XCZU67DR
		</tr>
		<tr>
			<td>XCZU43DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 3</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>299 HP + 48 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4C</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>4×5GSPS RF-ADC,
				<p>4×10GSPS RF-DAC
				</p></td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU46DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 3</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>312 HP + 48 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4C</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>4×5GSPS RF-ADC,
				<p>8×2.5GSPS RF-ADC
				<p>12×10GSPS RF-DAC,
				<p>8 SD-FEC cores
				</p></td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU47DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 3</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>299 HP + 48 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4C</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>8×5GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p></td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU48DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 3</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>299 HP + 48 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4C</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>8×5GSPS RF-ADC,
				<p>8×10GSPS RF-DAC,
				<p>8 SD-FEC cores
				</p></td>
			<td>
		</tr>
		<tr>
			<td>XCZU49DR</td>
			<td>Zynq UltraScale+ RFSoC Gen 3</td>
			<td>53160</td>
			<td>425280</td>
			<td>26700</td>
			<td>1080</td>
			<td>80</td>
			<td>4272</td>
			<td>8</td>
			<td>45 (6×8-3)</td>
			<td>8 HP + 6 HD</td>
			<td>312 HP + 96 HD</td>
			<td>16 GTY</td>
			<td>2 PCIE4C</td>
			<td>2</td>
			<td>1</td>
			<td>Processing System,
				<p>16×2.5GSPS RF-ADC,
				<p>16×10GSPS RF-DAC
				</p></td>
			<td>same die as XCZU48DR
		</tr>
		<tr>
			<td>XCZU63DR</td>
			<td>Zynq UltraScale+ RFSoC DFE</td>
			<td>22500</td>
			<td>180000</td>
			<td>11250</td>
			<td>500</td>
			<td>130</td>
			<td>1200</td>
			<td>5</td>
			<td>22 (5x5-3)</td>
			<td>5 HP + 1 HD</td>
			<td>128 HP + 24 HD</td>
			<td>4 GTY</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>Processing System,
				<p>Digital Front End,
					4x2.95GSPS RF-ADC, 
				<p> 2x5.9GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p></td>
			<td>
		</tr>
		<tr>
			<td>XCZU64DR</td>
			<td>Zynq UltraScale+ RFSoC DFE</td>
			<td>18750</td>
			<td>150000</td>
			<td>9375</td>
			<td>450</td>
			<td>80</td>
			<td>1872</td>
			<td>5</td>
			<td>22 (5x5-3)</td>
			<td>5 HP + 1 HD</td>
			<td>128 HP + 24 HD</td>
			<td>8 GTY</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>Processing System,
				<p>Digital Front End,
					8x2.95GSPS RF-ADC, 
				<p> 2x5.9GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p></td>
			<td>
		</tr>
		<tr>
			<td>XCZU65DR</td>
			<td>Zynq UltraScale+ RFSoCDFE</td>
			<td>27960</td>
			<td>223680</td>
			<td>13740</td>
			<td>648</td>
			<td>160</td>
			<td>1872</td>
			<td>5</td>
			<td>22 (5x5-3)</td>
			<td>5 HP + 1 HD</td>
			<td>128 HP + 24 HD</td>
			<td>8 GTY</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>Processing System,
				<p>Digital Front End,
				<p>6×5.9GSPS RF-ADC,
				<p>6×10GSPS RF-DAC
				</p></td>
			<td>same die as XCZU67DR
		</tr>
		<tr>
			<td>XCZU67DR</td>
			<td>Zynq UltraScale+ RFSoC</td>
			<td>27960</td>
			<td>223680</td>
			<td>13740</td>
			<td>648</td>
			<td>160</td>
			<td>1872</td>
			<td>5</td>
			<td>22 (5x5-3)</td>
			<td>5 HP + 1 HD</td>
			<td>128 HP + 24 HD</td>
			<td>8 GTY</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>Processing System,
				<p>Digital Front End,
					2×5.9GSPS RF-ADC,
				<p>8×2.95GSPS RF-ADC,
				<p>8×10GSPS RF-DAC
				</p></td>
			<td>
	<tfoot>
</table>

Note: the clock region grid is irregular on some UltraScale+ devices because of a hole in bottom for the Processing
System (and possibly the VCU).
