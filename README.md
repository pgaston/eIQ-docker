# Attempt to run eIQ on Ubuntu 22 (or 24)
Issue is that eIQ v1.10 only runs on Ubuntu 20 (or Windows).

See the file 'notes' on how to build/run.

Core UI works.   Data loads.    (Pascal VOC train/test from manual.)

Current issues:
- Seems to hang in spots.
- Tried to run the Pascal VOC example from the manual.    Loaded fine, crashed hard on some obscure 'padding' error.   Could be Tensorflow or cuDNN version failure.
- Command line button fails.   Appears there is a work around (not tested) - see user manual.
- TF-TRT Warning: Could not find TensorRT.    Not sure if this is a real problem.

