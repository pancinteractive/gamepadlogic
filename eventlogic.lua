
	
	------------------------------------------------------------------
	local function touchArrowCheck(self, event)
		if event.x < display.contentCenterX then
             if event.x > self.contentBounds.xMin and
                event.x < self.contentBounds.xMax and
                event.y > self.contentBounds.yMin and
                event.y < self.contentBounds.yMax
				then
                print("Its "..self.id.." IN")
			upArrow.alpha = rhG
			downArrow.alpha = rhG
			leftArrow.alpha = rhG
			rightArrow.alpha = rhG
			self.alpha = rFG
			self._touch_num = self._touch_num + 1
			GameSettings.playerIsMoving = self.idNum
			GameSettings.playerIsFirstMoving = 1
			GameSettings.playerMoveAttack = 1
			GameSettings.playerIsDirection = self.id
			spriteCallNum = spriteCallNum+1
           end
             if 
				(event.phase == "ended" or event.phase == "cancelled")
				then
                print("Its out")
				if GameSettings.chargeInitiated < 2 then
					player0:setSequence("stopped")
					player0:play()
				end
			GameSettings.playerIsMoving = 0
			GameSettings.playerIsFirstMoving = 0
			GameSettings.playerMoveAttack = 0
			GameSettings.playerIsDirection = nil
			spriteCallNum = 0
			self._touch_num = 0
					setAlphaButtons()
             end
		end
		return true
	end
	local function deadMoveTouch( self, event)
		if GameSettings.chargeInitiated < 2 then
            --print("Touched "..self.." and stopped movement")
			print("WORKING NOW AAA")
			player0:setSequence("stopped")
			player0:play()
			GameSettings.playerIsMoving = 0
			GameSettings.playerIsFirstMoving = 0
			GameSettings.playerMoveAttack = 0
			GameSettings.playerIsDirection = nil
			spriteCallNum = 0
			upArrow._touch_num = 0
			downArrow._touch_num = 0
			rightArrow._touch_num = 0
			leftArrow._touch_num = 0
			setAlphaButtons()
		end
	end

	
	------------------------------------------------------------------
	
