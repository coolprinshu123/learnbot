from __future__ import print_function
import cv2
import numpy as np
import visual_auxiliary as va

def center_red_line(lbot, params=None, verbose=False):
	frame = lbot.getImage()
	rois = va.detect_red_line(frame)
	if verbose:
		print("Red points", rois)
	
	maxIndex = np.argmax(rois)
	if maxIndex==1 and rois[maxIndex]>20:
		lbot.publish_topic("center_red_line")
		return True
	return False
