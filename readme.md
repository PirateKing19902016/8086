# 8086 Masm

- use default editor
```
edit filename.asc
```
- create Object File
```
masm filename.asc
```
- Link object files to generate an executable
```
link filename.obj
```
- Debug the file
```
debug filename.exe
```
  - in debugger mode use
    - `g` similar to go .
    If you do not specify address, MS-DOS begins program execution at the current address in the CS:IP registers.
    - `d ds:0l03` dumps
