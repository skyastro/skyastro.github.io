# Everything ... and in between.

This project is about building a four dimensional visualization of the local universe at all scales
from the neighborhood of the Earth, through the Solar System, and looking at more than 300,000
stars within 100 parsecs of the Sun.  Ultimately we hope to also include visualization of nearby galaxies, 
groups and clusters.

The visualization of the Earth includes all objects orbiting the Earth that are tracked by NORAD.
These satellites use a simple precession model but the effects of orbital drag are ignored.
Clicking near a satellite should show its name.

The visualization of the Solar system includes 50,000 small bodies including all known coments,
and the vast majority of named asteroids.  For each of the nine planets, there is a three-dimensional
rendering of the planet around which the associated moons (if any) orbit at the 
appropriate distances given the radius of the planet  Some of the larger moons (the Moon,
the Galilean moons of Jupiter and Titan) also can be seen in a three-d visualization.
When visualizing each body, the solar illumination is appropriately modelled.
For the Earth-Moon system a special
parameter adjusts the Earth-Moon distance since an fully accurate depiction moves the Moon too far
from the Earth to be interesting.  The radii of most moons are exaggerated with respect to the primary,
since otherwise they would be too small to see.  Jupiter and Saturn have vast systems of satellites
which extend to great distances.

The paths of a few dozen missions can
be seen during the animation of the Solar System with each launching from Earth and traipsing through the
planets.  The orbits during the short planetary encounters simply merge the incoming and outgoing trajectories.


The full orbits of the planets are shown.  By default each of the 50,000 small bodies is depicted as just a small dot,
but the orbit of any of them can be also be shown along with a larger dot depicting the 'current' position.

In the Local Galactic Neighborhood users can click on any star to get its name, spectral type and the
number of known planets.  Stars with planets are shown with rings.

Users can also draw lines between any two named object in the same animation.  This will show the distance and direction between them.

The Local Galactic Neighborhood  can be animated to show the space motions of nearby stars relative to the
Sun. Our Sun remains fixed during the simulation.  

In all of the animations, the rate of the animation can be sped or slowed or stopped and the direction of time can be reversed.
The animations can be zoomed, panned and rotated using the OrbitControls of the Three.js framework.
Alternate mechanisms for controlling the 3D view will be added.

There is also a table which allows a user to build orbits of their own using a wide variety of possible
orbital elements.  This renders in a separate page.  E.g., the user can get the orbital elements from the x,v at a particular time or can enter
the classic orbital elements and get the state vector at some specific time.  Users can also specify or
calculate physical properties of the system, e.g., the specific energy and angular momentum of a given orbit.
If the mass of the central
body is the mass of the Sun or the Earth, the orbit can be rendered in the Solar System or Earth visualizations.

Work is underway on a trajectory calculator where a user can examine the effects of pushing 
a body with impulses and/or continuous forces.  This will be able to consider the effect of planetary
encounters.  Ultimately this will also allow for visualization of paths through the solar system and
for interstellar paths -- which will allow users to explore accelerations with appropriate relativistic effects
or allow 'FTL' drives without those complexities. 
