# README

This repository contains the files necessary to run a simple shiny application for exploring binning patterns in microsatellite loci.

Plots are generated using `ggplot2`, and binning is carried out using a modified version of the `MsatAllele` package.

The application accepts data in the format specified for the `MsatAllele` package.

```r
------------------------------------------------
 Marker   Sample    Fragment     Date     Plate 
-------- --------- ---------- ---------- -------
 Ssa85   BWG040102   114.3    2015-01-02  test  

 Ssa85   BWG040102   116.2    2015-01-02  test  

 Ssa85   BWG040103   110.4    2015-01-02  test  

 Ssa85   BWG040103   116.2    2015-01-02  test  

 Ssa85   BWG040104   110.4    2015-01-02  test  

 Ssa85   BWG040104   114.3    2015-01-02  test  
------------------------------------------------
```