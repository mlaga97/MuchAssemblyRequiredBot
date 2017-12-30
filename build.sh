add() {
	cat "$1" >> ../MuchAssemblyRequired.s
	echo >>  ../MuchAssemblyRequired.s
} 

# Clear it
echo -n > ../MuchAssemblyRequired.s

# Root
add constants.s
add main.s
add hardware.s

# Modes
add modes/init.s
add modes/debug.s
add modes/seeker.s
add modes/teleop.s
add modes/autonomous.s

# Helper
add helper/getNumber.s
add helper/manhattanDist.s

# Autopilot
add autopilot/faceItem.s
add autopilot/locateItem.s
add autopilot/gotoPosition.s
add autopilot/collectBiomass.s

# Hardware
add hardware/legs.s
add hardware/drill.s
add hardware/laser.s
add hardware/lidar.s
add hardware/floppy.s
add hardware/battery.s
add hardware/hologram.s
add hardware/keyboard.s
add hardware/inventory.s
