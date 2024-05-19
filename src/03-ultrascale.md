# UltraScale

The UltraScale devices are made of:[\[75\]](#cite_note-75)

* CLBs (configurable logic blocks), which are a modified version of the 7 Series CLB:
* every CLB now contains exactly one SLICE, which can be a SLICEM or a SLICEL
* every SLICE now contains 8 6-input LUTs, 16 flip-flops, a carry chain, and 3-level tree of wide LUT multiplexers,
making it roughly equivalent to two 7 Series SLICEs (and retaining the rough logic capacity of a single CLB)
* because of the higher wide LUT multiplexer tree, the LUTs within a SLICE can now be combined up to a single 9-input
LUT
* the available distributed RAM combinations within a SLICEM are now:
* 32×16, 64×8, 128×4, 256×2, 512×1 single port RAM
* 32×8, 64×4, 128×2, 256×1 dual port RAM
* 32×4, 64×2, 128×1 quad port RAM
* 32×2, 64×1 octal port RAM
* 32×14, 64×7 simple dual port RAM
* 36kbit splittable true dual block RAMs, with some minor upgrades compared to 7 Series
* DSP48E2 blocks, with some minor upgrades compared to 7 Series DSP48E1 blocks
* I/O banks with CMTs: with major changes from 7 Series[\[76\]](#cite_note-76)
* banks still come in HR and HP kinds
* each bank has 52 I/O pins: 24 differential pairs, and 4 unpaired pins
* the bank is split into 4 byte groups, each made of 6 differential pairs and one unpaired pin
* each byte group is further split into a lower nibble (with 3 differential pairs) and upper nibble (with 3 differential
pairs and one unpaired pin)
* the ISERDES/OSERDES blocks are replaced with BITSLICE blocks; there is one TX BITSLICE and one RX bitslice for every
pin, plus an additional TX bitslice for every nibble that can control the tristate signal for all pins in a nibble
* each bank has a CMT, with one MMCM and two PLLs
* added [MIPI](https://en.wikipedia.org/wiki/MIPI_Alliance "MIPI Alliance")
[D-PHY](https://en.wikipedia.org/w/index.php?title=D-PHY&action=edit&redlink=1 "D-PHY (page does not exist)") support
* much more complex, distributed global clock network split into clock regions
* system monitors, which is once again a renamed version of 7 Series XADC. There is one system monitor per FPGA die (ie.
multi-die FPGAs have multiple system monitors).
* Miscellaneous configuration logic
* GTH multi-gigabit transceivers with speed up to 16.3 Gb/s and parallel width of 16, 32, or 64 bits (20, 40, or 80 bits
in 8b/10b bypass mode)
* (on some devices) GTY multi-gigabit transceivers with speed up to 30.5 Gb/s and parallel width of 16, 32, 64, or 128
bits (20, 40, 80, or 160 bits in 8b/10b bypass mode)
* embedded PCI Express cores capable of Gen3 ×8 operation
* (on some devices) [100 Gigabit Ethernet](https://en.wikipedia.org/wiki/100_Gigabit_Ethernet "100 Gigabit Ethernet")
MAC
* (on some devices) embedded [Interlaken](https://en.wikipedia.org/wiki/Interlaken_(networking) "Interlaken
(networking)") core

The UltraScale+ devices have a few differences:

* HR banks no longer exist, being replaced with a new kind of I/O banks: HD (High Density) banks, which are very
different to HR banks:
* 24 pins (12 differential pairs) per bank
* no CMT
* no SERDES or BITSLICE blocks; the only logic available is simple flip-flops or DDR registers
* upgraded MMCM and PLL
* upgraded GTH transceivers
* upgraded GTY transceivers with speed up to 32.75 Gb/s
* some devices have GTM transceivers with speed up to 58.0 Gb/s (using [PAM4](https://en.wikipedia.org/wiki/PAM4 "PAM4")
encoding) and parallel width of 16, 32, 64, or 128 bits (20, 40, 80, or 160 bits in 8b/10b bypass mode)
* new PCI Express cores:
* PCIE4 core capable of Gen3 ×16 or Gen4 ×8 operation
* PCIE4C core, additionally capable of CCIX protocol
* some devices have new UltraRAM blocks, which are true dual port 288kbit RAMs, in 4096×72 configuration

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
			<td>XCKU025</td>
			<td>Kintex UltraScale</td>
			<td>18180</td>
			<td>145440</td>
			<td>8460</td>
			<td>360</td>
			<td>-</td>
			<td>1152</td>
			<td>6</td>
			<td>12 (4×3)</td>
			<td>2 HR + 4 HP</td>
			<td>104 HR + 208 HP</td>
			<td>12 GTH</td>
			<td>1</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>cut (partial) version of XCKU040
		</tr>
		<tr>
			<td>XCKU035</td>
			<td>Kintex UltraScale</td>
			<td>25391*</td>
			<td>203128*</td>
			<td></td>
			<td>540*</td>
			<td>-</td>
			<td>1700*</td>
			<td>10</td>
			<td>20 (4×5)</td>
			<td>2 HR + 8 HP</td>
			<td>104 HR + 416 HP</td>
			<td>16 GTH</td>
			<td>2*</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCKU040
		</tr>
		<tr>
			<td>XCKU040</td>
			<td>Kintex UltraScale</td>
			<td>30300</td>
			<td>242400</td>
			<td>14100</td>
			<td>600</td>
			<td>-</td>
			<td>1920</td>
			<td>10</td>
			<td>20 (4×5)</td>
			<td>2 HR + 8 HP</td>
			<td>104 HR + 416 HP</td>
			<td>20 GTH</td>
			<td>3</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCKU060</td>
			<td>Kintex UltraScale</td>
			<td>41460</td>
			<td>331680</td>
			<td>18360</td>
			<td>1080</td>
			<td>-</td>
			<td>2760</td>
			<td>12</td>
			<td>30 (6×5)</td>
			<td>2 HR + 10 HP</td>
			<td>104 HR + 520 HP</td>
			<td>32 GTH</td>
			<td>3</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCKU085</td>
			<td>Kintex UltraScale</td>
			<td>62190*</td>
			<td>497520*</td>
			<td></td>
			<td>1620*</td>
			<td>-</td>
			<td>4100*</td>
			<td>22</td>
			<td>54 (6×9)</td>
			<td>4 HR + 18 HP</td>
			<td>104 HR + 572 HP</td>
			<td>56 GTH</td>
			<td>4*</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XCKU115 with one partial die
		</tr>
		<tr>
			<td>XCKU095</td>
			<td>Kintex UltraScale</td>
			<td>67200</td>
			<td>537600</td>
			<td>9600</td>
			<td>1680*</td>
			<td>-</td>
			<td>768</td>
			<td>16</td>
			<td>40 (5×8)</td>
			<td>1 HR + 15 HP</td>
			<td>52 HR + 650 HP</td>
			<td>32 GTH + 32 GTY</td>
			<td>4</td>
			<td>2*</td>
			<td>2*</td>
			<td>-</td>
			<td>software-limitted version of XCVU095
		</tr>
		<tr>
			<td>XCKU115</td>
			<td>Kintex UltraScale</td>
			<td>82920</td>
			<td>663360</td>
			<td>36720</td>
			<td>2160</td>
			<td>-</td>
			<td>5520</td>
			<td>24</td>
			<td>60 (6×10)</td>
			<td>4 HR + 20 HP</td>
			<td>156 HR + 676 HP</td>
			<td>64 GTH</td>
			<td>6</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>a multi-die FPGA made of two XCKU060
		</tr>
		<tr>
			<td>XCVU065</td>
			<td>Virtex UltraScale</td>
			<td>44760</td>
			<td>358080</td>
			<td>9660</td>
			<td>1260</td>
			<td>-</td>
			<td>600</td>
			<td>10</td>
			<td>30 (6×5)</td>
			<td>1 HR + 9 HP</td>
			<td>52 HR + 468 HP</td>
			<td>20 GTH + 20 GTY</td>
			<td>2</td>
			<td>3</td>
			<td>3</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCVU080</td>
			<td>Virtex UltraScale</td>
			<td>55714*</td>
			<td>445712*</td>
			<td></td>
			<td>1421*</td>
			<td>-</td>
			<td>672*</td>
			<td>16</td>
			<td>40 (5×8)</td>
			<td>1 HR + 15 HP</td>
			<td>52 HR + 780 HP</td>
			<td>32 GTH + 32 GTY</td>
			<td>4</td>
			<td>4</td>
			<td>6</td>
			<td>-</td>
			<td>software-limitted version of XCVU095
		</tr>
		<tr>
			<td>XCVU095</td>
			<td>Virtex UltraScale</td>
			<td>67200</td>
			<td>537600</td>
			<td>9600</td>
			<td>1728</td>
			<td>-</td>
			<td>768</td>
			<td>16</td>
			<td>40 (5×8)</td>
			<td>1 HR + 15 HP</td>
			<td>52 HR + 780 HP</td>
			<td>32 GTH + 32 GTY</td>
			<td>4</td>
			<td>4</td>
			<td>6</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XCVU125</td>
			<td>Virtex UltraScale</td>
			<td>89520</td>
			<td>716160</td>
			<td>19320</td>
			<td>2520</td>
			<td>-</td>
			<td>1200</td>
			<td>20</td>
			<td>60 (6×10)</td>
			<td>2 HR + 18 HP</td>
			<td>104 HR + 780 HP</td>
			<td>40 GTH + 40 GTY</td>
			<td>4</td>
			<td>6</td>
			<td>6</td>
			<td>-</td>
			<td>a multi-die FPGA made of two XCVU065
		</tr>
		<tr>
			<td>XCVU160</td>
			<td>Virtex UltraScale</td>
			<td>115800*</td>
			<td>926400*</td>
			<td></td>
			<td>3276*</td>
			<td>-</td>
			<td>1560*</td>
			<td>28</td>
			<td>84 (6×14)</td>
			<td>2 HR + 26 HP</td>
			<td>52 HR + 650 HP</td>
			<td>52 GTH + 52 GTY</td>
			<td>4*</td>
			<td>9</td>
			<td>8</td>
			<td>-</td>
			<td>software-limitted version of XCVU190 with one partial die
		</tr>
		<tr>
			<td>XCVU190</td>
			<td>Virtex UltraScale</td>
			<td>134280</td>
			<td>1074240</td>
			<td>28980</td>
			<td>3780</td>
			<td>-</td>
			<td>1800</td>
			<td>30</td>
			<td>90 (6×15)</td>
			<td>3 HR + 27 HP</td>
			<td>52 HR + 650 HP</td>
			<td>60 GTH + 60 GTY</td>
			<td>6</td>
			<td>9</td>
			<td>9</td>
			<td>-</td>
			<td>a multi-die FPGA made of three XCVU065
		</tr>
		<tr>
			<td>XCVU440</td>
			<td>Virtex UltraScale</td>
			<td>316620</td>
			<td>2532960</td>
			<td>57420</td>
			<td>2520</td>
			<td>-</td>
			<td>2880</td>
			<td>30</td>
			<td>135 (9×15)</td>
			<td>3 HR + 27 HP</td>
			<td>52 HR + 1404 HP</td>
			<td>48 GTH</td>
			<td>6</td>
			<td>3</td>
			<td>-</td>
			<td>-</td>
			<td>a multi-die FPGA made of three dedicated die
		</tr>
	<tfoot>
</table>
