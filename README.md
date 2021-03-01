Readme
=======

This is a list of rules that should be considered when writing music code.
All of these notes are when coding for channels 1, 0, 4 and 6.
The author has not enough experience to write for channels 2, 3, 5 and 7.

Rests
---------------------------------
1. Always put rests right after notes. When putting multiple rests, the limit being 255, combine them as much as possible.
2. If there are multiple rests (wait macros), then turn the volume to $0. If this is not done, the audio blips at the interval.
3. Make sure every channel data label ends with a "cmdff" so the game knows to end reading there.


Tempo and Note Lengths
---------------------------------
1. 150 BPM is the standard tempo where quarter notes are length 24. These can be divided into by 2 four times and 3 once.
2. When formulating a new tempo, divide 150 by the desired tempo then multiply that ratio by 24 to get the new quarter note value.
3. There are no measure macros, so measures should be commented in as to make reading easier.
4. Use ".redefine BEAT [value] if you would like to take out a common factor of your input lengths.
	1. For example, if you have
		>beat a 12 b 24 c 6
        >
	2. You can shorten this by using
		>.redefine BEAT 6
        >
		>beat a 2 b 4 c 1
        >
	3. NOTE: This does not change the size of byte (in-game data will still read 12, 24, etc. [$0c, $18, etc.])
5. It is suggested to use decimals for lengths unless you are comfortable with hexadecimal arithmetic.
6. This data is written into bits, so no value can be greater than 255 [$ff].
7. Use ".redefine NOTE_END_WAIT [value]" if you wish to shorten notes using rests in between.
	1. You can also change the volume
	>	vol $6
    >
	>	beat a 12
    >
	>	vol $3
    >
	>	beat a 12
    >
	>	vol $6
    >
	>	beat b 6 d 6 c 12
    >
	2. You can also change the envelope
	>	env $0 $04
    >
	>	beat a 24
    >
	>	env $0 $00
    >
	>	beat b 6 d 6 c 12
    >

Beat Macro
---------------------------------
1. This is your main macro. Please use this instead of the Note macro. (The note macro is a single line macro.)
2. Typically, you will use the Beat macro the same as you would the Note macro, with pitch value first and length value second.
	1. beat d4 24 cs 5
3. The Beat macro can use either relative or absolute systems of pitches.
	1. Absolute system: Pitches have notation of octave
	    1. d5 c3 g4
	2. Relative system: Pitches do not have notation of octave
		1. d c g
		2. Go to Pitches section to learn how to set octaves in the Relative system.
	3. Thus, the Beat macro can either look like this
		> beat d5 24 c3 6 g4 12	;or this
        >
		> beat d 24 od od c 24 ou g 12
        >
	4. Go to Pitches to learn what "od" and "ou" mean.


Pitches
---------------------------------
1. Always start music with the Octave macro, as that will define your octave when using relative pitches.
	1. For example, if the base game data shows
		>note g3 $18
        >
	2. This translates as
		>octave 3
        >
		>beat g 24
        >
2. You can shift octaves by either using the Beat macro
	1. beat ou		;for octave up
	2. beat od		;for octave down
	3. These can be combined into single lines with actual pitch data
		>beat a 8 b 8 ou c 8 d 24
        >
3. You can also use single line macros.
	1. octaveu
	2. octaved
4. There is no notation for flats, only sharps. Thus a single octave of a chromatic scale is as follows:
	1. c cs d ds e f fs g gs a as b
5. Do NOT place notes to play the same pitch on different channels at the same time.
	1. It causes the audio to glitch and strains the ears.
	2. This is allowable when notes are relatively quick, but should still be avoided.
6. If you wish to repeat the same pitch subsequently, put a space of at least 2 (BEAT == 1) between each note.
	>beat a 22 r 2 a 24
    >



General Rules
---------------------------------
1. The Duty macro changes timbre (sound type) while the Env macro changes lengths and dynamics (take this as a grain of salt).
2. Channels are listed in this order: Channel 1, 0, 4 then 6.
    1.	1 and 0 are square: 	Melody and Countermelody
	2.  4 is saw:		Bassline
	3.  6 is noise:		Percussion


Env Macro		(empirical findings, actual use may be different)
-------------------------------------------------------------------------
1. Env $0 $00 is the default for Channels 1 and 0, which are the only two channels that this macros should be used.
2. The first input for Env tells how much pitches should bleed together.
	The second tells how short the notes should be ($00 is long and $07 is short).
3. The first input can only go up to $7
	The second can be any size, but code takes the [Input AND $07].
4. Don't play shorter notes for this macro as it has staccato built in.

Duty Macro		(empirical findings, actual use may be different)
--------------------------------------------------------------------------
1. The Duty macro can be used for Channels 1, 0 and 4.
	1. Channels 1 and 0: Inputs range from $00 to $03.
		1. $00 and $01: Hard
		2. $02 and $03: Soft
	1. Channel 4: Inputs can be anything, but this also affects the volume.
		1. $0a: Forte	(timbre changes)
		2. $0e: Mezzoforte	(used by base game)
		3. $14: Mezzopiano (timbre changes)
		4. $0f: Piano	(used by base game)


Vol Macro
---------------------------------
1. This does not affect Channel 4 in any way. Use Duty instead.
	1. Inputs range from $0 to $f
		1. $2: Pianissimo
		2. $4: Piano
		3. $6: Mezzoforte (use this the most)
		4. $8: Forte

Jumps and Conditional Jumps
---------------------------------
1. When creating labels, notate:
	1. the name of the piece				                    
        > [mapleMinigame]
	2. the name of the channel 				                    
        > [Channel1]
	3. the measure of the label or pertinant info about the label
        > [Measure2]
	4. Example:							 mapleMinigameChannel1Measure2
2. Jumps, named the Goto macro, are used by the base game to repeat a whole piece. There is only one input:
	1. place/label to jump
	2. Example:							goto mapleMinigameChannel1Measure2
3. Conditional jumps are used by all of these custom pieces and thus three files for your hack must be changed.
	1. code/audio.s
	2. include/musicMacros.s
	3. include/wram.s
	4. I include in this repository the updated versions of what you'll need. Hopefully it is compatible.
4. The conditional jump, named the GotoCond macro, has two inputs:
	1. required coda value
	2. place/label to jump
	3. Example:			 				gotoCond 2 mapleMinigameChannel1Measure2


Coda Macros
---------------------------------
1. There are two macros that can change the coda (value that is used by the conditional jump to know what to do).
	1. resetCoda		(sets coda to 0 [$00])
	2. incCoda		(increases coda by 1 [$01])
2. There are no additional arguments to these macros.
3. Since the wram coda variables (there are 8, one for each channel) start as $ff, you will have to place a 
	ResetCoda before your first IncCoda.
4. There are two main ways to use the Coda macros with the conditional jump:
	1. If you want to only repeat once:

		>>	resetCoda
        >
		>mapleMinigameChannel1Measure2:
        >
        >; Measure 2
        >
		>>	incCoda
        >
		>>	octave 3
        >
		>>	beat g 48
        >
		>	
		>>	gotoCond 1 mapleMinigameChannel1Measure2
        >
        >
		>mapleMinigameChannel1Measure3:
        >
        >; Measure 3
        >
		>>	etc.
        >

	2. If you want to repeat more than once:

		>>	resetCoda
        >
		>mapleMinigameChannel1Measure2:
        >
		>; Measure 2
        >
		>>	incCoda
        >
		>>	octave 3
        >
		>>	beat g 24
        >
		>	
		>>	gotoCond 4 mapleMinigameChannel1Measure3
        >
		>>	goto mapleMinigameChannel1Measure2
        >
		>
		>mapleMinigameChannel1Measure3:
        >
		>; Measure 3
        >
		>>	etc.
        >

5. incCoda can be stacked, meaning that a ResetCoda is not necessary to create a new chain.
	1. You should notate the value of coda after noteworthy jumps so to not get confused.
	2. Example:

		>>	resetCoda
        >
		>mapleMinigameChannel1Measure2:
        >
		>; Measure 2
        >
		>>	incCoda
        >
		>>	octave 3
        >
		>>	beat g 24
        >
		>	
		>>	gotoCond 4 mapleMinigameChannel1Measure3
        >
		>>	goto mapleMinigameChannel1Measure2
        >
		>
		>mapleMinigameChannel1Measure3:
        >
		>; Coda = 4
        >
		>; Measure 3
        >
		>>	incCoda
        >
		>>	octave 3
        >
		>>	beat g 48
        >
		>	
		>>	gotoCond 5 mapleMinigameChannel1Measure3		;this is 5 because we want it to jump the first time.
        >
        >
		>mapleMinigameChannel1Measure4:
        >
		>; Measure 4
        >
		>>	etc.
        >

Supplemental Music Notation Software
--------------------------------------
1. I use MuseScore, a free music software easily downloadable.You are not required to use this as it is more to allow
	better spatial reasoning in the music.
2. Try to remember what each note length translates to in the music! This is imperative if you decide to use notation software.

How to Use this Repository
=========================
1. Within each of these folders, there are several files. Typically, they will have 2-3, if not 4.
    1. S file [.s]
    2. MuseScore file [.mscz]
    3. Music file [.mp3]
    4. Music Sheet used for transposition [.pdf]
2. To insert the music into your romhack
	1. Replace the three files in oracles-disasmCode in this repository. (This only needs to be done once, unless there is a new commit to these files.)
        1. audio.s goes in oracles-disasm/code/
        2. musicMacros.s and wram.s go in oracles-disasm/include/
            1. If you are not able to completely replace wram.s, you may search for "wChannelCodas" within the file and replace the necessary data into your own wram.s.
    2. Locate your hack's channel data in audio/[game]/channelData.s
    3. Search for GAP within this file and delete the several hundreds of lines of code for "cmdff". These are placeholder bytes that can be deleted safely. This will help save space for when you import the channel data.
    4. Take the S file from whatever song you wish to import. Find the appropriate place you wish to put it. Typically, you will have to replace an original song in order for it to fit.
        1. If you used replacement:
            1. Go to soundChannelPointers.s and replace whatever sound name you used to using the title of the S file concatenated with the proper channel number.
                > mapleMinigame.s --> mapleMinigameStart, mapleMinigameChannel1, etc.
            2. Go to soundPointers.s and do the same, but this time there should only be one label to replace.
            3. You should also go to constants/music.s and replace the appropriate label for your sound if you're building a game from scratch. This is not recommended unless you are prepared for error messages where the original label was used in the disassembly.
        2. If you did not use replacement:
            1. Do the same as a., but add a new (set of) lines to each file as to complete a new set of labels.
    5. At this point, you should be able to Make the game. If there are any errors, make sure you did everything exactly as the instructions. If you're still getting errors, contact me at the [Oracles romhacking discord](https://discord.gg/wCpPPNZ "Oracles romhacking discord")













