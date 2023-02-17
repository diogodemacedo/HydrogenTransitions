#!/bin/bash

#Diogo de Macedo

# User input. n1 and n2 must be positive integer values

echo "Enter the initial energy state (n1) of the hydrogen atom:"
read n1
echo "Enter the final energy state (n2) of the hydrogen atom:"
read n2

# Constants

h=6.626e-34  # Planck's constant in joule-seconds
c=299792458       # speed of light in meters per second
m=9.109e-31  # mass of an electron in kilograms
e=1.602e-19  # elementary charge in coulombs
R=1.098e7 # Rydberg constant in inverse meters

# Calculate the transition energy in joules
energy=$(awk "BEGIN {print $h*$c*$R*(1/$n1/$n1-1/$n2/$n2)}")

# Calculate the energy in electronvolts
energy_eV=$(awk "BEGIN {print $energy/$e}")

# Calculate the wavelength of the emitted light in meters
wavelength=$(awk "BEGIN {print $h*$c/$energy}")

# Display the results
echo "The energy of the transition is $energy_eV eV." 
echo "The energy of the emitted photon is $energy J." 
echo "The wavelength of the emitted light is $wavelength m."

