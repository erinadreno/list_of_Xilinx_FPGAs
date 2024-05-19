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
*   [12 UltraScale](#UltraScale) <!-- github does not like "+" in link for some reason -->
*   [13 UltraScale+](#UltraScale-plus)
*   [14 Versal](#Versal)
*   [15 Alveo and Kria](#Alveo-and-Kria)
*   [16 FPGAs without integrated CPUs\[86\]](#FPGAs-without-integrated-CPUs-86)
    *   [16.1 Artix](#Artix)
    *   [16.2 Kintex](#Kintex)
*   [17 References](#References)

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
	* Ultrascale+ FPGA devices can be roughly categorized into 3 generations, with `XC[V/K/A/S]U[0-9][0-9]P` being the general naming scheme. The `V/K/A/S` represents five product lines of Virtex, Kintex, Artrix, and Spartan, respectively. The one or two digit number `[0-9][0-9]` represents both the generation and (roughly) device capacity,
		* The first generation devices are given the designation of 3-19, with higher numbers generally representing the product sits in top of the hierarchy.
		* The second generation devices (integrated high speed SerDes transceiver for (tele)communication applications) are given the designation of 23-29.
		* The third generation devices (added HBM controller) are given the designation of 31-57, with the first digit representing the amount of on-package HBM.  
    * Zynq series after Ultrascale+ has a unique naming scheme with `XCVU[0-9][0-9][A-Z][A-Z]`. the two letters follows the same general rules as pure FPGA devices, with the two letter suffix representing different product lines. 
      * `EV,EG,(T)CG` devices are only available in the first generation; `(T)CG` devices only have ARM cores; `EG` devices have ARM cores as well as GPU; `EV` devices have ARM cores, GPU, and video decoder;
      * `DR` devices are available in 3 generations, first gen `ZU[21-29]DR`, second gen `ZU39DR`, and third gen `ZU[42-49]DR`. There are also DFE devices which heavily favors hardened IP, which are given the designation of `ZU[63-67]DR`. All devices integrated ARM cores, high speed ADC, and DAC.
