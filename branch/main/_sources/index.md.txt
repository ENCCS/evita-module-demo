# High Performance Data Analytics in Python

Scientists, engineers and professionals from many sectors are seeing an enormous growth in the size and number of datasets relevant to their domains. Professional titles have emerged to describe specialists working with data, such as data scientists and data engineers, but also other experts are finding it necessary to learn tools and techniques to work with big data. Typical tasks include preprocessing, analysing, modeling and visualising data.

Python is an industry-standard programming language for working with data on all levels of the data analytics pipeline. This is in large part because of the rich ecosystem of libraries ranging from generic numerical libraries to special-purpose and/or domain-specific packages, often supported by large developer communities and stable funding sources.

This module will give an overview of working with research data in Python using general libraries for storing, processing, analysing and sharing data. The focus is on high performance. After covering tools for performant processing on single workstations the focus shifts to profiling and optimising, parallel and distributed computing.

:::{prereq}

- Basic experience with Python
- Basic experience in working in a Linux-like terminal
- Some prior experience in working with large or small datasets
:::

:::{toctree}
:caption: Software setup
:maxdepth: 1

episodes/Python-HPDA-0-SoftwareSetup
:::

:::{toctree}
:caption: Episodes
:maxdepth: 1

episodes/Python-HPDA-1-Motivation
episodes/Python-HPDA-2-EfficientArrayComputing
episodes/Python-HPDA-2-EfficientArrayComputing-markdown
episodes/Python-HPDA-2-EfficientArrayComputing-pdf
episodes/quiz/quiz_in_episodes
episodes/ModuleName-1-EpisodeName
:::

:::{toctree}
:caption: Reference
:maxdepth: 1

instructor-guide
reference-for-learners
:::

:::{toctree}
:caption: Walkthrough for module authors
:maxdepth: 1

reference/structure-evita-module
:::


## Learning outcomes

This material is for all researchers and engineers who work with large or small datasets and who want to learn powerful tools and best practices for writing more performant, parallelised, robust and reproducible data analysis pipelines.

By the end of this module, learners should:

- Have a good overview of available tools and libraries for improving performance in Python (**link to leaves in skill tree**)
- Knowing libraries for efficiently storing, reading and writing large data  (**link to leaves in skill tree**)
- Be comfortable working with NumPy arrays and Pandas dataframes for data analysis using Python (**link to leaves in skill tree**)
- ...

:::{admonition} Credit
:class: warning

Don't forget to check out additional [**course materials**](https://www.evitahpc.eu/) from XXX. Please [**contact us**](https://www.evitahpc.eu/) if you want to reuse these course materials in your teaching. You can also join the [**XXX channel**](https://www.evitahpc.eu/) to share your experience and get more help from the community.

:::

::::{admonition} License
:class: attention

:::{admonition} CC BY-SA for media and pedagogical material
:class: attention dropdown

Copyright © 2025 XXX. This material is released by XXX under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0).

**Canonical URL**: <https://creativecommons.org/licenses/by-sa/4.0/>

[See the legal code](https://creativecommons.org/licenses/by-sa/4.0/legalcode.en)

## You are free to

1. **Share** — copy and redistribute the material in any medium or format for any purpose, even commercially.
2. **Adapt** — remix, transform, and build upon the material for any purpose, even commercially.
3. The licensor cannot revoke these freedoms as long as you follow the license terms.

## Under the following terms

1. **Attribution** — You must give [appropriate credit](https://creativecommons.org/licenses/by-sa/4.0/#ref-appropriate-credit) , provide a link to the license, and [indicate if changes were made](https://creativecommons.org/licenses/by-sa/4.0/#ref-indicate-changes) . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
2. **ShareAlike** — If you remix, transform, or build upon the material, you must distribute your contributions under the [same license](https://creativecommons.org/licenses/by-sa/4.0/#ref-same-license) as the original.
3. **No additional restrictions** — You may not apply legal terms or [technological measures](https://creativecommons.org/licenses/by-sa/4.0/#ref-technological-measures) that legally restrict others from doing anything the license permits.

## Notices

You do not have to comply with the license for elements of the material in the public domain or where your use is permitted by an applicable [exception or limitation](https://creativecommons.org/licenses/by/4.0/deed.en#ref-exception-or-limitation) .

No warranties are given. The license may not give you all of the permissions necessary for your intended use. For example, other rights such as [publicity, privacy, or moral rights](https://creativecommons.org/licenses/by/4.0/deed.en#ref-publicity-privacy-or-moral-rights) may limit how you use the material.

This deed highlights only some of the key features and terms of the actual license. It is not a license and has no legal value. You should carefully review all of the terms and conditions of the actual license before using the licensed material.

:::

:::{admonition} MIT for source code and code snippets
:class: attention dropdown

MIT License

Copyright (c) 2025, EVITA project, {{ author }}

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

:::

:::{note}
*To module authors*: For code you may use any OSI-approved license as mentioned in <https://spdx.org/licenses/>, such as Apache License 2.0, GNU GPLv3, MIT. Please make sure to update the deed above and
`LICENSE.code` file accordingly.
:::

::::
