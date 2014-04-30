	
	------------------------------------------------------------------
	
		motionx = 0 
		motiony = 0 
		speed = 4
		GameSettings.canAttackNum = 0
		GameSettings.playerIsMoving = 0
		GameSettings.playerIsDirection = nil
		GameSettings.playerIsFirstMoving = 0
		spriteCallNum = 0
		GameSettings.spriteIsMoving = 1
		GameSettings.spriteMovementTesting = 9
			testPoint5=display.newRect(0,0,180,120)
			testPoint5.x = display.contentWidth / 7.5
			testPoint5.y = ppA+20
			testPoint5.alpha = .3
			testPoint5.touch = deadMoveTouch
			testPoint5:addEventListener("touch", testPoint5)
				GameSettings.DefenseCharge = 0
				xV = 36
				yV = 52
		wKr = display.contentWidth/1.65
		upArrow = display.newImageRect("media/images/action/arrow.png", xV,yV, true)
		upArrow.alpha = rhG
		upArrow.id = "up"
		upArrow.idNum = 3
		upArrow.x = display.contentWidth / 7.5
		upArrow.y = ppA
		upArrow.rotation = 90
		upArrow.touch = touchArrowCheck
		upArrow:addEventListener("touch", upArrow)
			local tp
			upArrow._touch_num = 0
			upArrow.touches = {}
		downArrow = display.newImageRect("media/images/action/arrow.png", xV,yV, true)
		downArrow.rotation = -90
		downArrow.alpha = rhG
		downArrow.id = "down"
		downArrow.idNum = 4
		downArrow.x = upArrow.x
		downArrow.y = upArrow.y+yV
		downArrow.touch = touchArrowCheck
		downArrow:addEventListener("touch", downArrow)
			local tp
			downArrow._touch_num = 0
			downArrow.touches = {}
		leftArrow = display.newImageRect("media/images/action/arrow.png", xV,yV, true)
		leftArrow.alpha = rhG
		leftArrow.id = "left"
		leftArrow.idNum = 2
		leftArrow.touch = touchArrowCheck
		leftArrow:addEventListener("touch", leftArrow)
		leftArrow.x = upArrow.x-xV
		leftArrow.y = upArrow.y+(xV/1.5)
			local tp
			leftArrow._touch_num = 0
			leftArrow.touches = {}
		rightArrow = display.newImageRect("media/images/action/arrow.png", xV,yV, true)
		rightArrow.xScale = -1
		rightArrow.alpha = rhG
		rightArrow.id = "right"
		rightArrow.idNum = 1
		rightArrow.touch = touchArrowCheck
		rightArrow:addEventListener("touch", rightArrow)
		rightArrow.id = "right"
		rightArrow.x = upArrow.x+xV
		rightArrow.y = upArrow.y+(xV/1.5)
			local tp
			rightArrow._touch_num = 0
			rightArrow.touches = {}

	
	------------------------------------------------------------------
	
