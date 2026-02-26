# Structure of an EVITA module

:::{important}
- For a _technical overview_ for authoring such modules, a
[reference for module authors](inv:evita:std#ref-for-module-authors) is maintained along with 
the documentation for the `sphinx-evita` extension[^ref-auth].
- For _best practices_ in creating great lessons, get inspired by reading a [primer on lesson design](inv:instruct:std#lesson-design)[^ref-lesson-design].
:::

[^ref-auth]: <https://sphinx-evita.readthedocs.io/en/latest/ref-for-module-authors.html>
[^ref-lesson-design]: <https://enccs.github.io/instructor-training/lesson-design/>

An EVITA module is a combination of pedagogical material and 
working examples of code. These are presented to a learner in 
smaller logical units called *episodes*. The module extensively uses

- [Sphinx](inv:sphinx:std#index) as the documentation engine,
- [MyST Parser](inv:myst:std#index) to parse the content in Markdown and Jupyter notebooks,
- [sphinx-lesson](inv:lesson:std#index) to provide an extended set of markup known as _directives_, and
- [sphinx-evita](inv:evita:std#index) to customize the appearance. 

## Overview

Module developers are expected to provide the following:
- `conf.py`
- `index.md`
- An episodes directory containing
	- Jupyter notebooks preferably (Markdown and reStructuredText files are also acceptable; alternatively slides in ODP/PPTX and PDF pairs)
	- Images used in the notebooks
	- Longer code examples referenced in the notebooks as stand-alone file (Short code snippets can be described inline).
    - Demos and type-along sessions to introduce the topic
    - Discussions and exercises designed for _formative assessment_.
- Questions and quizzes for _summative assessment_.
- `instructor-guide.md`
- `reference-for-learners.md`
- `CITATION.cff` file

To sum up a new module is organized as shown below:

```
├── CITATION.cff
├── content
│   ├── conf.py
│   ├── episodes
│   │   ├── code
│   │   │   └── code-example.py
│   │   ├── images
│   │   │   └── inline-image-example.png
│   │   ├── ModuleName-1-EpisodeName.md
│   │   ├── ModuleName-2-EpisodeName.ipynb
│   │   ├── ModuleName-3-EpisodeName.md
│   │   └── quiz
│   │       ├── quiz_in_episodes.md
│   │       └── solution_for_quiz_in_episodes.md
│   ├── index.md
│   ├── instructor-guide.md
│   ├── reference-for-learners.md
│   └── _static
│       └── slides
│           ├── slides-3-EpisodeName.pdf
│           └── slides-3-EpisodeName.pptx
├── LICENSE
├── LICENSE.code
├── make.bat
├── Makefile
├── pylock.toml
├── pyproject.toml
└── README.md
```

## The `conf.py` file

The `conf.py` file contains all the configuration for Sphinx. This
includes details like title, authors, Sphinx extensions and their
configuration. Some comments with `FIXME:` is provided where
appropriate replacements should be made. 

## The `index.md` file

The `index.md` file is the landing page of the course. This should
include:
- Title of this module
- General description (1–3 paragraphs)
- **Prerequisites**
	- Reading materials or other preparation required before starting this module
- Links to episodes in correct order
	- Must use the [toctree syntax](inv:myst:std#syntax/toctree)
	- At least three sections should be included:
		- 1) **Software setup** -- instructions for configuring the programming environment
		- 2) **Episodes** -- teaching content of the module divided into smaller units called episodes
		- 3) **Reference** -- notes for instructors and additional resources
- **Learning outcomes** (following Bloom’s Taxonomy guidelines)[^gpt-learn-out]
	- Target learners and practical skills they will gain
	- **Links to relevant leaves in the skill tree**
	- Optionally, mention related topics not covered in this module and link them to the skill tree
- **Credit** (to be reformulated ASAP)
- **License** (to be reformulated ASAP)

[^gpt-learn-out]: To make an initial draft of the learning outcomes from a course description, authors can use the AI-assisted [Blooms Taxonomy for HPCCF](https://chatgpt.com/g/g-67768fbf69dc819199207ef9e3d4d697-blooms-taxonomy-for-hpccf/c/68ff9d13-de94-832f-a112-dda046af41b3) tool.

:::{seealso}
The [index.md file](../index.md) of this very own module template. You can view the source, by clicking on the _eye icon_ on the top.
:::

## Episode on _setting up programming environment_

Provide a dedicated notebook (Markdown or reStructuredText also acceptable) with at least two sessions covering environment setup:
- **Local installation**
	- Specify package versions (*e.g.*, via `requirements.txt` or `environment.yml`)
	- Detailed setup instructions for Windows, macOS, and Linux users
	- Optionally provide a containerized setup
- **HPC cluster installation**
	- Instructions valid for a specific supercomputer (preferably an EuroHPC cluster)
	- Specify package versions (as above)
	- Optionally provide a containerized setup
	- Example SLURM batch script for running exercises
- **Datasets**
	- If a dataset is required and smaller than 100 MB, include it directly
	- If larger, provide instructions for downloading it from an external archive

:::{seealso}
The [setup episode](../episodes/Python-HPDA-0-SoftwareSetup.ipynb).
:::

## Episodes for teaching

These episodes are the core content which introduces and goes
deeper into the topic at hand. Each episode should include:
- A general description
- **Objectives** for learners
- **Instructor note** (suggested time allocation, code demos, exercises, etc.)
- At least one of the following between major sections:
	- `Discussion`
	- `Code for demonstration`
	- `Exercise` (with corresponding `Solution`)
- Highlighted notifications such as `Note`, `Caution`, `Attention`, *etc.*
	- See the Jupyter Notebook titled **Reference for module developers** for more options
- **Images** to illustrate key concepts (stored in an images directory)
- **Videos** if needed to demonstrate continuous processes
	- Videos may be provided directly or linked from YouTube
- **Code examples** stored in a code directory, with references in the notebook
- **Keypoints** at the end of the episode, summarizing its content
- **See also** with additional reading materials

:::{seealso}
You can look at any of the episodes in this current example module.
If you are starting something new, use
[this boilerplate episode](../episodes/ModuleName-1-EpisodeName.md).
:::

## Quiz

- Provide summative assessment questions suitable for supervised or unsupervised evaluation
- Formats may include:
	- Multiple-choice questions
	- Coding tasks

:::{note}
The current page on [quiz](../episodes/quiz/quiz_in_episodes.md) is for demonstration purposes only. The format
may change.
:::

## Instructor guide

The instructor guide should include:
- Recommended teaching hours and participant numbers
- Mode of teaching and exercises
- Hardware requirements (including HPC if applicable)
- Learner personas
- Additional teaching recommendations

:::{seealso}
The [instructor guide](../instructor-guide.md) in the current example module.
:::

## Reference for Learners

- Glossary of terms
- External resources for further study

:::{seealso}
The [reference for learners](../reference-for-learners.md) in the current example module.
:::

## The `CITATION.cff` file

This citation file format file encodes metadata such as author
information, affiliation and so on. You are also expected to
tag appropriate skills related to
[HPC certification forum's skill tree](https://www.hpc-certification.org/wiki/skill-tree/b) under the `identifiers` field.
For example:

:::{literalinclude} ../../CITATION.cff
:start-after: LiU
:end-before: repository-code
:::

:::{seealso}
[Citation file format generator](https://citation-file-format.github.io/#/create-a-citationcff-file-now).
:::
