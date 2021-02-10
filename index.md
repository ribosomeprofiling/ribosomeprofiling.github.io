---
layout: page
title: A Software Ecosystem for Ribosome Profiling Data
tagline:
---
{% include JB/setup %}

Ribo Ecosystem is a set of software tools, built around the ribo file format, to facilitate
analyzing ribosome profiling data at ribosome protected footprint length resolution.
It consists of a pipeline, RiboFlow, and two interfaces RiboR and RiboPy.

## Steps for Data Analysis

Please follow these steps to process your ribosome profiling experiment(s):

  1. **Have Your Data Ready:** Have your sequencing data ready in gzipped fastq format.

  2. **Prepare Your Parameters File:** RiboFlow requires a parameters file. We provide a version that works with human ribosome profiling data [here](https://github.com/ribosomeprofiling/riboflow/blob/master/project.yaml).
 Please modify according to your needs.

  3. **Generate Ribo Files:** Using
  [RiboFlow](https://github.com/ribosomeprofiling/riboflow),
  you can process your data and generate a ribo file. The structure of the ribo file format is available in
  [RiboPy documentation](https://ribopy.readthedocs.io/en/latest/ribo_file_format.html).

 4. **Analyze Your Data:** There are two alternatives to analyze ribo files.
  R users can use [RiboR](https://github.com/ribosomeprofiling/ribor).
  Python or command line users can use [RiboPy](https://github.com/ribosomeprofiling/ribopy).

## RiboFlow
<a name="RiboFlow"></a>
RiboFlow is a pipeline that processes ribosome profiling data and
compiles the results into a ribo file.

  * Source code of RiboFlow is available on [Github](https://github.com/ribosomeprofiling/riboflow).
  * Documentation is available on [Github](https://github.com/ribosomeprofiling/riboflow).

#### Installation and Requirements
You need the following software to run RiboFlow.
  * [NextFlow](https://www.nextflow.io/)
  * [Docker](https://docs.docker.com/install/)

If you don't have Docker, you can use [conda](https://conda.io/en/latest/miniconda.html)
to install the required RiboFlow dependencies. See the
[Github page](https://github.com/ribosomeprofiling/riboflow)
for instructions.

#### Quick Start

Make sure that you have
[NextFlow](https://www.nextflow.io/)
and
[Docker](https://docs.docker.com/install/)
installed.

```
# Clone this repository in a new folder and change your working directory to the RiboFlow folder.
mkdir rf_test_run && cd rf_test_run
git clone https://github.com/ribosomeprofiling/riboflow.git
cd riboflow
# Obtain a copy of the sample data in the working directory.
git clone https://github.com/ribosomeprofiling/rf_sample_data.git
# Finally, you can run the pipeline.
nextflow RiboFlow.groovy -params-file project.yaml -profile docker_local
# Nextflow will print running times when finished.
```

The output files, e.g. alignment statistics and the ribo file,
are created inside the folder named *output*.
```
ls output
ls output/ribo/all.ribo
```


You can also run RiboFlow without using Docker. See instructions on
[Github](https://github.com/ribosomeprofiling/riboflow).


## RiboPy
<a name="RiboPy"></a>

RiboPy is a Python and command line interface to read and write ribo files.

* Source code is available on [Github](https://github.com/ribosomeprofiling/ribopy).
* Documentation is available on [readthedocs](https://ribopy.readthedocs.io/en/latest/).

RiboPy can be installed via pip:

```
pip install ribopy
```

RiboPy comes with an application programming interface (API) and a command line
interface (CLI). A walk-through of the API is available [here](/ribopy/api_walkthrough.html){:target="\_blank"}.
For the CLI, a separate walk-through is available in [this link](/ribopy/cli_walkthrough.html){:target="\_blank"}.

## RiboR
<a name="RiboR"></a>

RiboR is an R interface to read ribo files.

* Source code is available on [Github](https://github.com/ribosomeprofiling/ribor).

RiboR can be installed via devtools. Make sure your R version is 3.6 or higher.
```
# Run this in an R Environment.

install.packages("devtools")
library("devtools")
install_github("ribosomeprofiling/ribor")
```

 You can continue your analysis by following this [walkthrough of RiboR](/ribor/ribor.html){:target="\_blank"}


## Citing

[RiboFlow, RiboR and RiboPy: an ecosystem for analyzing ribosome profiling data at read length resolution, H. Ozadam, M. Geng, C. Cenik
Bioinformatics 36 (9), 2929-2931](https://academic.oup.com/bioinformatics/article/36/9/2929/5701654)

```bibtex
@article{ozadam2020riboflow,
  title={RiboFlow, RiboR and RiboPy: an ecosystem for analyzing ribosome profiling data at read length resolution},
  author={Ozadam, Hakan and Geng, Michael and Cenik, Can},
  journal={Bioinformatics},
  volume={36},
  number={9},
  pages={2929--2931},
  year={2020},
  publisher={Oxford University Press}
}
```
