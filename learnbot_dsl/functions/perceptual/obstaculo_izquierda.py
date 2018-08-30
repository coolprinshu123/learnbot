def obstaculo_izquierda(lbot, threshold= 200, verbose=False):
	sonarsValue = lbot.getSonars()
	if sonarsValue['left'] < threshold:
		lbot.publish_topic("obstaculo_izquierda")
		if verbose:
			print('Obstacle left of Learnbot')
		return True
	if verbose:
		print('No obstacle left of Learnbot')
	return False
