---
layout: page
title: LIGHT
---
## Lagrangian, In situ, Global, High-Performance Particle Tracking (LIGHT)

Online particle tracking, especially in the Earth System Modeling community, is
still relatively rare.  However, at Exascale, online particle tracking must be
employed to ensure that spatio-temporal fidelity of Lagrangian particle tracks
is ensured, especially given the severe performance cost of reading from large
data files from disk [@vansebille2016lagrangian].  To this end, the Lagrangian,
in Situ, Global, High-Performance Particle Tracking (LIGHT) analysis module
[@wolfram2015diagnosing] of the Model for Prediction Across Scales Ocean
(MPAS-O) [@ringler2013multi] was developed to provide an online approach to
resolving the Exascale challenge of online particle tracking within a
high-resolution global ocean model simulation.

LIGHT computes trajectories on an individual particle basis by interpolating
velocity fields vertically, depending upon desired particle advection (e.g.,
isopycnally-constrained), and then performing horizontal interpolations using
Wachspress interpolation.  Temporal integration uses generalized Runge Kutta
methods.  Both computation and input and output are fully parallelized,
allowing use on the highest-resolution ocean simulations.

## Prior idealized applications of LIGHT

Applications of LIGHT on mixing as quantifid via a diffusivity have been
varied, but have primarily focused on use of LIGHT to compute fluid mixing
along isopycnals via an isopycnal diffusivity [@wolfram2015diagnosing], e.g., Fig. @fig:SOMAdiffusivity.

![Idealized Gulf Stream particle statistics, where the black arrows denote the mean path of a particle cluster and the gray area is the spread of the particles.  Diffusivity is the rate at which the gray line grows normal to the black line.]({{ site.url }}/public/SOMAdiffusivity.png){#fig:SOMAdiffusivity}

Resolution and scale dependence of diffusivity in an idealized, eddying
mid-latitude basin were computed. The results demonstrat that the largest
eddies most strongly contribute to mixing, but these eddies require a grid
resolution of at least a half the Rossby Radius of Deformation
[@wolfram2015diagnosing].  Diagnosis of mean, eddy, and residual eddy-mean flow
interactions on diffusivity in a zonal idealized Southern Ocean indicate that
the mean flow and eddies nonlinearly enhance diffusivity
[@wolfram2017eddymeanflow]. A novel application of online-computed particle
trajectories is to compute *post facto* Lagrangian scalar transport, which can
be used to compute a Lagrangian effective diffusivity [@wolfram2017computing].

## LIGHT in high-resolution, global climate modeling applications
![Global application of Lagrangian particle trajectories using LIGHT.]({{ site.url }}/public/ACMELIGHT.png){#fig:acmelight}

Department of Energy Leadership Class Facility computing, e.g.,
[Theta](https://www.alcf.anl.gov/theta), has been used to compute online LIGHT
trajectories for the 30km to 10km global MPAS-O resolution, using the CORE-II
climate forcing dataset [@large2009global; @griffies2014assessment]. A
schematic of the global Lagrangian particle tracking using LIGHT is shown in
Fig. @fig:acmelight. The current simulation uses 16 million particles on 8192
processors.  Furture simulations with LIGHT will be performed on the
highest-resolution 18km to 6 km MPAS-O mesh.  LIGHT is included as an in-situ
analysis member of [MPAS-O](https://github.com/MPAS-Dev/MPAS/tree/ocean/develop).

LIGHT was previously featured highlighted in an
[E3SM technical highlight](https://e3sm.org/wp-content/uploads/2018/10/TechnicalHighlight_LIGHT_opt.pdf).

[comment]: # Reference information follows (essentially a footer for references)
[comment]: # Note, this could be abstracted out for generality

---
link-citations: true
nocite: |
  @vansebille2016lagrangian, @wolfram2015diagnosing
...

## References
