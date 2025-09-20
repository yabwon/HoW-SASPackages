# `   Share your code with SAS Packages   ` <br/> `   a Hands-on-Workshop   ` 

### by [Bartosz Jabłoński](https://www.linkedin.com/in/yabwon)

---

## Introduction note

This repository contains all workshop materials required for the Hands-on-workshop: **Share your code with SAS Packages**. 

To be ready to learn read about [Technical requirements](#technical-requirements) for the workshop.

Don't forget to **STAR** (:star:) the repository! :-)

### To start the HoW open the [Share your code with SAS Packages - a Hands-on-Workshop.md](./Share%20your%20code%20with%20SAS%20Packages%20-%20a%20Hands-on-Workshop.md) file. It will guide you itself.

The tutorial contains interactive elements (links) so the `.md` file reads the best in GitHub (or any other tool interpreting markdown files). For your convenience also a `.pdf` copy is provided.

To get training materials simply clone this repository or see the [instruction](./HoW_get_materials.png).

Should you have any questions or something is unclear do not hesitate contact the [author](https://www.linkedin.com/in/yabwon).  

Materials were used during: 
- [WUSS 2023 conference](https://www.wuss.org/wuss-2023-conference-proceedings/) (San Diego, CA, Oct. 31st to Nov. 2nd, 2023), 
- [PharmaSUG 2024 conference](https://pharmasug.org/conferences/pharmasug-2024-us/training-seminars/) (Baltimore, MD,
May 19th to 22nd, 2024), 
- [SAS-tastic meetup workshops](https://www.linkedin.com/posts/azforum_23-wrze%C5%9Bnia-w-forum-medtech-odby%C5%82o-si%C4%99-kolejne-activity-7254415484870123520-s-8Q/) (Warsaw, Poland, Sep. 22nd, 2024),
- [SESUG 2025 conference](https://sesug.org/SESUG2025/index.php) (Cary, NC, Sep. 22nd to 24th, 2025).

---

Check out the [**SAS Packages Framework (SPF)**](https://github.com/yabwon/SAS_PACKAGES "SAS Packages Framework") and the [**SAS Packages Repository (SASPAC)**](https://github.com/SASPAC "SAS Packages Repository").

---

## Technical Requirements

The workshop assumes that you have available the following resources:
- a computer with internet access,
- a SAS session (may be local or remote), the interface can be: `SAS DMS`, `SAS EG`, or `SAS Studio`, can be `SAS 9.4` or `Viya` with `SPRE`
- the SAS session has:
  - direct internet access or
  - you are able to upload files to the computer hosting your session,
  - (nice to have but not required) the SAS session has `XCMD` option enabled.

Additionally, we assume that *you* wrote at least a few of those: a macro, a function (fcmp, proto, or casl), a format or informat, or an IML module. The more the better.


---

---

![The Cover](https://user-images.githubusercontent.com/9314894/269203505-1712d153-19ed-478b-ac18-e296e88c5d9c.PNG)
---

---

## Why SAS Packages and the Framework?

Here you can find the list of reasons why using SAS Packages and SPF is a good idea. If you have any new suggestions share! :-)

### SAS Packages - advantages

- SAS Packages allow you to extend SAS capabilities by referencing reusable, centrally maintained code.

- Not only macros! You can use different "types" like: user functions (`FCMP` and `CASL`), `IML` modules, proc proto `C` routines, formats, libraries, `PROC DS2` threads or packages, and even data generating code in a package.

- Automatic update of the `cmplib=` and the `fmtsearch=` options for functions and formats. Utility macros for `IML` modules and `CAS-L` user defined functions for fast loading (with dependency checks).

- Loading order of the code is organised the way you (developer) want it to be.

- It is all in 1 (one) file - you won't forget to share "all that is needed" with your peers.

- Functionality over complexity - share one file and say, e.g. "Here is my package with the `%ABC()` macro, you use the macro like this and that..." and you don't have to say that there are 73 other utility macros working in the "background".

- A package contains additional metadata (e.g., version number or generation timestamp) which supports DevOps approach.

- Help information is printed automatically in the log.

- A package can be loaded into the SAS session even if you don't have access to the SPF macros (ICE-loading).

- Shareable between different OS (Windows and Linux/UNIX).

- Cleaning functionality.

- Supports dependencies between packages.

- It's not only BASE SAS, Packages work with Viya too (dedicated macros for Viya are still macros; `CAS-L` user defined functions - is one of types served).

- Code is 100% "inspectable" before even loading it to the SAS session (with `%previevPackage()` macro).

- Package integrity/genuinity can be tested (with `%verifyPackage()` macro).

- Packages can be stored in and used from multiple directories (e.g., centrally maintained + your private).

- Packages can contain "additional content", like PDFs, etc.

- "Lazy" dataset loading is supported.

- Package development "enforces" order in code.

### SAS Packages Framework - advantages

* Allows you to build and use SAS Packages.

* The framework is MIT licensed and 100% open source.

* The framework 100% SAS code (does not require any additional software to work).

* The framework allows running packages tests.

* Can be deployed in `sasautos`.

---

Last review date: `2025-09-20`

---
