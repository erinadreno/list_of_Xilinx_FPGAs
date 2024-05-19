# Early FPGA devices

## XC2000

The XC2000 devices have the following user-programmable blocks[\[25\]](#cite_note-25)

* CLBs (Configurable Logic Blocks): each CLB consists of two 3-input LUTs, a hard multiplexer combining LUT outputs
(which can be used to combine them to a single 4-input LUT, among other things) and one
[flip-flop](https://en.wikipedia.org/wiki/Flip-flop_(electronics) "Flip-flop (electronics)") (with asynchronous set and
reset capabilities)
* User I/O blocks: each user I/O pin is associated with an I/O block, which consists of an input buffer, an input
flip-flop, and a tri-state output buffer
* One crystal oscillator amplifier
* Two global clock buffers
<table>
	<tbody>
		<tr>
			<th>Model</th>
			<th>CLBs</th>
			<th>User I/O (max)
		</tr>
		<tr>
			<td>XC2064, XC2064L</td>
			<td>64 (8×8)</td>
			<td>58
		</tr>
		<tr>
			<td>XC2018, XC2018L</td>
			<td>100 (10×10)</td>
			<td>74
</table>

Note: the available user I/O amount varies with chip packaging.

## XC3000

The XC3000 devices have the following user-programmable blocks[\[26\]](#cite_note-26)

* CLBs (Configurable Logic Blocks): each CLB consists of two 4-input LUTs, a hard multiplexer combining LUT outputs
(which can be used to combine them to a single 5-input LUT, among other things) and two flip-flops (with asynchronous
set or reset capabilities)
* User I/O blocks: each user I/O pin is associated with an I/O block, which consists of an input buffer, an input
flip-flop, a tri-state output buffer, and an output flip-flop
* Intra-FPGA tri-state buses, with tri-state buffers
* One crystal oscillator amplifier
* Two global clock buffers
<table>
	<tbody>
		<tr>
			<th>Model</th>
			<th>CLBs</th>
			<th>User I/O (max)</th>
			<th>Tri-state buses</th>
			<th>Tri-state buffers per bus
		</tr>
		<tr>
			<td>XC3020, XC3020A, XC3020L, XC3120, XC3120A</td>
			<td>64 (8×8)</td>
			<td>64</td>
			<td>16</td>
			<td>9
		</tr>
		<tr>
			<td>XC3030, XC3030A, XC3030L, XC3130, XC3130A</td>
			<td>100 (10×10)</td>
			<td>80</td>
			<td>20</td>
			<td>11
		</tr>
		<tr>
			<td>XC3042, XC3042A, XC3042L, XC3142, XC3142A, XC3142L</td>
			<td>144 (12×12)</td>
			<td>96</td>
			<td>24</td>
			<td>13
		</tr>
		<tr>
			<td>XC3064, XC3064A, XC3064L, XC3164, XC3164A</td>
			<td>224 (16×14)</td>
			<td>120</td>
			<td>32</td>
			<td>15
		</tr>
		<tr>
			<td>XC3090, XC3090A, XC3090L, XC3190, XC3190A, XC3190L</td>
			<td>320 (16×20)</td>
			<td>144</td>
			<td>40</td>
			<td>17
		</tr>
		<tr>
			<td>XC3195, XC3195A</td>
			<td>484 (22×22)</td>
			<td>176</td>
			<td>44</td>
			<td>23
</table>

Note: the available user I/O amount varies with chip packaging.

## XC4000, Spartan

The XC4000 and Spartan devices have the following user-programmable
blocks[\[27\]](#cite_note-27)[\[28\]](#cite_note-28)[\[29\]](#cite_note-29)[\[30\]](#cite_note-30)

* CLBs (Configurable Logic Blocks), each CLB containing:
* two 4-input LUTs (F and G), which can be used as distributed RAM in 16×2 bit or 32×1 bit configurations (except on
XC4000D devices)
* a 3-input LUT (H) that can combine F and G outputs (for example, to implement a 5-input LUT)
* two flip-flops (with clock enable and asynchronous set or reset)
* carry chain logic
* User I/O blocks, one for each user I/O pin:
* input buffer
* tri-state output buffer
* programmable [pull-up](https://en.wikipedia.org/wiki/Pull-up_resistor "Pull-up resistor") or pull-down
* input flip-flop (except on XC4000H devices)
* output flip-flop (except on XC4000H devices)
* optional delay element
* fast capture latch (on some devices)
* output multiplexer (on some devices)
* Edge decoders (essentially wide AND gates)
* Intra-FPGA tri-state buses, with tri-state buffers
* Global clock buffers
* Miscellaneous configuration logic (startup and readback control, boundary scan logic allowing custom user
[JTAG](https://en.wikipedia.org/wiki/JTAG "JTAG") opcodes)

<table>
	<caption>XC4000 family feature comparison
	</caption>
	<tbody>
		<tr>
			<th>Family</th>
			<th>Distributed RAM</th>
			<th>H-LUT inputs</th>
			<th>CLB flip-flop capabilities</th>
			<th>IOB capabilities</th>
			<th>Clock buffers
		</tr>
		<tr>
			<td>XC4000, XC4000A</td>
			<td rowspan=2>asynchronous</td>
			<td rowspan=3>1×F, 1×G, 1×general routing</td>
			<td rowspan=4>Flip-flop</td>
			<td>input and output flip-flops</td>
			<td rowspan=4>4 primary + 4 secondary global buffers
		</tr>
		<tr>
			<td>XC4000H</td>
			<td>no flip-flops
		</tr>
		<tr>
			<td>XC4000D</td>
			<td>none</td>
			<td>input and output flip-flops
		</tr>
		<tr>
			<td>XC4000E, XC4000L, Spartan</td>
			<td rowspan=3>synchronous or asynchronous write, asynchronous read</td>
			<td rowspan=3>3× any choice of F, G, general routing</td>
			<td>input and output flip-flops with clock enable
		</tr>
		<tr>
			<td>XC4000EX, XC4000XL, XC4000XLA, XC4000XV</td>
			<td rowspan=2>Flip-flop or latch</td>
			<td rowspan=2>input and output flip-flops with clock enable, fast capture latch, output
				multiplexer</td>
			<td>8 global buffers, 8 global low-skew buffers, 8 early clock buffers, 8 fast buffers
		</tr>
		<tr>
			<td>Spartan XL</td>
			<td>8 global low-skew buffers
</table>

<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)
	<tbody>
		<tr>
			<td>XC4002A</td>
			<td>XC4000A</td>
			<td>64 (8×8)</td>
			<td>64
		</tr>
		<tr>
			<td>XC4002XL</td>
			<td>XC4000XL</td>
			<td>64 (8×8)</td>
			<td>64
		</tr>
		<tr>
			<td>XC4003</td>
			<td>XC4000</td>
			<td>100 (10×10)</td>
			<td>80
		</tr>
		<tr>
			<td>XC4003A</td>
			<td>XC4000A</td>
			<td>100 (10×10)</td>
			<td>80
		</tr>
		<tr>
			<td>XC4003H</td>
			<td>XC4000H</td>
			<td>100 (10×10)</td>
			<td>160
		</tr>
		<tr>
			<td>XC4003E</td>
			<td>XC4000E</td>
			<td>100 (10×10)</td>
			<td>80
		</tr>
		<tr>
			<td>XCS05</td>
			<td>Spartan</td>
			<td>100 (10×10)</td>
			<td>77
		</tr>
		<tr>
			<td>XCS05XL</td>
			<td>Spartan XL</td>
			<td>100 (10×10)</td>
			<td>77
		</tr>
		<tr>
			<td>XC4004A</td>
			<td>XC4000A</td>
			<td>144 (12×12)</td>
			<td>96
		</tr>
		<tr>
			<td>XC4005</td>
			<td>XC4000</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005A</td>
			<td>XC4000A</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005H</td>
			<td>XC4000H</td>
			<td>196 (14×14)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4005E</td>
			<td>XC4000E</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005L</td>
			<td>XC4000L</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XC4005XL</td>
			<td>XC4000XL</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XCS10</td>
			<td>Spartan</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XCS10XL</td>
			<td>Spartan XL</td>
			<td>196 (14×14)</td>
			<td>112
		</tr>
		<tr>
			<td>XC4006</td>
			<td>XC4000</td>
			<td>256 (16×16)</td>
			<td>128
		</tr>
		<tr>
			<td>XC4006E</td>
			<td>XC4000E</td>
			<td>256 (16×16)</td>
			<td>128
		</tr>
		<tr>
			<td>XC4008</td>
			<td>XC4000</td>
			<td>324 (18×18)</td>
			<td>144
		</tr>
		<tr>
			<td>XC4008E</td>
			<td>XC4000E</td>
			<td>324 (18×18)</td>
			<td>144
		</tr>
		<tr>
			<td>XC4010</td>
			<td>XC4000</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010D</td>
			<td>XC4000D</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010E</td>
			<td>XC4000E</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010L</td>
			<td>XC4000L</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XC4010XL</td>
			<td>XC4000XL</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XCS20</td>
			<td>Spartan</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XCS20XL</td>
			<td>Spartan XL</td>
			<td>400 (20×20)</td>
			<td>160
		</tr>
		<tr>
			<td>XC4013</td>
			<td>XC4000</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013D</td>
			<td>XC4000D</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013E</td>
			<td>XC4000E</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013L</td>
			<td>XC4000L</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013XL</td>
			<td>XC4000XL</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4013XLA</td>
			<td>XC4000XLA</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XCS30</td>
			<td>Spartan</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XCS30XL</td>
			<td>Spartan XL</td>
			<td>576 (24×24)</td>
			<td>192
		</tr>
		<tr>
			<td>XC4020E</td>
			<td>XC4000E</td>
			<td>784 (28×28)</td>
			<td>224
		</tr>
		<tr>
			<td>XC4020XL</td>
			<td>XC4000XL</td>
			<td>784 (28×28)</td>
			<td>224
		</tr>
		<tr>
			<td>XC4020XLA</td>
			<td>XC4000XLA</td>
			<td>784 (28×28)</td>
			<td>224
		</tr>
		<tr>
			<td>XCS40</td>
			<td>Spartan</td>
			<td>784 (28×28)</td>
			<td>205
		</tr>
		<tr>
			<td>XCS40XL</td>
			<td>Spartan XL</td>
			<td>784 (28×28)</td>
			<td>205
		</tr>
		<tr>
			<td>XC4025E</td>
			<td>XC4000E</td>
			<td>1024 (32×32)</td>
			<td>256
		</tr>
		<tr>
			<td>XC4028EX</td>
			<td>XC4000EX</td>
			<td>1024 (32×32)</td>
			<td>256
		</tr>
		<tr>
			<td>XC4028XL</td>
			<td>XC4000XL</td>
			<td>1024 (32×32)</td>
			<td>256
		</tr>
		<tr>
			<td>XC4028XLA</td>
			<td>XC4000XLA</td>
			<td>1024 (32×32)</td>
			<td>256
		</tr>
		<tr>
			<td>XC4036EX</td>
			<td>XC4000EX</td>
			<td>1296 (36×36)</td>
			<td>288
		</tr>
		<tr>
			<td>XC4036XL</td>
			<td>XC4000XL</td>
			<td>1296 (36×36)</td>
			<td>288
		</tr>
		<tr>
			<td>XC4036XLA</td>
			<td>XC4000XLA</td>
			<td>1296 (36×36)</td>
			<td>288
		</tr>
		<tr>
			<td>XC4044XL</td>
			<td>XC4000XL</td>
			<td>1600 (40×40)</td>
			<td>320
		</tr>
		<tr>
			<td>XC4044XLA</td>
			<td>XC4000XLA</td>
			<td>1600 (40×40)</td>
			<td>320
		</tr>
		<tr>
			<td>XC4052XL</td>
			<td>XC4000XL</td>
			<td>1936 (44×44)</td>
			<td>352
		</tr>
		<tr>
			<td>XC4052XLA</td>
			<td>XC4000XLA</td>
			<td>1936 (44×44)</td>
			<td>352
		</tr>
		<tr>
			<td>XC4062XL</td>
			<td>XC4000XL</td>
			<td>2304 (48×48)</td>
			<td>384
		</tr>
		<tr>
			<td>XC4062XLA</td>
			<td>XC4000XLA</td>
			<td>2304 (48×48)</td>
			<td>384
		</tr>
		<tr>
			<td>XC4085XL</td>
			<td>XC4000XL</td>
			<td>3136 (56×56)</td>
			<td>448
		</tr>
		<tr>
			<td>XC4085XLA</td>
			<td>XC4000XLA</td>
			<td>3136 (56×56)</td>
			<td>448
		</tr>
		<tr>
			<td>XC40110XV</td>
			<td>XC4000XV</td>
			<td>4096 (64×64)</td>
			<td>448
		</tr>
		<tr>
			<td>XC40150XV</td>
			<td>XC4000XV</td>
			<td>5184 (72×72)</td>
			<td>448
		</tr>
		<tr>
			<td>XC40200XV</td>
			<td>XC4000XV</td>
			<td>7056 (84×84)</td>
			<td>448
		</tr>
		<tr>
			<td>XC40250XV</td>
			<td>XC4000XV</td>
			<td>8464 (92×92)</td>
			<td>448
	<tfoot>
</table>

Note: the available user I/O amount varies with chip packaging.

## XC5200

The XC5200 devices have the following user-programmable blocks[\[31\]](#cite_note-31)

* CLBs (Configurable Logic Blocks): each CLB consists of 4 LCs (logic cells). Each logic cell consists of one 4-input
LUT, a carry chain multiplexer, and one flip-flop (with clock enable and asynchronous reset). The CLB also has two
dedicated multiplexers that can combine outputs of adjacent LCs (which can be used, among other purposes, to effectively
combine the two 4-input LUTs into a 5-input LUT)
* User I/O blocks: each user I/O pin is associated with an I/O block, which consists of an input buffer and a tri-state
output buffer
* Intra-FPGA tri-state buses, with tri-state buffers
* One crystal oscillator amplifier
* Four global clock buffers, one in each corner
* Miscellaneous configuration logic (startup and readback control, boundary scan logic allowing custom user
[JTAG](https://en.wikipedia.org/wiki/JTAG "JTAG") opcodes)

<table>
	<tbody>
		<tr>
			<th>Model</th>
			<th>CLBs</th>
			<th>User I/O (max)
		</tr>
		<tr>
			<td>XC5202, XC5202L</td>
			<td>64 (10×10)</td>
			<td>84
		</tr>
		<tr>
			<td>XC5204</td>
			<td>120 (10×12)</td>
			<td>124
		</tr>
		<tr>
			<td>XC5206, XC5206L</td>
			<td>196 (14×14)</td>
			<td>148
		</tr>
		<tr>
			<td>XC5210</td>
			<td>324 (18×18)</td>
			<td>196
		</tr>
		<tr>
			<td>XC5216, XC5216L</td>
			<td>484 (22×22)</td>
			<td>244
</table>

Note: the available user I/O amount varies with chip packaging.

## XC6200

The XC6200 family is unusual in several ways[\[32\]](#cite_note-:8-32)

* as opposed to other early FPGAs where a design always takes up the whole device and is synthesized once, then usually
stored in flash storage, XC6200 is dynamically reconfigurable in arbitrarily small chunks (down to a single logic cell),
and is meant to be used along with an external CPU that can modify parts of design in real time
* the logic is not LUT based; instead, every logic cell consists of a [2-to-1
MUX](https://en.wikipedia.org/wiki/Multiplexer "Multiplexer") whose inputs can be inverted or tied to constants (to
implement arbitrary 2-input logic function) and a flip-flop
* the routing structure is fully documented, unusually simple, and hierarchical in nature, with the device made of 16×16
cell tiles and 4×4 cell blocks
* the configuration data format is likewise fully documented in the data sheet,[\[32\]](#cite_note-:8-32) allowing (and
encouraging) users to create logic designs without using vendor tools
* the part of configuration RAM that corresponds to unused area of circuit is explicitly allowed to be used for
unrelated data storage
<table>
	<tbody>
		<tr>
			<th>Model</th>
			<th>Logic cells</th>
			<th>IOBs</th>
			<th>Configuration RAM (bits)</th>
			<th>Notes
		</tr>
		<tr>
			<td>XC6209</td>
			<td>2304 (48×48)</td>
			<td>192</td>
			<td>36K</td>
			<td>listed as planned product, unclear if it ever reached production
		</tr>
		<tr>
			<td>XC6216</td>
			<td>4096 (64×64)</td>
			<td>256</td>
			<td>65K</td>
			<td>
		</tr>
		<tr>
			<td>XC6236</td>
			<td>9216 (96×96)</td>
			<td>384</td>
			<td>147K</td>
			<td>listed as planned product, unclear if it ever reached production
		</tr>
		<tr>
			<td>XC6264</td>
			<td>16384 (128×128)</td>
			<td>512</td>
			<td>262K</td>
			<td>listed as planned product, unclear if it ever reached production
</table>

## XC8100

The XC8100 family is unusual in several ways[\[32\]](#cite_note-:8-32)

* The configuration storage is made of one-time programmable
[antifuses](https://en.wikipedia.org/wiki/Antifuse#Antifuses_in_integrated_circuits "Antifuse"), as opposed to other
FPGAs (which use RAM cells and need to have configuration reuploaded upon power-up) and to CPLDs (which use non-volatile
but multiple time programmable [EPROM](https://en.wikipedia.org/wiki/EPROM
"EPROM")/[EEPROM](https://en.wikipedia.org/wiki/EEPROM "EEPROM")/[flash](https://en.wikipedia.org/wiki/Flash_memory
"Flash memory") storage).
* The logic is not LUT based; instead, the device is made of logic cells, which have 4 general inputs (+1 cascade
input), 1 general output (+1 cascade output) and can be configured as either an AND gate or a sum-of-products, whose
inputs can be inverted or tied to constants. This arrangement allows, as special cases, construction of a 2-input MUX or
a D latch within a single cell, or combining two cells configured as D latches to construct a D flip-flop.
<table>
	<tbody>
		<tr>
			<th>Model</th>
			<th>Logic cells</th>
			<th>User I/O (max)</th>
			<th>Notes
		</tr>
		<tr>
			<td>XC8100</td>
			<td>192 (24×8)</td>
			<td>32</td>
			<td>
		</tr>
		<tr>
			<td>XC8101</td>
			<td>384 (24×16)</td>
			<td>72</td>
			<td>
		</tr>
		<tr>
			<td>XC8103</td>
			<td>1024 (32×32)</td>
			<td>128</td>
			<td>
		</tr>
		<tr>
			<td>XC8106</td>
			<td>1728 (48×36)</td>
			<td>168</td>
			<td>
		</tr>
		<tr>
			<td>XC8109</td>
			<td>2688 (56×48)</td>
			<td>192</td>
			<td>
		</tr>
		<tr>
			<td>XC8112</td>
			<td>3744</td>
			<td>248</td>
			<td>planned product that never reached production
		</tr>
		<tr>
			<td>XC8116</td>
			<td>4800</td>
			<td>280</td>
			<td>planned product that never reached production
		</tr>
		<tr>
			<td>XC8120</td>
			<td>6144</td>
			<td>320</td>
			<td>planned product that never reached production
</table>

# Virtex, Spartan-II

The Virtex and Spartan-II devices are made of the following user-programmable blocks:

* CLBs (configurable logic blocks), each made of two mostly-independent SLICEs, where a SLICE contains:
* two 4-input LUTs, which can also be used as 16-bit distributed RAMs (which can be combined into 16×2 or 32×1
single-port or 16×1 dual port arrangements), or as 16-bit shift registers (which can be cascaded together to make longer
shift registers)
* carry chain logic consisting of two MUXCY+XORCY cell pairs, for construction of efficient ALUs or wide logic functions
* two MULT\_AND cells, to be combined with MUXCY+XORCY for construction of efficient multipliers
* two hard multiplexer cells (MUXF5 and MUXF6) that can combine the LUT outputs together, allowing for efficient
multiplexer tree construction or for construction of wider LUTs (5-input LUT out of two 4-input LUTs, or 6-input LUT out
of four 4-input LUTs)
* two flip-flops with clock enable and (configurable as synchronous or asynchronous) set and reset inputs; they can also
be used as latches
* Intra-FPGA tri-state buses with tri-state buffers (two buffers per CLB)
* 4kbit [true dual port](https://en.wikipedia.org/wiki/Dual-ported_RAM "Dual-ported RAM") block RAMs, which can be used
in 4096×1, 2048×2, 1024×4, 512×8, or 256×16 configurations
* IOBs (I/O blocks), one per user I/O pin, containing:
* several kinds of input buffer (selectable by user):
* plain CMOS input buffer
* differential input buffer using a VREF (voltage reference) pin for advanced I/O standards
* (Virtex-E and Spartan-IIE only) differential input buffer using a pair of I/O pins for differential I/O standards
(which has to be selected from a predefined list of pairs — each IOB has its associated other IOB that can be used to
construct a differential pair)
* tristate output buffer
* configurable pull-up, pull-down, or keeper circuit
* three flip-flops (for input, output, tristate enable), identical to the ones in CLBs
* the IOBs are grouped into 8 I/O banks (2 for each edge of the device), with each bank having a separate power supply,
allowing for usage of several I/O standards with conflicting voltage requirements in a single device
* DLLs ([delay-locked loops](https://en.wikipedia.org/wiki/Delay-locked_loop "Delay-locked loop")) that can be used to
phase-align, deskew, and phase-shift incoming clock signals
* 4 global clock buffers
* miscellaneous configuration logic (startup control, readback data capture, JTAG control)

The Virtex and Spartan-II devices are functionally identical to each other and differ only in available size range,
performance, and packaging options. The Spartan-IIE devices use the same die as the corresponding Virtex E devices, but
have some block RAM and DLLs disabled.
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				<p>(CLBs×4)
				</p></th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (4kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O differential pairs (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DLLs
	<tbody>
		<tr>
			<td>XC2S15</td>
			<td>Spartan-II<sup id=cite_ref-33 class=reference><a href=#cite_note-33>[33]</a></sup></td>
			<td>96 (12×8)</td>
			<td>384</td>
			<td>4</td>
			<td>86</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S30</td>
			<td>Spartan-II</td>
			<td>216 (18×12)</td>
			<td>864</td>
			<td>6</td>
			<td>92</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV50</td>
			<td>Virtex<sup id=cite_ref-34 class=reference><a href=#cite_note-34>[34]</a></sup></td>
			<td>384 (24×16)</td>
			<td>1536</td>
			<td>8</td>
			<td>180</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S50</td>
			<td>Spartan-II</td>
			<td>384 (24×16)</td>
			<td>1536</td>
			<td>8</td>
			<td>176</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV50E</td>
			<td>Virtex E<sup id=cite_ref-35 class=reference><a href=#cite_note-35>[35]</a></sup></td>
			<td>384 (24×16)</td>
			<td>1536</td>
			<td>16</td>
			<td>176</td>
			<td>83</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S50E</td>
			<td>Spartan-IIE<sup id=cite_ref-36 class=reference><a href=#cite_note-36>[36]</a></sup></td>
			<td>384 (24×16)</td>
			<td>1536</td>
			<td>8</td>
			<td>182</td>
			<td>83</td>
			<td>4
		</tr>
		<tr>
			<td>XCV100</td>
			<td>Virtex</td>
			<td>600 (30×20)</td>
			<td>2400</td>
			<td>10</td>
			<td>180</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S100</td>
			<td>Spartan-II</td>
			<td>600 (30×20)</td>
			<td>2400</td>
			<td>10</td>
			<td>176</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV100E</td>
			<td>Virtex E</td>
			<td>600 (30×20)</td>
			<td>2400</td>
			<td>20</td>
			<td>196</td>
			<td>83</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S100E</td>
			<td>Spartan-IIE</td>
			<td>600 (30×20)</td>
			<td>2400</td>
			<td>10</td>
			<td>202</td>
			<td>86</td>
			<td>4
		</tr>
		<tr>
			<td>XCV150</td>
			<td>Virtex</td>
			<td>864 (36×24)</td>
			<td>3456</td>
			<td>12</td>
			<td>260</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S150</td>
			<td>Spartan-II</td>
			<td>864 (36×24)</td>
			<td>3456</td>
			<td>12</td>
			<td>260</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S150E</td>
			<td>Spartan-IIE</td>
			<td>864 (36×24)</td>
			<td>3456</td>
			<td>12</td>
			<td>265</td>
			<td>114</td>
			<td>4
		</tr>
		<tr>
			<td>XCV200</td>
			<td>Virtex</td>
			<td>1176 (42×28)</td>
			<td>4704</td>
			<td>14</td>
			<td>284</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XC2S200</td>
			<td>Spartan-II</td>
			<td>1176 (42×28)</td>
			<td>4704</td>
			<td>14</td>
			<td>284</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV200E</td>
			<td>Virtex E</td>
			<td>1176 (42×28)</td>
			<td>4704</td>
			<td>28</td>
			<td>284</td>
			<td>119</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S200E</td>
			<td>Spartan-IIE</td>
			<td>1176 (42×28)</td>
			<td>4704</td>
			<td>14</td>
			<td>289</td>
			<td>120</td>
			<td>4
		</tr>
		<tr>
			<td>XCV300</td>
			<td>Virtex</td>
			<td>1536 (48×32)</td>
			<td>6144</td>
			<td>16</td>
			<td>316</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV300E</td>
			<td>Virtex E</td>
			<td>1536 (48×32)</td>
			<td>6144</td>
			<td>32</td>
			<td>316</td>
			<td>137</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S300E</td>
			<td>Spartan-IIE</td>
			<td>1536 (48×32)</td>
			<td>6144</td>
			<td>16</td>
			<td>329</td>
			<td>120</td>
			<td>4
		</tr>
		<tr>
			<td>XCV400</td>
			<td>Virtex</td>
			<td>2400 (60×40)</td>
			<td>9600</td>
			<td>20</td>
			<td>404</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV400E</td>
			<td>Virtex E</td>
			<td>2400 (60×40)</td>
			<td>9600</td>
			<td>40</td>
			<td>404</td>
			<td>183</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S400E</td>
			<td>Spartan-IIE</td>
			<td>2400 (60×40)</td>
			<td>9600</td>
			<td>40</td>
			<td>410</td>
			<td>172</td>
			<td>4
		</tr>
		<tr>
			<td>XCV405E</td>
			<td>Virtex EM<sup id=cite_ref-37 class=reference><a href=#cite_note-37>[37]</a></sup></td>
			<td>2400 (60×40)</td>
			<td>9600</td>
			<td>140</td>
			<td>404</td>
			<td>183</td>
			<td>8
		</tr>
		<tr>
			<td>XCV600</td>
			<td>Virtex</td>
			<td>3456 (72×48)</td>
			<td>13824</td>
			<td>24</td>
			<td>512</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV600E</td>
			<td>Virtex E</td>
			<td>3456 (72×48)</td>
			<td>13824</td>
			<td>72</td>
			<td>512</td>
			<td>247</td>
			<td>8
		</tr>
		<tr>
			<td>XC2S600E</td>
			<td>Spartan-IIE</td>
			<td>3456 (72×48)</td>
			<td>13824</td>
			<td>72</td>
			<td>514</td>
			<td>205</td>
			<td>4
		</tr>
		<tr>
			<td>XCV800</td>
			<td>Virtex</td>
			<td>4704 (84×56)</td>
			<td>18816</td>
			<td>28</td>
			<td>512</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV812E</td>
			<td>Virtex EM</td>
			<td>4704 (84×56)</td>
			<td>18816</td>
			<td>280</td>
			<td>556</td>
			<td>201</td>
			<td>8
		</tr>
		<tr>
			<td>XCV1000</td>
			<td>Virtex</td>
			<td>6144 (96×64)</td>
			<td>24576</td>
			<td>32</td>
			<td>512</td>
			<td>-</td>
			<td>4
		</tr>
		<tr>
			<td>XCV1000E</td>
			<td>Virtex E</td>
			<td>6144 (96×64)</td>
			<td>24576</td>
			<td>96</td>
			<td>660</td>
			<td>281</td>
			<td>8
		</tr>
		<tr>
			<td>XCV1600E</td>
			<td>Virtex E</td>
			<td>7776 (108×72)</td>
			<td>31104</td>
			<td>144</td>
			<td>724</td>
			<td>344</td>
			<td>8
		</tr>
		<tr>
			<td>XCV2000E</td>
			<td>Virtex E</td>
			<td>9600 (120×80)</td>
			<td>38400</td>
			<td>160</td>
			<td>804</td>
			<td>344</td>
			<td>8
		</tr>
		<tr>
			<td>XCV2600E</td>
			<td>Virtex E</td>
			<td>12696 (138×92)</td>
			<td>50784</td>
			<td>184</td>
			<td>804</td>
			<td>344</td>
			<td>8
		</tr>
		<tr>
			<td>XCV3000E</td>
			<td>Virtex E</td>
			<td>16224 (156×104)</td>
			<td>64896</td>
			<td>208</td>
			<td>804</td>
			<td>344</td>
			<td>8
	<tfoot>
</table>
Note: the available user I/O amount varies with chip packaging. Additionally, not all I/Os can be used as part of a
differential pair, so the available differential pair count can be smaller than half of the available I/O count.

# Virtex-II

The Virtex-II devices are made of the following user-programmable blocks:

* CLBs (configurable logic blocks), which contain 4 logic SLICEs, which are an improved version of the Virtex SLICE,
with the following differences:
* when used as distributed RAM, the LUTs of multiple SLICEs within a CLB can be combined to obtain the following RAM
configurations:
* 16×1 single port (half SLICE)
* 16×2 single port (one SLICE)
* 32×1 single port (one SLICE)
* 64×1 single port (two SLICEs)
* 128×1 single port (four SLICEs)
* 16×1 dual port (two half-SLICEs — utilizes one LUT of two different SLICEs each)
* 16×2 dual port (two SLICEs)
* 32×1 dual port (two SLICEs)
* 64×1 dual port (four SLICEs)
* the wide function multiplexers can now be used in a 4-level tree (as opposed to a 2-level tree on Virtex), allowing
for construction of up to 8-input LUTs (out of 16 4-input LUTs from two neighbouring CLBs)
* the carry chain has been enhanced with the addition of an ORCY cell allowing for efficient
[sum-of-products](https://en.wikipedia.org/wiki/Sum-of-products_expression "Sum-of-products expression") mapping
* 18kbit true dual port block RAMs, which can be used in 16386×1, 8192×2, 4096×4, 2048×9, 1024×18, 512×36 configurations
(with the narrow configurations having only 16kbit available, since they cannot access the parity bits)
* hard multiplier blocks (two signed 18-bit inputs, 36-bit output) — always exactly one per block RAM, since they reside
in a shared tile
* IOBs (I/O blocks), one per user I/O pin, which are an improved version of the Virtex IOB with the following
differences:
* the three I/O flip-flops are replaced with pairs of flip-flops for DDR ([double data
rate](https://en.wikipedia.org/wiki/Double_data_rate "Double data rate")) capability
* new DCI (Digitally Controlled Impedance) functionality — the device has a per-bank circuit that can utilize an
external precision resistor pair connected to user I/O pins to calibrate I/O resistance on remaining user pins,
providing very good impedance matching
* support for multiple new I/O standards, including native differential I/O
* DCMs (digital clock managers), which replace Virtex DLLs, adding frequency synthesis and clock divider capability
* 16 global clock buffers
* Miscellaneous configuration logic (startup control, readback data capture, JTAG control, and the ICAP — Internal
Configuration Access Port). The ICAP can be used to dynamically reprogram parts of the FPGA after the initial
configuration from within the FPGA itself.

Virtex-II Pro devices include some additional blocks:

* RocketIO transceivers: high-speed parallel-to-serial transmitters and serial-to-parallel receivers with [clock data
recovery](https://en.wikipedia.org/wiki/Clock_recovery "Clock recovery") and
[8b/10b](https://en.wikipedia.org/wiki/8b/10b_encoding "8b/10b encoding") encoders/decoders. They have a speed range of
600 Mb/s to 3.125 Gb/s and parallel width of 8, 16, or 32 bits (or 10, 20, 40 bits in 8b10b bypass mode)
* RocketIO X transceivers: improved transceivers with [64b/66b](https://en.wikipedia.org/wiki/64b/66b_encoding "64b/66b
encoding") encoding/decoding (in addition to 8b/10b), speed range of 2.488 Gb/s to 6.25 Gb/s (XC2VPX20) or fixed speed
of 4.25 Gb/s (XC2VPX70), and parallel width of 8, 16, 32, or 64 bits (or 10, 20, 40, 80 bits in 8b/10b bypass mode)
* Embedded [PPC405](https://en.wikipedia.org/wiki/PowerPC_400 "PowerPC 400") cores
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				(CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Multiplier blocks and block RAMs (18kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Multi-gigabit transceivers (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PPC
				cores
	<tbody>
		<tr>
			<td>XC2V40</td>
			<td>Virtex-II<sup id=cite_ref-38 class=reference><a href=#cite_note-38>[38]</a></sup></td>
			<td>64 (8×8)</td>
			<td>512</td>
			<td>4</td>
			<td>4</td>
			<td>88</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V80</td>
			<td>Virtex-II</td>
			<td>128 (8×16)</td>
			<td>1024</td>
			<td>8</td>
			<td>4</td>
			<td>120</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V250</td>
			<td>Virtex-II</td>
			<td>384 (16×24)</td>
			<td>3072</td>
			<td>24</td>
			<td>8</td>
			<td>200</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V500</td>
			<td>Virtex-II</td>
			<td>768 (24×32)</td>
			<td>6144</td>
			<td>32</td>
			<td>8</td>
			<td>264</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V1000</td>
			<td>Virtex-II</td>
			<td>1280 (32×40)</td>
			<td>10240</td>
			<td>40</td>
			<td>8</td>
			<td>432</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V1500</td>
			<td>Virtex-II</td>
			<td>1920 (40×48)</td>
			<td>15360</td>
			<td>48</td>
			<td>8</td>
			<td>528</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V2000</td>
			<td>Virtex-II</td>
			<td>2688 (48×56)</td>
			<td>21504</td>
			<td>56</td>
			<td>8</td>
			<td>624</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V3000</td>
			<td>Virtex-II</td>
			<td>3584 (56×64)</td>
			<td>28672</td>
			<td>96</td>
			<td>12</td>
			<td>720</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V4000</td>
			<td>Virtex-II</td>
			<td>5760 (72×80)</td>
			<td>46080</td>
			<td>120</td>
			<td>12</td>
			<td>912</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V6000</td>
			<td>Virtex-II</td>
			<td>8448 (88×96)</td>
			<td>67584</td>
			<td>144</td>
			<td>12</td>
			<td>1104</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2V8000</td>
			<td>Virtex-II</td>
			<td>11648 (104×112)</td>
			<td>93184</td>
			<td>168</td>
			<td>12</td>
			<td>1108</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC2VP2</td>
			<td>Virtex-II Pro<sup id=cite_ref-39 class=reference><a href=#cite_note-39>[39]</a></sup></td>
			<td>352</td>
			<td>2816</td>
			<td>12</td>
			<td>4</td>
			<td>204</td>
			<td>RocketIO ×4</td>
			<td>-
		</tr>
		<tr>
			<td>XC2VP4</td>
			<td>Virtex-II Pro</td>
			<td>752</td>
			<td>6016</td>
			<td>28</td>
			<td>4</td>
			<td>348</td>
			<td>RocketIO ×4</td>
			<td>1
		</tr>
		<tr>
			<td>XC2VP7</td>
			<td>Virtex-II Pro</td>
			<td>1232</td>
			<td>9856</td>
			<td>44</td>
			<td>4</td>
			<td>396</td>
			<td>RocketIO ×8</td>
			<td>1
		</tr>
		<tr>
			<td>XC2VP20</td>
			<td>Virtex-II Pro</td>
			<td>2320</td>
			<td>18560</td>
			<td>88</td>
			<td>8</td>
			<td>564</td>
			<td>RocketIO ×8</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VPX20</td>
			<td>Virtex-II Pro X</td>
			<td>2448</td>
			<td>19584</td>
			<td>88</td>
			<td>8</td>
			<td>552</td>
			<td>RocketIO X ×8</td>
			<td>1
		</tr>
		<tr>
			<td>XC2VP30</td>
			<td>Virtex-II Pro</td>
			<td>3424</td>
			<td>27392</td>
			<td>136</td>
			<td>8</td>
			<td>644</td>
			<td>RocketIO ×8</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP40</td>
			<td>Virtex-II Pro</td>
			<td>4848</td>
			<td>38784</td>
			<td>192</td>
			<td>8</td>
			<td>804</td>
			<td>RocketIO ×12</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP50</td>
			<td>Virtex-II Pro</td>
			<td>5904</td>
			<td>47232</td>
			<td>232</td>
			<td>8</td>
			<td>852</td>
			<td>RocketIO ×16</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP70</td>
			<td>Virtex-II Pro</td>
			<td>8272</td>
			<td>66176</td>
			<td>328</td>
			<td>8</td>
			<td>996</td>
			<td>RocketIO ×20</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VPX70</td>
			<td>Virtex-II Pro X</td>
			<td>8272</td>
			<td>66176</td>
			<td>308</td>
			<td>8</td>
			<td>992</td>
			<td>RocketIO X ×20</td>
			<td>2
		</tr>
		<tr>
			<td>XC2VP100</td>
			<td>Virtex-II Pro</td>
			<td>11024</td>
			<td>88192</td>
			<td>444</td>
			<td>12</td>
			<td>1164</td>
			<td>RocketIO ×20</td>
			<td>2
	<tfoot>
</table>

Note: the available user I/O and multi-gigabit transceiver amount varies with chip packaging.

Note: the CLB count for Virtex-II Pro devices is no longer a simple columns×rows multiplication, as the CLB grid
contains holes for the PowerPC cores.

# Spartan-3

The Spartan-3 devices are made of:

* CLBs (configurable logic blocks), which are very similar to Virtex-II, with some modifications:
* Only two of the four SLICEs in the CLB can now be used as distributed RAM or shift registers. The SLICEs that can be
used as distributed RAM or shift registers are called SLICEMs, and the remaining SLICEs are called SLICELs.
* The available distributed RAM configurations are now:
* 16×1 single port (half SLICEM)
* 16×2 single port (one SLICEM)
* 32×1 single port (one SLICEM)
* 64×1 single port (two SLICEMs)
* 16×1 double port (one SLICEM)
* 32×1 double port (two SLICEMs)
* The ORCY cell has been removed
* 18kbit true dual port block RAMs, with the following variants:
* Spartan-3, Spartan-3E: identical to Virtex-II
* Spartan-3A, Spartan-3AN: adds per-byte write enable signals
* Spartan-3A DSP: like Spartan-3A, plus adds optional output pipeline registers (for faster clock-to-out time)
* hard multiplier blocks or DSP cells:
* Spartan-3: MULT18X18, identical to Virtex-II
* Spartan-3E, Spartan-3A, Spartan-3AN: MULT18X18SIO, adds extra input registers for faster pipelined operation
* Spartan-3A DSP: DSP48A, a complete DSP ALU consisting of an 18×18 multiplier plus 48-bit accumulator
* IOBs (I/O blocks), one per user pin:
* Spartan-3: similar to Virtex-II, arranged in 8 banks
* Spartan-3E: simplified version, removes DCI capability, arranged in 4 banks (one for each device edge)
* Spartan-3A, Spartan-3AN, Spartan-3A DSP: like Spartan-3E, but with support for newer I/O standards, and with somewhat
differing capabilities of top/bottom banks and left/right banks
* DCMs, similar to Virtex-II
* 8 (Spartan-3) or 24 (Spartan-3E, 3A, 3AN, 3A DSP) global clock buffers
* Miscellaneous configuration logic (like Virtex-II, but with disabled ICAP access)
* Spartan-3A, 3AN, 3A DSP only: access to a unique device serial number (so-called device DNA)
* Spartan-3AN only: access port to the in-package SPI flash
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				(CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (18kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Multiplier blocks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/O (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Differential I/O pairs (max)
	<tbody>
		<tr>
			<td>XC3S50</td>
			<td>Spartan-3<sup id=cite_ref-40 class=reference><a href=#cite_note-40>[40]</a></sup></td>
			<td>192 (12×16)</td>
			<td>1536</td>
			<td>4</td>
			<td>4</td>
			<td>2</td>
			<td>124</td>
			<td>56
		</tr>
		<tr>
			<td>XC3S200</td>
			<td>Spartan-3</td>
			<td>480 (20×24)</td>
			<td>3840</td>
			<td>12</td>
			<td>12</td>
			<td>4</td>
			<td>173</td>
			<td>76
		</tr>
		<tr>
			<td>XC3S400</td>
			<td>Spartan-3</td>
			<td>896 (28×32)</td>
			<td>7168</td>
			<td>16</td>
			<td>16</td>
			<td>4</td>
			<td>264</td>
			<td>116
		</tr>
		<tr>
			<td>XC3S1000, XC3S1000L</td>
			<td>Spartan-3</td>
			<td>1920 (40×48)</td>
			<td>15360</td>
			<td>24</td>
			<td>24</td>
			<td>4</td>
			<td>391</td>
			<td>175
		</tr>
		<tr>
			<td>XC3S1500, XC3S1500L</td>
			<td>Spartan-3</td>
			<td>3328 (52×64)</td>
			<td>26624</td>
			<td>32</td>
			<td>32</td>
			<td>4</td>
			<td>487</td>
			<td>221
		</tr>
		<tr>
			<td>XC3S2000</td>
			<td>Spartan-3</td>
			<td>5120 (64×80)</td>
			<td>40960</td>
			<td>40</td>
			<td>40</td>
			<td>4</td>
			<td>565</td>
			<td>270
		</tr>
		<tr>
			<td>XC3S4000</td>
			<td>Spartan-3</td>
			<td>6912 (72×96)</td>
			<td>55296</td>
			<td>96</td>
			<td>96</td>
			<td>4</td>
			<td>633</td>
			<td>300
		</tr>
		<tr>
			<td>XC3S5000</td>
			<td>Spartan-3</td>
			<td>8320 (80×104)</td>
			<td>66560</td>
			<td>104</td>
			<td>104</td>
			<td>4</td>
			<td>633</td>
			<td>300
		</tr>
		<tr>
			<td>XC3S100E</td>
			<td>Spartan-3E<sup id=cite_ref-41 class=reference><a href=#cite_note-41>[41]</a></sup></td>
			<td>240</td>
			<td>1920</td>
			<td>4</td>
			<td>4</td>
			<td>2</td>
			<td>108</td>
			<td>40
		</tr>
		<tr>
			<td>XC3S250E</td>
			<td>Spartan-3E</td>
			<td>612</td>
			<td>4896</td>
			<td>12</td>
			<td>12</td>
			<td>4</td>
			<td>172</td>
			<td>68
		</tr>
		<tr>
			<td>XC3S500E</td>
			<td>Spartan-3E</td>
			<td>1164</td>
			<td>9312</td>
			<td>20</td>
			<td>20</td>
			<td>4</td>
			<td>232</td>
			<td>92
		</tr>
		<tr>
			<td>XC3S1200E</td>
			<td>Spartan-3E</td>
			<td>2168</td>
			<td>17344</td>
			<td>28</td>
			<td>28</td>
			<td>8</td>
			<td>304</td>
			<td>124
		</tr>
		<tr>
			<td>XC3S1600E</td>
			<td>Spartan-3E</td>
			<td>3688</td>
			<td>29504</td>
			<td>36</td>
			<td>36</td>
			<td>8</td>
			<td>376</td>
			<td>156
		</tr>
		<tr>
			<td>XC3S50A, XC3S50AN</td>
			<td>Spartan-3A/3AN<sup id=cite_ref-42 class=reference><a href=#cite_note-42>[42]</a></sup></td>
			<td>176</td>
			<td>1408</td>
			<td>3</td>
			<td>3</td>
			<td>2</td>
			<td>144</td>
			<td>64
		</tr>
		<tr>
			<td>XC3S200A, XC3S200AN</td>
			<td>Spartan-3A/3AN</td>
			<td>448</td>
			<td>3584</td>
			<td>16</td>
			<td>16</td>
			<td>4</td>
			<td>248</td>
			<td>112
		</tr>
		<tr>
			<td>XC3S400A, XC3S400AN</td>
			<td>Spartan-3A/3AN</td>
			<td>896</td>
			<td>7168</td>
			<td>20</td>
			<td>20</td>
			<td>4</td>
			<td>311</td>
			<td>142
		</tr>
		<tr>
			<td>XC3S700A, XC3S700AN</td>
			<td>Spartan-3A/3AN</td>
			<td>1472</td>
			<td>11776</td>
			<td>20</td>
			<td>20</td>
			<td>8</td>
			<td>372</td>
			<td>165
		</tr>
		<tr>
			<td>XC3S1400A, XC3S1400AN</td>
			<td>Spartan-3A/3AN</td>
			<td>2816</td>
			<td>22528</td>
			<td>32</td>
			<td>32</td>
			<td>8</td>
			<td>502</td>
			<td>227
		</tr>
		<tr>
			<td>XC3SD1800A</td>
			<td>Spartan-3A DSP<sup id=cite_ref-43 class=reference><a href=#cite_note-43>[43]</a></sup></td>
			<td>4160</td>
			<td>33280</td>
			<td>84</td>
			<td>DSP48A ×84</td>
			<td>8</td>
			<td>519</td>
			<td>227
		</tr>
		<tr>
			<td>XC3SD3400A</td>
			<td>Spartan-3A DSP</td>
			<td>5968</td>
			<td>47744</td>
			<td>126</td>
			<td>DSP48A ×126</td>
			<td>8</td>
			<td>469</td>
			<td>213
	<tfoot>
</table>

Note: the available user I/O amount varies with chip packaging. Additionally, not all I/Os can be used as part of a
differential pair, so the available differential pair count can be smaller than half of the available I/O count.

Note: for families other than Spartan-3, the CLB grid is irregular and includes holes for block RAMs and DCMs, so the
CLB count is not a simple multiplication of columns×rows

# Virtex-4

The Virtex-4 devices are made of:[\[44\]](#cite_note-44)[\[45\]](#cite_note-45)

* CLBs (configurable logic blocks), almost unchanged from Spartan-3
* 18kbit true dual port block RAMs, very similar to Spartan-3A DSP, but with some new capabilities:
* two adjacent block RAMs can be combined to make a 32768×1 RAM
* each block RAM can be used in FIFO mode (in 4096×4, 2048×9, 1024×18, 512×36 configurations) where address inputs are
replaced with hardware FIFO counter functionality
* DSP48 blocks,[\[46\]](#cite_note-46) ALU blocks with 18×18 multiplier and 48-bit accumulator
* IOBs (I/O blocks, one per user pin): in addition to Virtex-II capabilities, they support ISERDES and OSERDES blocks
which do simple serial-to-parallel and parallel-to-serial conversion (2, 3, 4, 5, 6, 7, or 8 bit wide in SDR mode; 4, 6,
8, or 10 bit wide in DDR mode)
* IOBs are arranged into I/O banks; in a change from earlier FPGAs with fixed bank number, number of I/O banks on
Virtex-4 varies with device size, but banks now have a more uniform size of 16 or 32 I/O pins, with the exception of
special bank 0 that contains dedicated configuration pins. Each bank has two or four I/O clock buffers for fast clocks
used by the SERDES blocks.
* DCMs, similar to Virtex-II/Spartan-3
* PMCDs (phase-matched clock dividers), an unusual clock divider block
* 32 global clock buffers
* Multiple clock regions, with 2 regional clock buffers per region
* Miscellaneous configuration logic: like Virtex-II, plus:
* configuration data ECC checking circuitry
* 32-bit user data access port

The Virtex-4 FX devices additionally contain:

* RocketIO multi-gigabit transceivers with a speed range of 622 Mb/s to 6.5 Gb/s and parallel width of 8, 16, 32, or 64
bits (10, 20, 40, or 80 bits in 8b/10b bypass mode)
* Embedded PPC405 cores
* Embedded gigabit ethernet MAC blocks (two per PPC core)
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">4-LUTs
				(CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (18kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DSP48
				blocks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PMCDs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PPC
				cores
	<tbody>
		<tr>
			<td>XC4VLX15</td>
			<td>LX</td>
			<td>1536 (24×64)</td>
			<td>12288</td>
			<td>48</td>
			<td>32</td>
			<td>4</td>
			<td>-</td>
			<td>8</td>
			<td>9</td>
			<td>320</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX25</td>
			<td>LX</td>
			<td>2688 (28×96)</td>
			<td>21504</td>
			<td>72</td>
			<td>48</td>
			<td>8</td>
			<td>4</td>
			<td>12</td>
			<td>11</td>
			<td>448</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX40</td>
			<td>LX</td>
			<td>4608 (36×128)</td>
			<td>36864</td>
			<td>96</td>
			<td>64</td>
			<td>8</td>
			<td>4</td>
			<td>16</td>
			<td>13</td>
			<td>640</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX60</td>
			<td>LX</td>
			<td>6656 (52×128)</td>
			<td>53248</td>
			<td>160</td>
			<td>64</td>
			<td>8</td>
			<td>4</td>
			<td>16</td>
			<td>13</td>
			<td>640</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX80</td>
			<td>LX</td>
			<td>8960 (56×160)</td>
			<td>71680</td>
			<td>200</td>
			<td>80</td>
			<td>12</td>
			<td>8</td>
			<td>20</td>
			<td>15</td>
			<td>768</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX100</td>
			<td>LX</td>
			<td>12288 (64×192)</td>
			<td>98304</td>
			<td>240</td>
			<td>96</td>
			<td>12</td>
			<td>8</td>
			<td>24</td>
			<td>17</td>
			<td>960</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX160</td>
			<td>LX</td>
			<td>16896 (88×192)</td>
			<td>135168</td>
			<td>288</td>
			<td>96</td>
			<td>12</td>
			<td>8</td>
			<td>24</td>
			<td>17</td>
			<td>960</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VLX200</td>
			<td>LX</td>
			<td>22272 (116×192)</td>
			<td>178176</td>
			<td>336</td>
			<td>96</td>
			<td>12</td>
			<td>8</td>
			<td>24</td>
			<td>17</td>
			<td>960</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VSX25</td>
			<td>SX</td>
			<td>2560 (40×64)</td>
			<td>20480</td>
			<td>128</td>
			<td>128</td>
			<td>4</td>
			<td>-</td>
			<td>8</td>
			<td>9</td>
			<td>420</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VSX35</td>
			<td>SX</td>
			<td>3840 (40×96)</td>
			<td>30720</td>
			<td>192</td>
			<td>192</td>
			<td>8</td>
			<td>4</td>
			<td>12</td>
			<td>11</td>
			<td>448</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VSX55</td>
			<td>SX</td>
			<td>6144 (48×128)</td>
			<td>49152</td>
			<td>320</td>
			<td>512</td>
			<td>8</td>
			<td>4</td>
			<td>16</td>
			<td>13</td>
			<td>640</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC4VFX12</td>
			<td>FX</td>
			<td>1368</td>
			<td>10944</td>
			<td>36</td>
			<td>32</td>
			<td>4</td>
			<td>-</td>
			<td>8</td>
			<td>9</td>
			<td>320</td>
			<td>-</td>
			<td>1
		</tr>
		<tr>
			<td>XC4VFX20</td>
			<td>FX</td>
			<td>2136</td>
			<td>17088</td>
			<td>68</td>
			<td>32</td>
			<td>4</td>
			<td>-</td>
			<td>8</td>
			<td>9</td>
			<td>320</td>
			<td>8</td>
			<td>1
		</tr>
		<tr>
			<td>XC4VFX40</td>
			<td>FX</td>
			<td>4656</td>
			<td>37248</td>
			<td>144</td>
			<td>48</td>
			<td>8</td>
			<td>4</td>
			<td>12</td>
			<td>11</td>
			<td>448</td>
			<td>12</td>
			<td>2
		</tr>
		<tr>
			<td>XC4VFX60</td>
			<td>FX</td>
			<td>6320</td>
			<td>50560</td>
			<td>232</td>
			<td>128</td>
			<td>12</td>
			<td>8</td>
			<td>16</td>
			<td>13</td>
			<td>576</td>
			<td>16</td>
			<td>2
		</tr>
		<tr>
			<td>XC4VFX100</td>
			<td>FX</td>
			<td>10544</td>
			<td>84352</td>
			<td>376</td>
			<td>160</td>
			<td>12</td>
			<td>8</td>
			<td>20</td>
			<td>15</td>
			<td>768</td>
			<td>20</td>
			<td>2
		</tr>
		<tr>
			<td>XC4VFX140</td>
			<td>FX</td>
			<td>15792</td>
			<td>126336</td>
			<td>552</td>
			<td>192</td>
			<td>20</td>
			<td>8</td>
			<td>24</td>
			<td>17</td>
			<td>896</td>
			<td>24</td>
			<td>2
	<tfoot>
</table>

Note: the I/O banks count includes special bank 0, which contains only dedicated configuration I/O (no user I/O)

Note: the available user I/O, I/O bank, and multi-gigabit transceiver amount varies with chip packaging.

Note: the CLB count for FX devices is no longer a simple columns×rows multiplication, as the CLB grid contains holes for
the PowerPC cores.

# Virtex-5

The Virtex-5 devices are made of:[\[47\]](#cite_note-47)[\[48\]](#cite_note-48)

* CLBs (configurable logic blocks) with a new, 6-input-LUT based construction:
* every CLB is made of two SLICEs — either two SLICELs or one SLICEL and one SLICEMs; the exact proportion of SLICEMs in
a device varies, but at least 50% of CLBs contain a SLICEM (with a higher proportion on DSP-heavy devices)
* every SLICE contains four 6-input LUTs, each of which can be used as:
* a 6-input LUT
* two 5-input LUTs with shared inputs (ie. the LUT is fracturable)
* (SLICEM only) 32×2 or 64×1 distributed RAM, which can be combined with other distributed RAMs within the same SLICEM
* (SLICEM only) 16-bit or 32-bit shift register, which can be combined with other shift registers within the same
SLICEM, for maximum of 128-bit shift register in a single SLICEM
* the arrangement of distributed RAMs within the SLICEM is quite complex and only some configurations can be obtained;
the SLICEM usage combinations allowed by vendor tools are:
* 32×8, 64×4, 128×2, or 256×1 single port RAM
* 32×4, 62×2, 128×1 dual port RAM
* 32×2, 64×1 quad port RAM
* 32×6, 64×3 simple dual port RAM
* every SLICE contains four flip-flops with clock enable and (configurable as synchronous or asynchronous) set and reset
inputs; they can also be used as latches
* every SLICE contains a carry chain, identical in functionality to the one used since Virtex (made of MUXCY and XORCY
cells), but now represented as a single CARRY4 cell for the whole SLICE (mostly for more accurate timing simulation)
* compared to Virtex-4 SLICEs, the MULT\_AND cell is gone; however, its functionality can be trivially replicated by
using one half of the corresponding now-fracturable LUT
* every SLICE contains a two-level tree of wide LUT multiplexers that can be used to combine the outputs of the LUTs,
and can eg. combine the four LUTs within a SLICE into a single 8-input LUT
* 36kbit splittable true dual port block RAMs, with some new capabilities compared to Virtex-4:
* the base block RAM is twice the size of Virtex-4; however, any given block RAM can be split into two 18kbit halves
functioning independently (but only one half can use the hardware FIFO mode)
* the available true dual port configurations of the full (36kbit) block RAM are: 32768×1, 16384×2, 8192×4, 4096×9,
2048×18, 1024×36, plus a special 65536×1 mode obtained by combining two adjacent RAMs
* the available true dual port configurations of the half (18kbit) block RAM are: 16384×1, 8192×2, 4096×4, 2048×9,
1024×18
* in addition to true dual port mode, the block RAMs can also be used in simple dual port mode, which doubles the
maximum width of the block RAM, allowing for 512×72 (full block RAM) and 512×36 (half block RAM) configurations
* a hardware 64-bit [SECDED](https://en.wikipedia.org/wiki/SECDED "SECDED")
[ECC](https://en.wikipedia.org/wiki/Error_correction_code "Error correction code") encoder/decoder has been added, which
can be used with the simple dual port mode of the full block RAM to obtain a 512×64 block RAM with error correction and
detection
* DSP48E blocks,[\[49\]](#cite_note-49) improved version of Virtex-4 DSP48 blocks with 25×18 multiplier, 48-bit
accumulator (with new bitwise operations function), and pattern detector
* IOBs (I/O blocks, one per user pin): with minor improvements from Virtex-4 (mainly new I/O standard support)
* The I/O bank arrangement is similar to Virtex-4, but the banks have size of 20 or 40 user I/O pins
* CMTs (clock management tiles), each of which has:
* two DCMs (similar to Virtex-4 DCM)
* one [PLL](https://en.wikipedia.org/wiki/Phase-locked_loop "Phase-locked loop"), which has similar general
functionality as the old DCM, but is made of analog circuitry and has different set of available outputs
* the Virtex-4 PMCDs are gone; some of their functionality can be replicated by using PLLs instead
* 32 global clock buffers
* multiple clock regions, with two regional clock buffers per region
* a single system monitor: an [analog-to-digital converter](https://en.wikipedia.org/wiki/Analog-to-digital_converter
"Analog-to-digital converter") used for monitoring FPGA supply voltages, temperature, and possibly other, external
analog signals
* Miscellaneous configuration logic: like Virtex-4, plus:
* unique device serial number access (identical to the DNA port in Spartan-3A)
* read-only access to user-programmable [efuses](https://en.wikipedia.org/wiki/Efuse "Efuse")
* (LXT and SXT devices) GTP[\[50\]](#cite_note-50) multi-gigabit transceivers with a speed range of 100 Mb/s to 3.75
Gb/s and parallel width of 8, or 16 bits (10 or 20 bits in 8b/10b bypass mode)
* (FXT and TXT devices) GTX[\[51\]](#cite_note-51) multi-gigabit transceivers with a speed range of 150 Mb/s to 6.5 Gb/s
and parallel width of 8, 16, or 32 bits (10, 20, or 40 bits in 8b/10b bypass mode)
* (FXT devices) embedded [PPC440](https://en.wikipedia.org/wiki/PowerPC_400 "PowerPC 400") cores
* (LXT, SXT, FXT, TXT devices) embedded gigabit Ethernet MAC cores
* (LXT, SXT, FXT, TXT devices) embedded [PCI Express](https://en.wikipedia.org/wiki/PCI_Express "PCI Express") cores
capable of Gen1.1 ×8 operation
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (36kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DSP48E
				blocks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PLLs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				regions</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PPC
				cores</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Ethernet MACs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express cores
	<tbody>
		<tr>
			<td>XC5VLX20T</td>
			<td>LXT</td>
			<td>1560 (26×60)</td>
			<td>12480</td>
			<td>840</td>
			<td>26</td>
			<td>24</td>
			<td>2</td>
			<td>1</td>
			<td>6</td>
			<td>7</td>
			<td>172</td>
			<td>4 GTP</td>
			<td>-</td>
			<td>2</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX30</td>
			<td>LX</td>
			<td>2400 (30×80)</td>
			<td>19200</td>
			<td>1280</td>
			<td>32</td>
			<td>32</td>
			<td>4</td>
			<td>2</td>
			<td>8</td>
			<td>13</td>
			<td>400</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX30T</td>
			<td>LXT</td>
			<td>2400 (30×80)</td>
			<td>19200</td>
			<td>1280</td>
			<td>36</td>
			<td>32</td>
			<td>4</td>
			<td>2</td>
			<td>8</td>
			<td>12</td>
			<td>360</td>
			<td>8 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX50</td>
			<td>LX</td>
			<td>3600 (30×120)</td>
			<td>28800</td>
			<td>1920</td>
			<td>48</td>
			<td>48</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>17</td>
			<td>560</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX50T</td>
			<td>LXT</td>
			<td>3600 (30×120)</td>
			<td>28800</td>
			<td>1920</td>
			<td>60</td>
			<td>48</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>15</td>
			<td>480</td>
			<td>12 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX85</td>
			<td>LX</td>
			<td>6480 (54×120)</td>
			<td>51840</td>
			<td>3360</td>
			<td>96</td>
			<td>48</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>17</td>
			<td>560</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX85T</td>
			<td>LXT</td>
			<td>6480 (54×120)</td>
			<td>51840</td>
			<td>3360</td>
			<td>108</td>
			<td>48</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>15</td>
			<td>480</td>
			<td>12 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX110</td>
			<td>LX</td>
			<td>8640 (64×160)</td>
			<td>69120</td>
			<td>4480</td>
			<td>128</td>
			<td>64</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>23</td>
			<td>800</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX110T</td>
			<td>LXT</td>
			<td>8640 (64×160)</td>
			<td>69120</td>
			<td>4480</td>
			<td>148</td>
			<td>64</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>20</td>
			<td>680</td>
			<td>16 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX155</td>
			<td>LX</td>
			<td>12160 (76×160)</td>
			<td>97280</td>
			<td>6560</td>
			<td>192</td>
			<td>128</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>23</td>
			<td>800</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX155T</td>
			<td>LXT</td>
			<td>12160 (76×160)</td>
			<td>97280</td>
			<td>6560</td>
			<td>212</td>
			<td>128</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>20</td>
			<td>680</td>
			<td>16 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX220</td>
			<td>LX</td>
			<td>17280 (108×160)</td>
			<td>138240</td>
			<td>9120</td>
			<td>192</td>
			<td>128</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>23</td>
			<td>800</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX220T</td>
			<td>LXT</td>
			<td>17280 (108×160)</td>
			<td>138240</td>
			<td>9120</td>
			<td>212</td>
			<td>128</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>20</td>
			<td>680</td>
			<td>16 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VLX330</td>
			<td>LX</td>
			<td>25920 (108×240)</td>
			<td>207360</td>
			<td>13680</td>
			<td>288</td>
			<td>192</td>
			<td>12</td>
			<td>6</td>
			<td>24</td>
			<td>33</td>
			<td>1200</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC5VLX330T</td>
			<td>LXT</td>
			<td>25920 (108×240)</td>
			<td>207360</td>
			<td>13680</td>
			<td>324</td>
			<td>192</td>
			<td>12</td>
			<td>6</td>
			<td>24</td>
			<td>27</td>
			<td>960</td>
			<td>20 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX35T</td>
			<td>SXT</td>
			<td>2720 (34×80)</td>
			<td>21760</td>
			<td>2080</td>
			<td>84</td>
			<td>192</td>
			<td>4</td>
			<td>2</td>
			<td>8</td>
			<td>12</td>
			<td>360</td>
			<td>8 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX50T</td>
			<td>SXT</td>
			<td>4080 (34×120)</td>
			<td>32640</td>
			<td>3120</td>
			<td>132</td>
			<td>288</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>15</td>
			<td>480</td>
			<td>12 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX95T</td>
			<td>SXT</td>
			<td>7360 (46×160)</td>
			<td>58880</td>
			<td>6080</td>
			<td>244</td>
			<td>640</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>19</td>
			<td>640</td>
			<td>16 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VSX240T</td>
			<td>SXT</td>
			<td>18720 (78×240)</td>
			<td>149760</td>
			<td>16800</td>
			<td>516</td>
			<td>1056</td>
			<td>12</td>
			<td>6</td>
			<td>24</td>
			<td>27</td>
			<td>960</td>
			<td>24 GTP</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VTX150T</td>
			<td>TXT</td>
			<td>11600 (58×200)</td>
			<td>92800</td>
			<td>6000</td>
			<td>228</td>
			<td>80</td>
			<td>12</td>
			<td>6</td>
			<td>20</td>
			<td>20</td>
			<td>680</td>
			<td>40 GTX</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VTX240T</td>
			<td>TXT</td>
			<td>18720 (78×240)</td>
			<td>149760</td>
			<td>9600</td>
			<td>324</td>
			<td>96</td>
			<td>12</td>
			<td>6</td>
			<td>24</td>
			<td>20</td>
			<td>680</td>
			<td>48 GTX</td>
			<td>-</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VFX30T</td>
			<td>FXT</td>
			<td>2560</td>
			<td>20480</td>
			<td>1520</td>
			<td>68</td>
			<td>64</td>
			<td>4</td>
			<td>2</td>
			<td>8</td>
			<td>12</td>
			<td>360</td>
			<td>8 GTX</td>
			<td>1</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC5VFX70T</td>
			<td>FXT</td>
			<td>5600</td>
			<td>44800</td>
			<td>3280</td>
			<td>148</td>
			<td>128</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>19</td>
			<td>640</td>
			<td>16 GTX</td>
			<td>1</td>
			<td>4</td>
			<td>3
		</tr>
		<tr>
			<td>XC5VFX100T</td>
			<td>FXT</td>
			<td>8000</td>
			<td>64000</td>
			<td>4960</td>
			<td>228</td>
			<td>256</td>
			<td>12</td>
			<td>6</td>
			<td>16</td>
			<td>20</td>
			<td>680</td>
			<td>16 GTX</td>
			<td>2</td>
			<td>4</td>
			<td>3
		</tr>
		<tr>
			<td>XC5VFX130T</td>
			<td>FXT</td>
			<td>10240</td>
			<td>81920</td>
			<td>6320</td>
			<td>298</td>
			<td>320</td>
			<td>12</td>
			<td>6</td>
			<td>20</td>
			<td>24</td>
			<td>840</td>
			<td>20 GTX</td>
			<td>2</td>
			<td>6</td>
			<td>3
		</tr>
		<tr>
			<td>XC5VFX200T</td>
			<td>FXT</td>
			<td>15360</td>
			<td>122880</td>
			<td>9120</td>
			<td>456</td>
			<td>384</td>
			<td>12</td>
			<td>6</td>
			<td>24</td>
			<td>27</td>
			<td>960</td>
			<td>24 GTX</td>
			<td>2</td>
			<td>8</td>
			<td>4
	<tfoot>
</table>

Note: the I/O banks count includes special bank 0, which contains only dedicated configuration I/O (no user I/O)

Note: the available user I/O, I/O bank, and multi-gigabit transceiver amount varies with chip packaging.

Note: the CLB count for FXT devices is no longer a simple columns×rows multiplication, as the CLB grid contains holes
for the PowerPC cores.

# Virtex-6

The Virtex-6 devices are made of:[\[52\]](#cite_note-52)

* CLBs (configurable logic blocks)[\[53\]](#cite_note-53) like the Virtex-5 CLBs, with some minor modifications:
* every SLICE now contains 8 flip-flops (two for each 6-LUT) instead of 4
* the flip-flops now have only one set/reset input (ie. it is impossible to have a flip-flop with both a set and a reset
input)
* 36 Kibit splittable true dual port block RAM[\[54\]](#cite_note-54) a slightly improved version of the Virtex-5 block
RAM
* DSP48E1 blocks,[\[55\]](#cite_note-55) upgraded version of Virtex-5 DSP48E, adding a pre-adder block
* IOBs (I/O blocks, one per user pin)[\[56\]](#cite_note-56) with minor improvements from Virtex-5 (mainly new I/O
standard support), and with notable removal of 3.3 V I/O support (max supported I/O voltage is 2.5V)
* The I/O bank arrangement is similar to Virtex-5, but the banks have constant size of 40 user I/O pins
* CMTs (clock management tiles),[\[57\]](#cite_note-57) each of which contains two MMCMs (mixed-mode clocking managers),
which are analog-based replacements for the old DCMs, and are an evolution of the Virtex-5 PLLs
* 32 global clock buffers
* multiple clock regions, with two or four regional clock buffers per region
* a single system monitor, like Virtex-5
* Miscellaneous configuration logic: like Virtex-5
* (non-LX devices) GTX multi-gigabit transceivers with a speed range of 480 Mb/s to 6.6 Gb/s and parallel width of 8,
16, or 32 bits (10, 20, or 40 bits in 8b/10b bypass mode)
* (some HXT devices) GTH multi-gigabit transceivers with a speed range of 2.488 Gb/s to 11.2 Gb/s and parallel width of
8, 16, 32, or 64 bits (10, 20, 40, or 80 bits in 8b/10b bypass mode)
* (non-LX devices) embedded gigabit Ethernet MAC cores
* (non-LX devices) embedded [PCI Express](https://en.wikipedia.org/wiki/PCI_Express "PCI Express") cores capable of Gen2
×8 operation
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				36&nbsp;Kibit block RAMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48E1 blocks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">MMCMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Ethernet MACs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores
	<tbody>
		<tr>
			<td>XC6VLX75T</td>
			<td>LXT</td>
			<td>5820</td>
			<td>46560</td>
			<td>4180</td>
			<td>156</td>
			<td>288</td>
			<td>6</td>
			<td>6</td>
			<td>9</td>
			<td>360</td>
			<td>12 GTX</td>
			<td>4</td>
			<td>1
		</tr>
		<tr>
			<td>XC6VCX75T</td>
			<td>CXT<sup id=cite_ref-58 class=reference><a href=#cite_note-58>[58]</a></sup></td>
			<td>5820</td>
			<td>46560</td>
			<td>4180</td>
			<td>156</td>
			<td>288</td>
			<td>6</td>
			<td>6</td>
			<td>9</td>
			<td>360</td>
			<td>12 GTX</td>
			<td>1</td>
			<td>1
		</tr>
		<tr>
			<td>XC6VLX130T</td>
			<td>LXT</td>
			<td>10000</td>
			<td>80000</td>
			<td>6960</td>
			<td>264</td>
			<td>480</td>
			<td>10</td>
			<td>10</td>
			<td>15</td>
			<td>600</td>
			<td>20 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VCX130T</td>
			<td>CXT</td>
			<td>10000</td>
			<td>80000</td>
			<td>6960</td>
			<td>264</td>
			<td>480</td>
			<td>10</td>
			<td>10</td>
			<td>15</td>
			<td>600</td>
			<td>16 GTX</td>
			<td>1</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX195T</td>
			<td>LXT</td>
			<td>15600</td>
			<td>124800</td>
			<td>12160</td>
			<td>344</td>
			<td>640</td>
			<td>10</td>
			<td>10</td>
			<td>15</td>
			<td>600</td>
			<td>20 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VCX195T</td>
			<td>CXT</td>
			<td>15600</td>
			<td>124800</td>
			<td>12160</td>
			<td>344</td>
			<td>640</td>
			<td>10</td>
			<td>10</td>
			<td>15</td>
			<td>600</td>
			<td>16 GTX</td>
			<td>1</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX240T</td>
			<td>LXT</td>
			<td>18840</td>
			<td>150720</td>
			<td>14600</td>
			<td>416</td>
			<td>768</td>
			<td>12</td>
			<td>12</td>
			<td>18</td>
			<td>720</td>
			<td>24 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VCX240T</td>
			<td>CXT</td>
			<td>18840</td>
			<td>150720</td>
			<td>14600</td>
			<td>416</td>
			<td>768</td>
			<td>12</td>
			<td>12</td>
			<td>18</td>
			<td>600</td>
			<td>16 GTX</td>
			<td>1</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX365T</td>
			<td>LXT</td>
			<td>28440</td>
			<td>227520</td>
			<td>16520</td>
			<td>416</td>
			<td>576</td>
			<td>12</td>
			<td>12</td>
			<td>18</td>
			<td>720</td>
			<td>24 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX550T</td>
			<td>LXT</td>
			<td>42960</td>
			<td>343680</td>
			<td>24800</td>
			<td>632</td>
			<td>864</td>
			<td>18</td>
			<td>18</td>
			<td>30</td>
			<td>1200</td>
			<td>36 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VLX760</td>
			<td>LX</td>
			<td>59280</td>
			<td>474240</td>
			<td>33120</td>
			<td>720</td>
			<td>864</td>
			<td>18</td>
			<td>18</td>
			<td>30</td>
			<td>1200</td>
			<td>-</td>
			<td>-</td>
			<td>-
		</tr>
		<tr>
			<td>XC6VSX315T</td>
			<td>SXT</td>
			<td>24600</td>
			<td>196800</td>
			<td>20360</td>
			<td>704</td>
			<td>1344</td>
			<td>12</td>
			<td>12</td>
			<td>18</td>
			<td>720</td>
			<td>24 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VSX475T</td>
			<td>SXT</td>
			<td>37200</td>
			<td>297600</td>
			<td>30560</td>
			<td>1064</td>
			<td>2016</td>
			<td>18</td>
			<td>18</td>
			<td>21</td>
			<td>840</td>
			<td>36 GTX</td>
			<td>4</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VHX250T</td>
			<td>HXT</td>
			<td>19680</td>
			<td>157440</td>
			<td>12160</td>
			<td>504</td>
			<td>576</td>
			<td>12</td>
			<td>12</td>
			<td>8</td>
			<td>320</td>
			<td>48 GTX</td>
			<td>4</td>
			<td>4
		</tr>
		<tr>
			<td>XC6VHX255T</td>
			<td>HXT</td>
			<td>19800</td>
			<td>158400</td>
			<td>12200</td>
			<td>516</td>
			<td>576</td>
			<td>12</td>
			<td>12</td>
			<td>12</td>
			<td>480</td>
			<td>24 GTX + 24 GTH</td>
			<td>2</td>
			<td>2
		</tr>
		<tr>
			<td>XC6VHX380T</td>
			<td>HXT</td>
			<td>29880</td>
			<td>239040</td>
			<td>18280</td>
			<td>768</td>
			<td>864</td>
			<td>18</td>
			<td>18</td>
			<td>18</td>
			<td>720</td>
			<td>48 GTX + 24 GTH</td>
			<td>4</td>
			<td>4
		</tr>
		<tr>
			<td>XC6VHX565T</td>
			<td>HXT</td>
			<td>44280</td>
			<td>354240</td>
			<td>25480</td>
			<td>912</td>
			<td>864</td>
			<td>18</td>
			<td>18</td>
			<td>18</td>
			<td>720</td>
			<td>24 GTX + 24 GTH</td>
			<td>4</td>
			<td>4
	<tfoot>
</table>

Note: the I/O banks count does not include special bank 0, which contains only dedicated configuration I/O (no user I/O)

Note: the available user I/O, I/O bank, and multi-gigabit transceiver amount varies with chip packaging.

Note: Virtex-6 CLB grid is irregular and contains holes (for configuration center and PCI Express blocks), and so the
CLB count is no longer a simple columns×rows multiplication

Note: The CXT devices use an identical die to the corresponding LXT devices, but with some disabled blocks and reduced
performance (GTX transceivers have a speed range of 150 Mb/s to 3.75 Gb/s).

# Spartan-6

The Spartan-6 devices are basically Spartan-3A DSP devices upgraded with some Virtex-6 technology. They are made
of:[\[59\]](#cite_note-59)

* CLBs (configurable logic blocks),[\[60\]](#cite_note-60) similar to Virtex-6, but with some changes:
* SLICEs now come in three types: SLICEX, SLICEL, SLICEM; SLICEX is a bare-bones version of SLICEL (wide LUT
multiplexers and carry chain have been removed, only LUTs and flip-flops remain)
* every CLB contains two SLICEs: either one SLICEX + one SLICEL, or one SLICEX + one SLICEM; around 50% of the CLBs
contain a SLICEM
* 18kbit true dual port block RAMs,[\[61\]](#cite_note-61) similar to Spartan-3A DSP, but with additional capabilities:
* the full 18kbit block RAM can be split into two 9kbit halves, with available configurations of 8192×1, 4096×2, 2048×4,
1024×9, 512×18
* in split mode, the half block RAMs additionally support a simple dual port mode in 256×36 configuration
* DSP48A1 blocks,[\[62\]](#cite_note-62) which are an upgraded version of the DSP48A blocks of Spartan-3A DSP devices
* IOBs (I/O blocks, one per user pin)[\[63\]](#cite_note-63)
* the electrical capabilities are similar to Spartan-3A (though with new I/O standards supported); there is no DCI
support, but user can select an uncalibrated I/O impedance from several settings
* Virtex-6-like ISERDES and OSERDES blocks are present (though with fewer capabilities than Virtex-6 devices), with
associated fast I/O block buffers
* the I/O bank arrangement is similar to Spartan-3A devices, but with a minor change: small devices have 4 banks (one
for each device edge), while large devices have 6 banks (with the left and right edges split into two banks
* MCBs (memory controller blocks),[\[64\]](#cite_note-64) hard memory controllers supporting
[DDR](https://en.wikipedia.org/wiki/DDR_SDRAM "DDR SDRAM"), [DDR2](https://en.wikipedia.org/wiki/DDR2_SDRAM "DDR2
SDRAM"), [DDR3](https://en.wikipedia.org/wiki/DDR3_SDRAM "DDR3 SDRAM"), and [LPDDR](https://en.wikipedia.org/wiki/LPDDR
"LPDDR") memory
* CMTs (clock management tiles),[\[65\]](#cite_note-65) each of which has:
* two DCMs, similar to Spartan-3A DCMs, but with new clock generator mode and dynamic reconfiguration capabilities
* one PLL, similar to Virtex-5 PLLs
* 16 global clock buffers
* multiple clock regions, with 16 regional clock buffers each, which can replace the corresponding global clock buffer
output for that region
* Miscellaneous configuration logic: like Spartan-3A, plus circuitry performing live configuration memory scanning with
CRC error detection (but no correction)
* (SXT devices only) GTP multi-gigabit transceivers[\[66\]](#cite_note-66) with speed ranges of 614 Mb/s to 810 Mb/s,
1.22 Gb/s to 1.62 Gb/s, and 2.45 Gb/s to 3.125 Gb/s, 8b/10b encoder and decoder, and parallel width of 8, 16, or 32 bits
(10, 20, or 40 bits in 8b/10b bypass mode)
* (SXT devices only) embedded PCI Express cores capable of Gen1.1 ×1 operation
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Sub-family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (18kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48A1 blocks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">DCMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PLLs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">MCBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
	<tbody>
		<tr>
			<td>XC6SLX4</td>
			<td>LX</td>
			<td>300</td>
			<td>2400</td>
			<td>300</td>
			<td>12</td>
			<td>8</td>
			<td>4</td>
			<td>2</td>
			<td>4</td>
			<td>4</td>
			<td>132</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>uses the same die as XC6SLX9, with lots of disabled blocks
		</tr>
		<tr>
			<td>XC6SLX9</td>
			<td>LX</td>
			<td>715</td>
			<td>5720</td>
			<td>360</td>
			<td>32</td>
			<td>16</td>
			<td>4</td>
			<td>2</td>
			<td>4</td>
			<td>4</td>
			<td>200</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX16</td>
			<td>LX</td>
			<td>1139</td>
			<td>9112</td>
			<td>544</td>
			<td>32</td>
			<td>32</td>
			<td>4</td>
			<td>2</td>
			<td>4</td>
			<td>4</td>
			<td>232</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX25</td>
			<td>LX</td>
			<td>1879</td>
			<td>15032</td>
			<td>916</td>
			<td>52</td>
			<td>38</td>
			<td>4</td>
			<td>2</td>
			<td>5</td>
			<td>4</td>
			<td>266</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>uses the same die as XC6SLX25T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX25T</td>
			<td>LXT</td>
			<td>1879</td>
			<td>15032</td>
			<td>916</td>
			<td>52</td>
			<td>38</td>
			<td>4</td>
			<td>2</td>
			<td>5</td>
			<td>4</td>
			<td>250</td>
			<td>2</td>
			<td>2</td>
			<td>1</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX45</td>
			<td>LX</td>
			<td>3411</td>
			<td>27288</td>
			<td>1602</td>
			<td>116</td>
			<td>58</td>
			<td>8</td>
			<td>4</td>
			<td>8</td>
			<td>4</td>
			<td>358</td>
			<td>2</td>
			<td>-</td>
			<td>-</td>
			<td>uses the same die as XC6SLX45T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX45T</td>
			<td>LXT</td>
			<td>3411</td>
			<td>27288</td>
			<td>1602</td>
			<td>116</td>
			<td>58</td>
			<td>8</td>
			<td>4</td>
			<td>8</td>
			<td>4</td>
			<td>296</td>
			<td>2</td>
			<td>4</td>
			<td>1</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX75</td>
			<td>LX</td>
			<td>5831</td>
			<td>46648</td>
			<td>2768</td>
			<td>172</td>
			<td>132</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>6</td>
			<td>408</td>
			<td>4</td>
			<td>-</td>
			<td>-</td>
			<td>uses the same die as XC6SLX75T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX75T</td>
			<td>LXT</td>
			<td>5831</td>
			<td>46648</td>
			<td>2768</td>
			<td>172</td>
			<td>132</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>6</td>
			<td>348</td>
			<td>4</td>
			<td>8</td>
			<td>1</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX100</td>
			<td>LX</td>
			<td>7911</td>
			<td>63288</td>
			<td>3904</td>
			<td>268</td>
			<td>180</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>6</td>
			<td>480</td>
			<td>4</td>
			<td>-</td>
			<td>-</td>
			<td>uses the same die as XC6SLX100T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX100T</td>
			<td>LXT</td>
			<td>7911</td>
			<td>63288</td>
			<td>3904</td>
			<td>268</td>
			<td>180</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>6</td>
			<td>498</td>
			<td>4</td>
			<td>8</td>
			<td>1</td>
			<td>
		</tr>
		<tr>
			<td>XC6SLX150</td>
			<td>LX</td>
			<td>11519</td>
			<td>92152</td>
			<td>5420</td>
			<td>268</td>
			<td>180</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>6</td>
			<td>576</td>
			<td>4</td>
			<td>-</td>
			<td>-</td>
			<td>uses the same die as XC6SLX150T, with disabled transceivers
		</tr>
		<tr>
			<td>XC6SLX150T</td>
			<td>LXT</td>
			<td>11519</td>
			<td>92152</td>
			<td>5420</td>
			<td>268</td>
			<td>180</td>
			<td>12</td>
			<td>6</td>
			<td>12</td>
			<td>6</td>
			<td>540</td>
			<td>4</td>
			<td>8</td>
			<td>1</td>
			<td>
	<tfoot>
</table>

# 7 Series

The 7 series devices are made of:[\[67\]](#cite_note-67)

* CLBs (configurable logic blocks), functionally identical to Virtex-6
* 36kbit splittable true dual port block RAM, functionally identical to Virtex-6
* DSP48E1 blocks, functionally identical to Virtex-6
* IOBs (I/O blocks, one per user pin)[\[68\]](#cite_note-68) derived from Virtex-6, but with multiple changes:
* the IOBs now come in two kinds
* HR (high range) I/O, which once again supports I/O voltage up to 3.3V, but has no DCI support
* HP (high performance) I/O, which supports I/O voltage up to 1.8V, with DCI support
* the I/O banks now have 50 I/O pins each, as follows:
* 24 differential I/O pairs, split into 4 "byte groups" of 6 I/O pairs (or 12 I/O pins)
* 2 single I/O pins without differential pair
* the CMTs (clock management tiles)[\[69\]](#cite_note-69) are now tightly coupled with I/O banks: there is one CMT for
every I/O bank, and it contains:
* one MMCM, similar to Virtex-6 MMCM
* one PLL, which is a version of MMCM with less advanced functionality
* four input and four output asynchronous FIFOs, designed for memory controller usage, but available for any application
* undocumented phaser circuitry used only by the Xilinx memory controller IPs
* global clock buffers (usually 32 of them, but some devices have only 16, and 3D devices have 32 for every die)
* multiple clock regions, with 4 regional clock buffers per region
* (not on the smallest Spartan devices) a single XADC analog-to-digital converter, which is an improved and renamed
version of Virtex-6 system monitor
* Miscellaneous configuration logic: like Virtex-6

Depending on exact device family, devices may also contain some special blocks:

* GTP multi-gigabit transceivers,[\[70\]](#cite_note-70) with speed range of 500 Mb/s to 6.6 Gb/s and parallel width of
8 or 16 bits (10 or 20 in 8b/10b bypass mode)
* GTX multi-gigabit transceivers,[\[71\]](#cite_note-71) with speed range of 500 Mb/s to 12.5 Gb/s and parallel width of
8, 16, or 32 bits (10, 20, or 40 in 8b/10b bypass mode)
* GTH multi-gigabit transceivers, with speed range of 500 Mb/s to 13.1 Gb/s and parallel width of 8, 16, or 32 bits (10,
20, or 40 in 8b/10b bypass mode)
* GTZ multi-gigabit transceivers, with speed range of up to 28.05 Gb/s and parallel width of up to 128 bits (160 in
8b/10b bypass mode). The GTZ transceivers, when present, reside on a separate die from the main FPGA. The documentation
for GTZ transceivers is not publicly available, being restricted to members of Xilinx GTZ Lounge.
* embedded PCI Express cores capable of Gen2 ×8 operation
* embedded PCI Express cores capable of Gen3 ×8 operation
* (Zynq-7000 devices) a PS (processing system) block,[\[72\]](#cite_note-72) containing a system on chip based on ARM
Cortex-A9
<table>
	<thead>
		<tr>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Model</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Family</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CLBs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">6-LUTs
				(=CLBs×8)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				SLICEMs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Block
				RAMs (36kbit each)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				DSP48E1 blocks</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">CMTs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Clock
				Regions</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">I/O
				banks (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">User
				I/Os (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Gigabit transceivers (max)</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">PCI
				Express Cores</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">XADCs</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">
				Processing System</th>
			<th class=headerSort tabindex=0 role="columnheader button" title="Sort ascending">Notes
	<tbody>
		<tr>
			<td>XC7S6</td>
			<td>Spartan-7</td>
			<td>469*</td>
			<td>3752*</td>
			<td>280*</td>
			<td>5*</td>
			<td>10*</td>
			<td>2</td>
			<td>2 (2x1)</td>
			<td>2 HR</td>
			<td>100 HR</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>software-limitted version of XC7S15
		</tr>
		<tr>
			<td>XC7S15</td>
			<td>Spartan-7</td>
			<td>1000</td>
			<td>8000</td>
			<td>600</td>
			<td>10</td>
			<td>20</td>
			<td>2</td>
			<td>2 (2x1)</td>
			<td>2 HR</td>
			<td>100 HR</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7S25</td>
			<td>Spartan-7</td>
			<td>1825</td>
			<td>14600</td>
			<td>1250</td>
			<td>45</td>
			<td>80</td>
			<td>3</td>
			<td>4 (2x2)</td>
			<td>3 HR</td>
			<td>150 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>XC7A25T with disabled transceivers
		</tr>
		<tr>
			<td>XC7S50</td>
			<td>Spartan-7</td>
			<td>4075</td>
			<td>32600</td>
			<td>2400</td>
			<td>75</td>
			<td>120</td>
			<td>5</td>
			<td>6 (2x3)</td>
			<td>5 HR</td>
			<td>250 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>XC7A50T with disabled transceivers
		</tr>
		<tr>
			<td>XC7S75</td>
			<td>Spartan-7</td>
			<td>6000*</td>
			<td>48000*</td>
			<td>3328*</td>
			<td>90*</td>
			<td>140*</td>
			<td>8</td>
			<td>8 (2x4)</td>
			<td>8 HR</td>
			<td>400 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7S100
		</tr>
		<tr>
			<td>XC7S100</td>
			<td>Spartan-7</td>
			<td>8000</td>
			<td>64000</td>
			<td>4400</td>
			<td>120</td>
			<td>160</td>
			<td>8</td>
			<td>8 (2x4)</td>
			<td>8 HR</td>
			<td>400 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7A12T</td>
			<td>Artix-7</td>
			<td>1000*</td>
			<td>8000*</td>
			<td>684*</td>
			<td>20*</td>
			<td>40*</td>
			<td>3</td>
			<td>4 (2x2)</td>
			<td>3 HR</td>
			<td>150 HR</td>
			<td>2 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7A25T
		</tr>
		<tr>
			<td>XC7A15T</td>
			<td>Artix-7</td>
			<td>1300*</td>
			<td>10400*</td>
			<td>800*</td>
			<td>25*</td>
			<td>45*</td>
			<td>5</td>
			<td>6 (2x3)</td>
			<td>5 HR</td>
			<td>250 HR</td>
			<td>4 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7A50T
		</tr>
		<tr>
			<td>XC7A25T</td>
			<td>Artix-7</td>
			<td>1825</td>
			<td>14600</td>
			<td>1250</td>
			<td>45</td>
			<td>80</td>
			<td>3</td>
			<td>4 (2x2)</td>
			<td>3 HR</td>
			<td>150 HR</td>
			<td>4 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7A35T</td>
			<td>Artix-7</td>
			<td>2600*</td>
			<td>20800*</td>
			<td>1600*</td>
			<td>50*</td>
			<td>90*</td>
			<td>5</td>
			<td>6 (2x3)</td>
			<td>5 HR</td>
			<td>250 HR</td>
			<td>4 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7A50T
		</tr>
		<tr>
			<td>XC7A50T</td>
			<td>Artix-7</td>
			<td>4075</td>
			<td>32600</td>
			<td>2400</td>
			<td>75</td>
			<td>120</td>
			<td>5</td>
			<td>6 (2x3)</td>
			<td>5 HR</td>
			<td>250 HR</td>
			<td>4 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7A75T</td>
			<td>Artix-7</td>
			<td>5900*</td>
			<td>47200*</td>
			<td>3568*</td>
			<td>105*</td>
			<td>180*</td>
			<td>6</td>
			<td>8 (2x4)</td>
			<td>6 HR</td>
			<td>300 HR</td>
			<td>8 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7A100T
		</tr>
		<tr>
			<td>XC7A100T</td>
			<td>Artix-7</td>
			<td>7925</td>
			<td>63400</td>
			<td>4750</td>
			<td>135</td>
			<td>240</td>
			<td>6</td>
			<td>8 (2x4)</td>
			<td>6 HR</td>
			<td>300 HR</td>
			<td>8 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7A200T</td>
			<td>Artix-7</td>
			<td>16825</td>
			<td>134600</td>
			<td>11550</td>
			<td>365</td>
			<td>740</td>
			<td>10</td>
			<td>10 (2x5)</td>
			<td>10 HR</td>
			<td>500 HR</td>
			<td>16 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7K70T</td>
			<td>Kintex-7</td>
			<td>5125</td>
			<td>41000</td>
			<td>3350</td>
			<td>135</td>
			<td>240</td>
			<td>6</td>
			<td>8 (2x4)</td>
			<td>4 HR + 2 HP</td>
			<td>200 HR + 100 HP</td>
			<td>8 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7K160T</td>
			<td>Kintex-7</td>
			<td>12675</td>
			<td>101400</td>
			<td>8750</td>
			<td>325</td>
			<td>600</td>
			<td>8</td>
			<td>10 (2x5)</td>
			<td>5 HR + 3 HP</td>
			<td>250 HR + 150 HP</td>
			<td>8 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7K325T</td>
			<td>Kintex-7</td>
			<td>25475</td>
			<td>203800</td>
			<td>16000</td>
			<td>445</td>
			<td>840</td>
			<td>10</td>
			<td>14 (2x7)</td>
			<td>7 HR + 3 HP</td>
			<td>350 HR + 150 HP</td>
			<td>16 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7K355T</td>
			<td>Kintex-7</td>
			<td>27825</td>
			<td>222600</td>
			<td>20350</td>
			<td>715</td>
			<td>1440</td>
			<td>6</td>
			<td>12 (2x6)</td>
			<td>6 HR</td>
			<td>300 HR</td>
			<td>24 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7K410T</td>
			<td>Kintex-7</td>
			<td>31775</td>
			<td>254200</td>
			<td>22650</td>
			<td>795</td>
			<td>1540</td>
			<td>10</td>
			<td>14 (2x7)</td>
			<td>7 HR + 3 HP</td>
			<td>350 HR + 150 HP</td>
			<td>16 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7K420T</td>
			<td>Kintex-7</td>
			<td>32575*</td>
			<td>260600*</td>
			<td>23752*</td>
			<td>835*</td>
			<td>1680*</td>
			<td>8</td>
			<td>16 (2x8)</td>
			<td>8 HR</td>
			<td>400 HR</td>
			<td>32 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7K480T
		</tr>
		<tr>
			<td>XC7K480T</td>
			<td>Kintex-7</td>
			<td>37325</td>
			<td>298600</td>
			<td>27150</td>
			<td>955</td>
			<td>1920</td>
			<td>8</td>
			<td>16 (2x8)</td>
			<td>8 HR</td>
			<td>400 HR</td>
			<td>32 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7V585T</td>
			<td>Virtex-7</td>
			<td>45525</td>
			<td>364200</td>
			<td>27750</td>
			<td>795</td>
			<td>1260</td>
			<td>18</td>
			<td>18 (2x9)</td>
			<td>3 HR + 15 HP</td>
			<td>100 HR + 750 HP</td>
			<td>36 GTX</td>
			<td>3 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7V2000T</td>
			<td>Virtex-7</td>
			<td>152700</td>
			<td>1221600</td>
			<td>86200</td>
			<td>1292</td>
			<td>2160</td>
			<td>24</td>
			<td>24 (2x12)</td>
			<td>24 HP</td>
			<td>1200 HP</td>
			<td>36 GTX</td>
			<td>4 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>3D device, made of 4 identical FPGA die
		</tr>
		<tr>
			<td>XC7VX330T</td>
			<td>Virtex-7</td>
			<td>25500</td>
			<td>204000</td>
			<td>17550</td>
			<td>750</td>
			<td>1120</td>
			<td>14</td>
			<td>14 (2x7)</td>
			<td>1 HR + 13 HP</td>
			<td>50 HR + 650 HP</td>
			<td>28 GTH</td>
			<td>2 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX415T</td>
			<td>Virtex-7</td>
			<td>32200</td>
			<td>257600</td>
			<td>26100</td>
			<td>880</td>
			<td>2160</td>
			<td>12</td>
			<td>12 (2x6)</td>
			<td>12 HP</td>
			<td>600 HP</td>
			<td>48 GTH</td>
			<td>2 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX485T</td>
			<td>Virtex-7</td>
			<td>37950</td>
			<td>303600</td>
			<td>32700</td>
			<td>1030</td>
			<td>2800</td>
			<td>14</td>
			<td>14 (2x7)</td>
			<td>14 HP</td>
			<td>700 HP</td>
			<td>56 GTX</td>
			<td>4 Gen2×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX550T</td>
			<td>Virtex-7</td>
			<td>43300*</td>
			<td>346400*</td>
			<td>34900*</td>
			<td>1180*</td>
			<td>2880*</td>
			<td>20</td>
			<td>20 (2x10)</td>
			<td>20 HP</td>
			<td>600 HP</td>
			<td>80 GTH</td>
			<td>2 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>software-limitted version of XC7VX690T
		</tr>
		<tr>
			<td>XC7VX690T</td>
			<td>Virtex-7</td>
			<td>54150</td>
			<td>433200</td>
			<td>43550</td>
			<td>1470</td>
			<td>3600</td>
			<td>20</td>
			<td>20 (2x10)</td>
			<td>20 HP</td>
			<td>1000 HP</td>
			<td>80 GTH</td>
			<td>3 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX980T</td>
			<td>Virtex-7</td>
			<td>76500</td>
			<td>612000</td>
			<td>55350</td>
			<td>1500</td>
			<td>3600</td>
			<td>18</td>
			<td>18 (2x9)</td>
			<td>18 HP</td>
			<td>900 HP</td>
			<td>72 GTH</td>
			<td>3 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>
		</tr>
		<tr>
			<td>XC7VX1140T</td>
			<td>Virtex-7</td>
			<td>109400</td>
			<td>875200</td>
			<td>70800</td>
			<td>1880</td>
			<td>3360</td>
			<td>24</td>
			<td>24 (2x12)</td>
			<td>24 HP</td>
			<td>1100 HP</td>
			<td>96 GTH</td>
			<td>4 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>3D device, made of 4 identical FPGA die
		</tr>
		<tr>
			<td>XC7VH580T</td>
			<td>Virtex-7</td>
			<td>54700</td>
			<td>437600</td>
			<td>35400</td>
			<td>940</td>
			<td>1680</td>
			<td>12</td>
			<td>12 (2x6)</td>
			<td>12 HP</td>
			<td>600 HP</td>
			<td>48 GTH + 8 GTZ</td>
			<td>2 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>heterogenous 3D device, made of 2 FPGA die (identical to the XC7VX1140T FPGA die)
				and 1 GTZ die
		</tr>
		<tr>
			<td>XC7VH870T</td>
			<td>Virtex-7</td>
			<td>82050</td>
			<td>656400</td>
			<td>53100</td>
			<td>1410</td>
			<td>2520</td>
			<td>18</td>
			<td>18 (2x9)</td>
			<td>18 HP</td>
			<td>300 HP</td>
			<td>72 GTH + 16 GTZ</td>
			<td>3 Gen3×8</td>
			<td>1</td>
			<td>-</td>
			<td>heterogenous 3D device, made of 3 FPGA die (identical to the XC7VX1140T FPGA die)
				and 2 GTZ die
		</tr>
		<tr>
			<td>XC7Z007S</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)<sup id=cite_ref-73 class=reference><a href=#cite_note-73>[73]</a></sup></td>
			<td>1800*</td>
			<td>14400*</td>
			<td></td>
			<td>50*</td>
			<td>66*</td>
			<td>2</td>
			<td>4 (2x2)</td>
			<td>2 HR</td>
			<td>100 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>single core</td>
			<td>software-limitted XC7Z010 with one ARM core disabled
		</tr>
		<tr>
			<td>XC7Z012S</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)</td>
			<td>4300*</td>
			<td>34400*</td>
			<td></td>
			<td>72*</td>
			<td>120*</td>
			<td>3</td>
			<td>6 (2x3)</td>
			<td>3 HR</td>
			<td>150 HR</td>
			<td>4 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>single core</td>
			<td>software-limitted XC7Z015 with one ARM core disabled
		</tr>
		<tr>
			<td>XC7Z014S</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)</td>
			<td>5075*</td>
			<td>40600*</td>
			<td></td>
			<td>107*</td>
			<td>170*</td>
			<td>4</td>
			<td>6 (2x3)</td>
			<td>4 HR</td>
			<td>200 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>single core</td>
			<td>software-limitted XC7Z020 with one ARM core disabled
		</tr>
		<tr>
			<td>XC7Z010</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)</td>
			<td>2200</td>
			<td>17600</td>
			<td>1500</td>
			<td>60</td>
			<td>80</td>
			<td>2</td>
			<td>4 (2x2)</td>
			<td>2 HR</td>
			<td>100 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>dual core</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z015</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)</td>
			<td>5775</td>
			<td>46200</td>
			<td>3600</td>
			<td>95</td>
			<td>160</td>
			<td>3</td>
			<td>6 (2x3)</td>
			<td>3 HR</td>
			<td>150 HR</td>
			<td>4 GTP</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>dual core</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z020</td>
			<td>Zynq-7000 (Artix-7 FPGA fabric)</td>
			<td>6650</td>
			<td>53200</td>
			<td>4350</td>
			<td>140</td>
			<td>220</td>
			<td>4</td>
			<td>6 (2x3)</td>
			<td>4 HR</td>
			<td>200 HR</td>
			<td>-</td>
			<td>-</td>
			<td>1</td>
			<td>dual core</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z030</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)</td>
			<td>9825</td>
			<td>78600</td>
			<td>6650</td>
			<td>265</td>
			<td>400</td>
			<td>5</td>
			<td>8 (2x4)</td>
			<td>2 HR + 3 HP</td>
			<td>100 HR + 150 HP</td>
			<td>4 GTX</td>
			<td>1 Gen2×4</td>
			<td>1</td>
			<td>dual core</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z035</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)</td>
			<td>21487.5*</td>
			<td>171900*</td>
			<td></td>
			<td>500*</td>
			<td>900</td>
			<td>8</td>
			<td>14 (2x7)</td>
			<td>5 HR + 3 HP</td>
			<td>212 HR + 150 HP</td>
			<td>8 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>dual core</td>
			<td>software-limitted version of XC7Z045
		</tr>
		<tr>
			<td>XC7Z045</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)</td>
			<td>27325</td>
			<td>218600</td>
			<td>17600</td>
			<td>545</td>
			<td>900</td>
			<td>8</td>
			<td>14 (2x7)</td>
			<td>5 HR + 3 HP</td>
			<td>212 HR + 150 HP</td>
			<td>8 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>dual core</td>
			<td>
		</tr>
		<tr>
			<td>XC7Z100</td>
			<td>Zynq-7000 (Kintex-7 FPGA fabric)</td>
			<td>34675</td>
			<td>277400</td>
			<td>27050</td>
			<td>755</td>
			<td>2020</td>
			<td>8</td>
			<td>14 (2x7)</td>
			<td>5 HR + 3 HP</td>
			<td>250 HR + 150 HP</td>
			<td>16 GTX</td>
			<td>1 Gen2×8</td>
			<td>1</td>
			<td>dual core</td>
			<td>
	<tfoot>
</table>

Note: many 7 series devices are actually software-limitted versions of larger devices[\[74\]](#cite_note-74) for
example, XC7A35T is the exact same die as XC7A50T, with the same geometry and block count, but the Xilinx development
tools artificially limit device usage to the limits in the table above. Such software-limitted devices have very
different behavior from "full" devices when nearing full utilization: a design that would have utilized 90% of XC7A50T
resources will most likely fail to route (or succeed with very suboptimal performance), since the place&route tool will
have very little space to optimally arrange blocks and will likely run out of routing resources due to suboptimal
placement. However, an XC7A35T design that utilizes even 100% of its resources will almost certainly route with no
performance degradation, as it is far from the real hardware limits, and the placer has full freedom to utilize any
subset of the available blocks as long as the total used CLB/DSP/block RAM count is within the allowed software limit.
The software-enforced limits are marked with \* in the above table.

Note: some Spartan-7 devices are identical to some Artix-7 devices, but with disabled transceivers. However, this is
different from the above software-enforced usage limit: the transceivers cannot be used anyway, as their power and I/O
pads are not bonded out to device pins in the packaging.

Note: the Artix-7 devices use the same PCI Express block as Kintex-7 devices, with Gen2×8 support, but they can only be
used in at most Gen2×4 configuration due to GTP transceiver limitations.

Note: several devices have smaller max User I/Os count than the I/O bank count would imply. This means that the device
is not available in any packaging that actually bonds out the complete set of pads.
