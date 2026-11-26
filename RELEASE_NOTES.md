

## Bug fixes

- Fix orientation in the clipping module after having selected the freehand aspect ratio.

- Fix compilation issue in AVIF format support.

- Fix multiple small memory leaks.

- Fix daylight saving time in $(EXIF_HOUR) variable.

- Fix timestamp display on Windows (use UTF-8 format for timestamps).

Version 12 is functionally the same as dt-lite11_16, but lots of changes under the hood.

- 12_01 adds a slightly enlarged warning box for the database maintenance

- 12_02 adds back a rather dodgy version of amaze_demosaic_RT, shifted to C. It works in that it generates
an image that looks like very bad brickwork with a faded mural on. Don't use!

Still to do:

1. Fix the non-responsive slide-bar (which I had just done before I let the old version
   disappear)

2. Add check-JSON

