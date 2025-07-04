# Verification of a Synchronous FIFO using UVM & SVA

![UVM & SVA Logo](documentation_illustrations/uvm_sva_logo.png)

## Overview

This repository contains a comprehensive verification environment for a **Synchronous FIFO** design, utilizing Universal Verification Methodology (UVM) and SystemVerilog Assertions (SVA). The project demonstrates advanced functional and assertion-based verification techniques, complete with coverage analysis and professional documentation.

## Table of Contents

- [Project Structure](#project-structure)
- [Key Features](#key-features)
- [Getting Started](#getting-started)
- [Directory Structure](#directory-structure)
- [Simulation & Reports](#simulation--reports)
- [Documentation](#documentation)
- [License](#license)

---

## Project Structure

The repo consists of:
- FIFO RTL and testbench files
- UVM verification environment and test sequences
- SystemVerilog assertions for formal and assertion-based verification
- Coverage and simulation reports
- Professional PDF documentation and illustrations

## Key Features

- **Industry-standard UVM testbench** for FIFO verification
- **SystemVerilog Assertions (SVA)** for protocol and property checking
- **Comprehensive coverage reports** (assertion-based and functional)
- **Modular & scalable components** organized by functionality
- **Professional documentation** and diagrams

## Getting Started

### Prerequisites

- SystemVerilog-compatible simulator (e.g., ModelSim, Synopsys VCS, or Cadence Xcelium)
- UVM library support

### Compiling & Running

1. Clone the repository:
   ```sh
   git clone https://github.com/AbdelrahmanYassien11/Verification-of-a-Synchronous-FIFO-using-UVM-SVA.git
   cd Verification-of-a-Synchronous-FIFO-using-UVM-SVA
   ```
2. Compile the design and testbench:
   ```sh
   # Example using ModelSim/Questa
   vsim -do run.do
   ```
3. View coverage or assertion reports in the respective `.txt` or `.ucdb` files.

## Directory Structure

```
.
├── components/                # UVM components (driver, monitor, scoreboard, etc.)
├── interface/                 # FIFO interface definitions
├── sequence/                  # UVM sequences for stimulus generation
├── sequence_item/             # UVM sequence items
├── tests/                     # Different test scenarios and configurations
├── documentation_illustrations/ # Diagrams and images for documentation
├── FIFO.svp                   # FIFO design (possible SystemVerilog/RTL)
├── FIFO_sva.sv                # FIFO assertions
├── FIFO_uvm_pkg.sv            # UVM verification package
├── top.sv                     # Top-level testbench
├── top_test_uvm.sv            # Top-level UVM test
├── run.do                     # Simulation script
├── *.ucdb                     # Coverage database files
├── *_coverage_report.txt      # Coverage reports
├── UVM_FIFO_REPORT.pdf        # Professional report
└── transcript                 # Simulation log (truncated)
```

> **Note:** Only a subset of files/folders are shown due to API limitations. [View complete contents on GitHub.](https://github.com/AbdelrahmanYassien11/Verification-of-a-Synchronous-FIFO-using-UVM-SVA/tree/main/)

## Simulation & Reports

- **Coverage Reports:**  
  - [`FIFO_coverage_report.txt`](FIFO_coverage_report.txt)
  - [`assertion_based_coverage_report.txt`](assertion_based_coverage_report.txt)
  - [`functional_coverage_report.txt`](functional_coverage_report.txt)

- **Professional Documentation:**  
  - [`UVM_FIFO_REPORT.pdf`](UVM_FIFO_REPORT.pdf)

- **Waveform and Logs:**  
  - `transcript` (simulation log)
  - `.ucdb` files (coverage databases)

## Documentation

- Detailed documentation is provided in the [`UVM_FIFO_REPORT.pdf`](UVM_FIFO_REPORT.pdf).
- Illustrations and diagrams are available in the `documentation_illustrations/` directory.
