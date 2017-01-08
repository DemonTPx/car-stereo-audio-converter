# Car stereo audio converter

Convert audio to use in (old) car stereo's which support MP3 CD's, but which do not support newer types of MP3 files (like VBR encoding and IDv3.2 tags).

I've originally made this to make sure that these audio files play and show their tags correctly in my Opel Astra which has a CD 30 MP3 audio system.

## Features

The `convert-all.sh` script will convert all files in the `in` folder and write the output into the `out` folder. It will run in parallel, which means that every CPU core will be used to convert your audio as fast as possible.

The output files will:

- be converted to 192kbps CBR MP3s
- get ID3v1.1 tags based on the existing tags
- have their ID3v2 tags, lyrics and album art images stripped off

## Prerequisites

On Ubuntu/Linux Mint you'll need to install the following packages:

```bash
sudo apt-get install libav-tools eyed3 libmp3lame0 parallel
```

Tested on Linux Mint 18.1

## Usage

Put some audio files in the `in/` folder. Then run this command from a terminal:

```bash
./convert-all.sh
```
