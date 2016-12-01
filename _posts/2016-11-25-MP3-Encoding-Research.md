---
title:  "Research on Subjective Quality Preference of Compressed Music"
date:   2016-11-25 15:04:23
categories: [about]
tags: []
---


Having forked over my email address to the likes of [Tidal](http://tidal.com/) - a music streaming service that promises higher quality music streaming than Spotify - in return for an early stream of "The Life of Pablo," I was eager to see if I could actually tell the difference between Spotify's and Tidal's audio streaming quality. Of course, I thought I could tell the difference - but could I tell the two apart without knowing which service I was listening to?


I had been discussing independent research with a professor at Northeastern, and we thought this would be a great topic to investigate. Throughout 2016, we have been working on this research project, though we are still not finished writing the final draft of our results. However, I think it worthwhile to summarize the bulk of our findings. Below is a rather involved synopsis of our experiment and its results.

_______

Most popular streaming services, such as Spotify, delete more than nine tenths of the audio data in a song through a process known as lossy data compression. The files that result are called lossy audio files, as opposed to lossless, or CD-quality files. While it may be true that a few superior listeners can tell the difference between lossy MP3 encoded audio files and their lossless counterparts in a high quality listening environment, [studies have shown]() that the average listener usually cannot tell the difference. Moreover, modern streaming services are most used in public places rife with background noise.

My research team and I hypothesized that discerning between lossy and lossless audio would be more difficult in realistic noisy listening environments, so we wanted to explore the effect of signal to noise ration on lossy and lossless subjective quality preferences. We also wanted to see if listening volume had an effect on preference decisions.

The independent variables for our experiment were as follows:

- **Bit rate**: 
    - Highest quality: lossless 1411 kilobyte per second (kbps) CD-Quality audio
    - Spotify's Mobile High Quality: 160 kbp
    - Spotify's Mobile Normal Quality: 96 kbps
    - Audibly low quality: 32 kbps
- **SNR**
	- "noiseless"
	- "noisy", with noise modeled after a sample taken from the Green Line of the T
- **intensity level** 
	- "quiet" (60 dB SPL)
	- "loud" (80 dB SPL)
- **dynamic range**
	- High dynamic range: Beethoven's 9th
	- Medium dynamic range: Daft Punk's Around the World
	- Low dynamic range: Green Day's American Idiot (ah, the mastering of the 2000's)

This gave us audio files of four different bit rates for each environment (loud+noiseless, loud+noisy, quiet+noiseless, quiet+noisy), and for each of the three songs.

Participants were forced to choose which audio file they preferred out of a "match-up" of two bit rates in a given environment and for a given song. Thus, for that given environment and song, if we don't see a trend towards either bit rate being consistently preferred after repeated match-up's, we can conclude that the listener has an equal preference for each bit rate - in other words, that they can't tell the difference between the two given encoding bit rates for that particular environment and song.

Below is an early depiction of our results, averaged across participants:

![results](/images/portfolio-pics/research-plots.jpg)

These results indicated that, as expected, there was almost unanimous preference for bit rates greater than 32 kbps - we expected this. We had included the 32 kbps files as "controls", since they are quite obviously low-quality. [Here is American Idiot at 32 kbps](/sounds/green-day-32.mp3) - pretty rough stuff. We included these to make sure our participants were not guessing randomly.

However, besides our control case, under almost *all* environments and songs, listeners could not distinguish the lossless audio from the MP3 audio, even for our 96 kbps MP3 files under loud+noiseless conditions. Only a few exceptions existed, and even for these exceptions, counter-intuitively, participants preferred the MP3 audio to the lossless file. In our paper, we discuss various reasons this might have been the case.

Our results are another strong showing for the impressive lossy MP3 compression scheme, and a bit of bad news for the likes of [Tidal](http://tidal.com/us) and [Pono](https://www.ponomusic.com/) (sorry Jay Z and Neil Young... I still like your music...). Suffice it to say, I am bouncing all my preliminary mixes as 320 kbps MP3 files now.

I hope to post a few different audio files here at some point so that you can try hearing the difference yourself! I promise it's very difficult.

As the paper is finalized, I will post it here, and clean this up a little. Hopefully we will be able to publish our findings soon!