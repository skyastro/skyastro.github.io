# Everything ... and in between.

This project is about building a three dimensional visualization of the local universe at all scales
from the neighborhood of the Earth, through the Solar System, and looking at more than 300,000
stars within 100 parsecs of the Sun.  Ultimately we hope to also include visualization of the
the entire Galaxy (though not every star!), and nearby galaxies, groups and clusters.

The visualization of the Earth includes all objects orbiting the Earth that are tracked by NORAD.
These satellites use a simple precession model but the effects of orbital drag are ignored.
Clicking near a satellite shows its name.

The visualization of the Solar System includes 50,000 small bodies including all known comets
and named asteroids.  For each of the nine planets, there is a three-dimensional
rendering of the planet around which the associated moons (if any) orbit at the 
appropriate distances given the radius of the planet  Some of the larger moons (the Moon,
the Galilean moons of Jupiter, Titan and Charon) can also be seen in a three-d visualization.
When visualizing each body, the solar illumination is appropriately modelled.
The radii of most moons are exaggerated with respect to the primary,
since otherwise they would be too small to see.  Jupiter and Saturn have vast systems of satellites
which extend to great distances.

The paths of interplanetary missions can
be seen during the animation of the Solar System with each launching from Earth and traipsing through the
planets.  They are not shown after they reach a final destination (e.g., Mars).

The full orbits of the planets are shown.  By default each of the 55,000 small bodies is depicted as just a small dot,
but the orbit of any of them can be also be shown along with a larger dot depicting the 'current' position.

In the Local Galactic Neighborhood users can click on any star to get its name, spectral type and the
number of known planets.  Stars with planets are shown with rings.

Users can also draw lines between any two named objects, which will show the distance between them.

The Local Galactic Neighborhood  can be animated to show the space motions of nearby stars relative to the
Sun.  As the reference point, our Sun remains fixed during the simulation. 

Nearby galaxies are shown, with a limited attempt to show the orientation of spiral disks.  The largest scale animation shows
the distribution of Abell clusters out to about 1 gigaparsec.

In all of the animations, the rate of the animation can be sped or slowed or stopped and the direction of time can be reversed.
The animations can be zoomed, panned and rotated using the TrackBallControls class in Three.js.

There is also a table which allows a user to build orbits of their own using a wide variety of possible
orbital elements.  This renders in a separate page.  E.g., the user can get the orbital elements from the x,v at a particular time or can enter
the classic orbital elements and get the state vector at some specific time.  Users can also specify or
calculate physical properties of the system, e.g., the specific energy and angular momentum of a given orbit.
If the mass of the central
body is the mass of the Sun or the Earth, the orbit can be rendered in the Solar System or Earth visualizations.

Users can instantiate a rocket an either manually drive the rocket or create a script which generates acceleration events of various
kinds.  The script can also change the current animation and zoom and pan within animations.  In principle the rocket is intended to persist across animations, 
but it has only been tested within the Solar System animation.
