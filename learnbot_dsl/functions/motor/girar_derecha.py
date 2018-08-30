from __future__ import division, print_function
import time, math

def girar_derecha(lbot, duration=0.05, rotSpeed=0.3, verbose=False):
	lbot.setRobotSpeed(0, rotSpeed)
	lbot.publish_topic("girar_derecha")
	if verbose:
		print('~ Learnbot turning right ...')
	if duration != 0:
		time.sleep(duration)
		#lbot.setRobotSpeed(0, 0)
	

