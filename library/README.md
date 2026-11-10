# Library

This folder holds the actual resource files of the Open Technical Knowledge Library: papers, textbooks, lecture notes, code repositories, images, diagrams and video references. Everything is organised first by domain and then by learning level, so a learner can move from a roadmap to fundamentals, theory, implementation and current research.

## Domains

The catalog holds 825 entries across nine domains.

| Domain | Catalog entries | Description |
|---|---|---|
| [01 Automation and Robotics](01_Automation_Robotics/) | 106 | Control theory, robot manipulators and mobile robots, industrial control (PLC, SCADA), ROS 2 and autonomous systems. |
| [02 Electronics and Telecom](02_Electronics_Telecom/) | 100 | Analog and digital circuits, RF and microwave, antennas, signal processing, FPGA/VLSI, wireless and satellite communications. |
| [03 Industrial Electrical and Energy](03_Industrial_Electrical_Energy/) | 90 | Power systems, power electronics, electric machines, batteries, renewable energy and smart grids. |
| [04 Mechanical and Manufacturing](04_Mechanical_Manufacturing/) | 82 | Materials, CNC and additive manufacturing, finite element and CFD simulation, mechanical design and precision engineering. |
| [05 Biotechnology](05_Biotechnology/) | 99 | Molecular and systems biology, genomics and proteomics, synthetic and metabolic engineering, bioinformatics and bioprocess engineering. |
| [06 CubeSat](06_CubeSat/) | 87 | CubeSat architecture, ADCS, on-board computers, RF payloads, ground stations and satellite testing. |
| [07 Space Technology](07_Space_Technology/) | 77 | Orbital and interplanetary mechanics, propulsion, launch vehicles, spacecraft structures, Earth observation and space robotics. |
| [08 Quantum Physics](08_Quantum_Physics/) | 113 | Quantum mechanics and field theory, quantum computing, communication, sensing, error correction and materials. |
| [09 Cross Disciplinary](09_Cross_Disciplinary/) | 71 | Digital twins, scientific machine learning, reinforcement learning, cyber-physical systems and reliability engineering. |

By type the catalog contains 534 papers, 92 repositories, 81 video references, 62 images, 41 courses, 14 textbooks and 1 document. The files on disk total about 16.2 GB.

## How it is organised

The path pattern is domain, then learning level, then a subfolder for the kind of material.

| Level folder | Purpose |
|---|---|
| `00_Roadmap` | Learning path and prerequisites for the domain. |
| `01_Fundamentals` | Entry-level material: `Textbooks`, `Lecture_Notes`, `Videos`. |
| `02_Advanced_Theory` | Graduate-level theory; topic folders sit under `Research_Papers`. |
| `03_Implementation` | Working code and docs: `GitHub_Repositories`, `Documentation`. |
| `04_Simulation` | Simulation material (present in some domains, for example 04 Mechanical and Manufacturing). |
| `05_Datasets` | Data files, under `Raw`. |
| `06_Hardware` | Hardware references (present in some domains, for example 02 Electronics and Telecom). |
| `07_Multimedia` | `Diagrams`, images and `Videos`. |
| `09_Research_Frontier` | Recent work; topic folders sit under `Recent_Papers`. |

Each domain also has a `99_Metadata` folder with its own acquisition log, licence table and resource catalog. Not every level exists in every domain.

## Finding things

- Start with the `README.md` of a domain: it lists the levels and the topics it contains.
- Each topic folder (under `Research_Papers` or `Recent_Papers`) has its own `README.md` with a summary of the topic and a numbered list of chapter summaries.
- The full catalog (title, source URL, licence, year, format, level) is maintained outside this folder, in `deliverables/Master_Catalog.csv`; it is not tracked in Git.

## Licences

Each item keeps the licence of its source, recorded in the catalog. The most common are CC BY (529 entries), CC BY-NC-SA 4.0 (41), Apache-2.0 (31), Public domain (20), CC BY-SA 4.0 (20), BSD (16) and MIT (14). Some entries carry other licences such as GPL, LGPL, AGPL or CC0, and a few are marked unknown or "none found"; check the catalog or the source before reuse.

- OpenStax and MIT OpenCourseWare material is CC BY-NC-SA, so it is for non-commercial use only.
- YouTube items are links only; no video files are stored. The catalog records the licence shown in the video metadata (Creative Commons Attribution).
- Repositories under `03_Implementation/GitHub_Repositories` are third-party clones kept for reference. Their own licences apply.

## Notes

- Some items are off-topic for the folder they sit in.
- Some chapter summaries are thin because the source text was limited.
- Some PDFs in topic folders are catalogue classification errors and have not been verified as relevant content.
- Counts in the table come from the catalog; the per-domain READMEs may report slightly lower numbers.
