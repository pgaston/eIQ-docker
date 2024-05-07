# Attempt to run eIQ on Ubuntu 22 (or 24)
Issue is that eIQ v1.11 only runs on Ubuntu 20 (or Windows - and no GPU support for training on Windows).

See the file 'notes' on how to build/run.

Core UI works.   Data loads.    (Pascal VOC train/test from manual.)

Current issues:
- Will not train and throws an error.   **TRY AGAIN**
- Seems to hang in spots.
- Command line button fails.   Appears there is a work around (not tested) - see user manual.
- TF-TRT Warning: Could not find TensorRT.    Not sure if this is a real problem.

