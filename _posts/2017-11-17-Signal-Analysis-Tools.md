---
title:  "Signal Analysis Tools"
date:   2017-11-17 15:04:23
categories: [about]
tags: []
---

Throughout my time at Penn State, I have been accruing quite a few useful signal analysis tools for acoustics. I have designed them to work together as a toolbox, as well as to stay relatively simple in function. (There are a few dependencies on some in-class functions, however, which I cannot re-publish here.)

Here are a few of the more useful ones, which I plan to update as I progress through my masters program:

* [Autocorr.m](/matlab/Autocorr.m)
	* Computes the autocorrelation of a mono discrete time waveform
* [constQFilt.m](/matlab/constQFilt.m)
	* Creates a constant Q filter with given parameters
* [corrCoeff.m](/matlab/corrCoeff.m)
	* Computes the correlation coefficient from a cross correlation vector
* [Crosscor2delay.m](/matlab/Crosscor2delay.m)
	* Finds the delay from a cross corrlation vector by finding the delay of a peak correlation value relative to the input mono discrete time waveform x[n].
* [spectro.m](/matlab/spectro.m)
	* Creates a spectrogram with variable parameters and time/frequency resolution
* [time2CrossPSD.m](/matlab/time2CrossPSD.m)
	* Finds the cross power spectral density between two mono discrete time waveforms
* [time2PSD.m](/matlab/time2PSD.m)
	* This function converts a discrete time signal to a single-sided power spectral density
* [time2PSD2side.m](/matlab/time2PSD.m)
	* This function converts a discrete time signal to a double-sided power spectral density
* [time2PSDAvg.m](/matlab/time2PSDAvg.m)
	* This function converts a discrete time signal to a time-averaged single-sided power spectral density
* [time2PSDAvgAdvanced.m](/matlab/time2PSDAvgAdvanced.m)
	* Same as time2PSDAvg with the option to window and overlap time-average records




