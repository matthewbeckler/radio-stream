Based on https://medium.com/@luigifcruz/listening-live-fm-radio-over-the-network-with-rtl-sdr-2349c5abe878

    rtl_fm -g50 -f 96.9M -M wfm -s 180k -E deemp |
    sox -traw -r180k -es -b16 -c1 -V1 - -t flac - |
    cvlc - --sout ‘#standard{access=http,mux=mp3,dst=localhost:8080/audio.mp3}’

https://wiki.videolan.org/Documentation:Streaming_HowTo/Command_Line_Examples/#Using_VLC_as_a_reflector

# Build

```
docker build -t radio-stream .
```

# Run a bash shell inside container

```
docker run --interactive --tty radio-stream /bin/bash
```
