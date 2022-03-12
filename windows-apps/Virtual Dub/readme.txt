https://sourceforge.net/projects/virtualdubffmpeginputplugin/

From raythe0n's origional plugin, modified by tateu, later modified by dloneranger

Requires Virtualdub version 1.10.xx

Last version that works with XP is V1.8.4.2

If virtualdub crashes, try reducing its render buffers to 8
This is found on the options menu -> performance dialog
Set the render pipelinevideo buffering to 8 buffers

V1.9.0.5
Update ffdlls to 4.1.1
Fix unicode string to uft8 conversio for passing to ffdll

V1.9.0.4
Update ffdlls to 4.1.0
Improve audio/video sync code for weird videos
Misc negligable fixes

V1.9.0.3
Update ffdlls to 4.0.2
Add 1 and 2 decibels to audio boost options from the previous lowest of 4
Modify wmv seeking. Option added to add fake keyframes for virtualdubs seeking
Modify discontinuity detection to error out on detection of '>x' missing frames, not after reading '>x' missing frames
 - stopping at the start of the error region, not the end
Fix EOF possible null pointer crash
Misc minor changes

V1.9.0.2 [27 May 2018]
Fix a few bugs
Speed up keyframe seeking a bit more
Speed up by multi-threaded decoding

V1.9.0.1 [23 May 2018]
Fix a few crashable bugs
Speed up keyframe seeking a bit more

V1.9.0.0 
Update ffdlls to 4.0.0 - these have new names and the old ones can be deleted
Reworked audio to use ffmpegs new api
 - decoding with sendpacket/receiveframe
 - downmixing by ffmpeg
 - changed options dialog to allow user set center channel level boost for vids where the dialog is too quiet
Modified key frames seeking to be faster in a lot of files
Fixed a possible null pointer crash at end of file
Workaround for virtualsdubs batch mode throwing away decoded frames when it's reading the file faster than decoding it
 - the best fix for this is to still set virtualdubs render pipleinevideo to a low value like 8
Modified the aspect ratio correction for files that are encoded at a different size to the decoded size
Modified file information dialog to show this aspect ratio change accurately
Misc changes needed to use the newer ffmpeg 4.0.0 changes
Fix call to non standard virtualdub version wasn't stripped from normal builds

V1.8.5.2 [27 April 2018]
Some bug fixes
Update to compiling with visual studio 2017

V1.8.5.1 [26 Feb 2018]
Update ffdlls to 3.4.2
Some bug fixes
Improve locking on to common fps for minor variances eg 29.9702->29.97, 24.999->25

V1.8.5.0 [29 Oct 2017]
Update ffdlls to 3.4.0

V1.8.4.9 [21 May 2017]
Update ffdlls to 3.3.1
Misc fixes
Fix colourspace handling mistake

V1.8.4.8 [28 December 2016]
Update ffdlls to 3.2.2
Increase video packet buffer size to help oddly muxed audio forcing dropped video packets
Add some better thread protection for stopping unbuffered frame errors

V1.8.4.7 [7 November 2016]
Update ffdlls to 3.2.0
Fix memory leak on unused extra video/audio streams
Misc small fixes

V1.8.4.6 [22 August 2016]
Update ffdlls to 3.1.2
Fix misconfigured buffer size in batch mode if virtualdubs buffer size was 256
Minor fixes

V1.8.4.5 [11 August 2016]
Tweak seek code for bad seeking streams
Fix out of memory problem for video streams that have repeated missing frames
> eg every 5th frame is missing in a 'faked' 23.976 to 29.970 conversion
Improved keyframe seeking code

V1.8.4.4 [4 July 2016]
Update ffdlls to 3.1.1
Improve frame decoding at the end of a file and EOF detection
Support for more audio layouts eg 8 channels
Improve seeking + extra seeking option added
> 'Use video stream for audio seek'
> when virtualdub seeks on the aduio, try using the video track for positioning
> it's an option in case theres a file it goes horribly wrong with it
Reworked video decoding to use ffmpeg send_packet/receive_frame

V1.8.4.3 [1 April 2016]
Update ffdlls to 3.0.1 *********** support for XP has been removed ***********
Fix bugs -> key frame detection, seeking
Fix detection and selection of multiple audio streams

V1.8.4.2 [1 March 2016]
Update ffdlls to 3.0.0
Fix bugs
Buffering of video frames is now always on
> the amount of memory used can be increased in the options
There were a lot of changes under the hood, so if there's any problems
> please report, preferably with a link to a sample I can test

V1.8.4.1 [4 February 2016]
Update ffdlls to 2.8.6
Modify the buffering code (still turned off by default in the options)
> use half ram available to virtualdub (max 2Gb)
> read ahead of keyframe sized sections in virtualdubs batch mode
> hopefully this helps with nasty audio/video interleaving
> no bugs reported yet but it's still experimenal
Fix old bug with double pop of packets causing decode error and reseek/decoding
Fix better identification of keyframes to start decofding after a seek
>  the two fixes should give better response when scrubbing around in virtualdub

V1.8.4.0 [24 January 2016]
Add experimental buffering of previously decoded video frames
> disabled by default in the options dialog
> only buffers when virtualdub has >550Mb of free ram available and uses a max of 512Mb

V1.8.3.9 [18 January 2016]
Update ffdlls to 2.8.5
Modify audio sync handling

V1.8.3.8 [26 December 2015]
Update ffdlls to 2.8.4
Rework code for deprecated some ffmpeg functions
Update buffer overwrite safety
Fix ffmpeg decodes some video frames to a larger buffer size than it says it needs when decoding
Added boost centre audio channel when downmixing in options dialog

V1.8.3.7 [19 November 2015]
Update ffdlls to 2.8.2
Update restore .avs handling

V1.8.3.6 [25 September 2015]
Update ffdlls to 2.8.0
Rewrite of code to allow ffdll changes to compile - hopefully no bugs.....

V1.8.3.5 [12 August 2015]
Add attempt better fps detection for videos ffmpeg thinks are 1000 fps (scans 500 frames in middle of video so can introduce a delay when loading)

V1.8.3.4 [1 August 2015]
Update ffdlls to 2.7.2
Fix audio stream selection with audio from another file

V1.8.3.3 [26 June 2015]
Update ffdlls to 2.7.1

V1.8.3.2 [13 June 2015]
Update ffdlls to 2.7.0
*.m2v added to file extension list in virtualdubs 'open video' dialog

V1.8.3.1 [6 June 2015]
Add loading image files .jpg, .bmp etc
Fix file information display issues with image files not having start times or length
Add loading animated .gif files 
> still in testing, have to count frames in code and adjust fps for variable duration frames
> I could easily have gotton the fps wrong.... best to check by playing

V1.8.3.0 [1 June 2015]
Adjust aspect ratio - special case 1440x1080 to 1920x1080
Fix videos that were only 1 frame long could cause a crash

V1.8.2.9 [24 May 2015]
Update ffdlls to 2.6.3

V1.8.2.8 [17 April 2015]
Update ffdlls to 2.6.2
Fix integer overflow with fractional calculations when checking fps

V1.8.2.7 [4 April 2015]
Add check video stream at 1/3, 1/2 and 2/3 for height, width and aspect ratio
> then use the biggest available as fix for streams that have a smaller sized intro

V1.8.2.6 [26 March 2015]
Update ffdlls to 2.6.1
Fix make prescan option work again after disabling it for testing in previous version

V1.8.2.5 [8 March 2015]
Update ffdlls to 2.6.0
Add checkbox to enable/disable priority - with it enabled, virtualdub is giving us .avs files even though we don't want them
Change version number so it's higher than a very old version that was released

V0.8.2.4 [25 February 2015]
Added set plugin priority in the extended options dialog and file information dialog
Added plugin is selectable from audio menu 'from another file'
Fix better handling of truncated audio stream
Fix seek recursion endless loop
Modify fallback of reading options from HKLM registry in case an installer wants to set any options on install
Fix bug in seeking loop (accidental = instead of ==)

V0.8.2.3 [14 February 2015]
Update ffdlls to 2.5.4
Fix small bug in offset audio when dropped frames are at the beginning
Modify ensure width/height are mod2 when aspect scaling is enabled
Modify use lanczos scaling when aspect ratio is enabled

V0.8.2.2 [31 January 2015]
Modified use longest duration of audio when stream and format lengths are different
Modify pad end of audio packet when at the end of an audio stream
Fix reading very first audio packet when seeking
Fix honouring the sync video/audio option when turned off
Modify try reducing some seeks in the audio
Modify add extra codec info to file information dialog
Fix video stream may change height/width during decoding, caused green bars at bottom or right
Fix decode error in sws_scale that could crash on certain height/widths when playing in virtualdub
Modify file information dialog to add some more info
Modify audio delay when first frames are dropped 

V0.8.2.1 [24 January 2015]
Workaround seeking in wmv files could be way off - ask ffdlls for frame 2000 and actually get 2500..sigh...
Fix setting the first audio stream to the best choice relating to the video when there are multiple audio streams
Modify don't autosync audio that's more than 15 minutes out of sync
> fix for some .ts files where audio streams are marked as starting a log way off from the video

V0.8.2.0 [20 January 2015]
Update ffdlls to 2.5.3
Fix bug where seeking would get stuck in a loop
> silly mistake, a - should have been a + so instead of moving back trying to find the frame it moved forwards
> couldn't find the frame and would try again, still moving forwards..... oops
Fix once the above bug was fixed, retrying could be improved to it quits faster on undecodable video frames
> with the bug above, the code for undecodable frames was called for valid frames
Fix with both of those fixed, some nasty peekmessage code could be stripped out
> it was only there to keep the buttons working in virtualdub when the plugin was stuck in a loop
> so you could move to a different frame and get it out of the loop
> it was a very nasty hack!!
>and all because of a minus sign.....
Fix files with extra video streams of 1 frame thumbnail images could confuse the plugin
Change files with no keyframe index information are scanned when opened to let the ffmpeg dlls build one
>this is an option in the plugins preferences (on by default)
>may cause a delay on opening a file, but quicker seeking when open
Fix trying to cut down on possibly unneeded seeks to try and make playing a video in virtualdub smoother (less stuttering on audio)
Fix sometimes a missing frame in the video would manage to skip the code that reports an error to virtualdub
>then virtualdub would try again, looping until it was killed
Fix bug not clearing buffers after a seek sometimes

V0.8.1.9 [29 December 2014]
Update ffdlls to 2.5.2
Fix very old audio positioning bug
Fix filling mono empty data with correct value
Fix try to correct sync of audio at the start when it's been offset
Fix crash at end of video
Fix repeat last frame at end of video where b-frames cause a shift at the start
Fix strange error where you'd get 90000fps for the source file (thanks shek for finding it)
Fix error that would slow decoding if frame rates were being altered eg by IVTC
Fix seek error in some formats where seeking on the audio failed
Fix seek to first frame for some formats
Remove .avs from default file extensions, avisynth already needs to be installed and virtualdub already handles .avs better
Fix setting first starting frame to only skip leading undecodable b-frames as there are vids with no I-frames (just P&B)
Improve seeking in audio with some formats

v0.8.1.8 [16 December 2014]
Update ffdlls to 2.5.1
Fix first starting frame where there are leading b-frames

v0.8.1.7 [30 August 2014]
Update ffdlls to 2.3.2
- delete the old ones, these have new numbering
Added option(on by default) to sync the audio timestamp start to the video one
- fixes some out of sync problems where the audio is off by the same amount all the way through the video

v0.8.1.6 [17 July 2014]
Update ffdlls to 2.3.0
FFDlls now need swresample-0.dll also
swresample-0.dll added

v0.8.1.5 [26 May 2014]
Update ffdlls to 2.2.2

v0.8.1.4 [20 Apr 2014]
Added error checking for missing ffmpeg dlls
Larger maximum index size for seeking
Timeout for decoding video/audio frames of 2 minutes so job's don't get stuck on queue
(->not perfect, virtualdub can still get in a seemingly endless loop on some errors)
Reporting decoding errors back to virtualdub on discontinuity
Error handling option for allowing an occasional missing frame(s)
More accurate discontinuity handling, will backtrack further through the file before giving up on a missing frame
Better fps detection
Some better handling of decoding errors

v0.8.1.3 [29 Mar 2014]
Fix another edge case with seeking getting stuck on a frame
The day after 0.8.1.2 was released, a failing file was sent to me
Sample .mts file had packets needed for a pts time scattered throughout the file
It's fixed now, but a file like that can be slow to decode as it was made so you have to read almost the entire file to get 1 frame of video
Fix doesn't affect speed of decoding files that aren't like that (I think it's a test sample made to try and break decoders)
On the other hand FFMpeg plugin is more robust at decoding bizarre .mts files

v0.8.1.2 [28 Mar 2014]
Fixed some formats with large keyframe intervals or weird pts/dts had trouble seeking and would only show keyframes after the first seek
Extra seeking further back to find a valid keyframe is done now if an initial seek fails
Some seeking optimizations
Updated FFMpeg dlls to 27/03/2014 - v2.2.0 isn't on zeranoes site, so these are the first dlls after v2.2.0

v0.8.1.1 [20 Mar 2014]
After a night sleep, thought of a better way to get the very end frames of the source file 
Sorry about the quick release but it's better now and didn't want to hold it just because it was so soon

v0.8.1.0 [19 Mar 2014]
Problem that caused incomplete video frames to be returned to virtualdub (garbled moving blocks) especially after seeking
Problem with some formats (eg mkv) when seeking back to the start of the file
Problem with the wrong video frame being shown (repeatedly) after turning audio display off and back on
Better handling of video/audio at the end frames of the file
Added installer c/o raffriff42

v0.8.0.9 [3 Mar 2014]
Bugfix for audio downsampling mistake I introduced in 0.8.0.7
Replaced download with one that doesn't require AVX cpu - sorry about that

v0.8.0.8 [27 Feb 2014]
Updated ffdlls to 2.1.4

v0.8.0.7 [23 Jan 2014]
Added option, default video decoding format for unusual formats
(There are many formats that virtualdub doesn't handle, now you can choose how they are decoded)
Updated ffdlls to 2.1.3

0.8.0.6
Fixed crash from FFDshow dlls logging
Added more native virtualdub video formats, so less are converted to rgb
-> yuv 410p, 422p, 444p, nv12, nv21
Changed default format to rgb32 from rgb24

0.8.0.5
Added option for FFMPeg autodetecting 709 colorspace - if that info is in the source file
Added option for setting 709 colorspace for source file height>=720
Use the ask for extended options checkbox on opening a video to set them
Disabled by default


0.8.0.4
Fixed so registry works on XP
Includes required ffmpeg dlls

0.8.0.3
Settings saved in registry

0.8.0.2 (a)
The "Adjust Pixel Aspect Ratio" option is disabled by default
0.8.0.2a plugin

0.8.0.2
- Implemented full support for multichannel.
- Fixed a memory leak.
- When opening a file with the plugin, if you select "Ask for extened options after this dialog", you get the following options for audio
-- Downmix Audio - if selected, downmixes multichannel to stereo (off by default).
-- Limit Audio To 16-bit - converts 32-bit audio source to 16-bit samples (off by default).

Note that virtualdub has some limitations when dealing with multichannel or 32-bit source audio:
- Some audio compression codecs do not accept multichannel or 32-bit samples as input.
- Virtualdub menu Audio->Conversion does not know how to mix multichannel down to stereo, or convert 32-bit audio to 16-bit.
- Therefore, above options in "Open video file" were implemented to convert to stereo or 16-bit if necessary.
0.8.0.2 plugin
0.8.0.2 source

0.8.0.0
- Upgraded to current versions of ffmpeg - avcodec-55, avformat-55, avutils-52, swscale-2.
- Minimized usage of deprecated features in ffmpeg.
- Added support for planar audio formats.
- Added support for 32-bit audio samples.
- There's tentative support for multichannel, but Virtualdub hangs when fed multichannel audio by an input plugin. So for now, multichannel is down-mixed to stereo as before. See Below.
- Fixed a bug that caused garbled audio and occasional crashes near the end of playback.
- Split the sources to make them more manageable.
- VS2012 project files. 