
	
	------------------------------------------------------------------
	
	function movingMotion()
	if player0 == nil or GameSettings.playerHasDied == true or GameSettings.quitGameNow == true or GameSettings.levelIsCleared == true or GameFile.hitPoints <= 0 then
		Runtime:removeEventListener("enterFrame", movingMotion)
		return false 
	end
	--print(" upArrow._touch_num = "..tostring(upArrow._touch_num))
	--print(" downArrow._touch_num = "..tostring(downArrow._touch_num))
	--print(" rightArrow._touch_num = "..tostring(rightArrow._touch_num))
	--print(" leftArrow._touch_num = "..tostring(leftArrow._touch_num))
player0.x = player0.x + motionx
player0.y = player0.y + motiony
player0.hitBox.x = player0.x
player0.hitBox.y = player0.y
	if (GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0) then
		iOh = 250
		iUg = 105
	elseif GameFile.Speed > 4 or GameFile.playerName == "Dynas" then
		iOh = 180
		iUg = 95
	elseif GameSettings.SpeedChain == 0 or GameSettings.UnlimitedChain == 0 or GameFile.Speed == 4 then
		iOh = 105
		iUg = 55
	end
	if GameSettings.playerIsFirstMoving == 0 or GameSettings.lockStatus == true or GameSettings.gymIsCleared == 1 then
			GameSettings.playerIsMoving = 0
				downArrow._touch_num = 0
				upArrow._touch_num = 0
				leftArrow._touch_num = 0
				rightArrow._touch_num = 0
			
				--player0:setSequence("stopped")
				--player0:play()
			--GameSettings.playerIsDirection = nil
	end
	if GameSettings.lockStatus == false and GameSettings.gymIsCleared == 0 then
		if spriteCallNum < 2 and (GameSettings.playerIsMoving == 1 and GameSettings.playerIsDirection == "right") or (GameSettings.playerIsFirstMoving == 1 and GameSettings.playerIsDirection == "right") then
		player0.xScale = Hr.heroSc
	GameSettings.playerIsMoving = 1
	if rightArrow._touch_num < 11 then
	rightArrow._touch_num = rightArrow._touch_num+5
	leftArrow._touch_num = 0
			player0:setSequence("walking")
			player0:play()
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0 or GameFile.Speed > 10 then
				player0:setSequence("running")
				player0:play()
			end
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0  then
				player0:setSequence("running")

				player0:play()

			end
	end
		GameSettings.DefenseCharge = 0
			local vx, vy = player0:getLinearVelocity()
			if vx >= iOh then
			player0:setLinearVelocity(vx * 0.8, vy * 0.01)
			end
			player0:applyForce(player0.xScale * 35, 0, vx, player0.y)	
	end
	end
	if GameSettings.lockStatus == false and GameSettings.gymIsCleared == 0 then
		if spriteCallNum < 2 and (GameSettings.playerIsMoving == 2 and GameSettings.playerIsDirection == "left") or (GameSettings.playerIsFirstMoving == 1 and GameSettings.playerIsDirection == "left") then
				player0.xScale = Hr.heroSc*-1
	GameSettings.playerIsMoving = 2
	if leftArrow._touch_num < 11 then
	leftArrow._touch_num = leftArrow._touch_num+5
	rightArrow._touch_num = 0
			player0:setSequence("walking")
			player0:play()
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0 or GameFile.Speed > 10 then
				player0:setSequence("running")
				player0:play()
			end
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0  then
				player0:setSequence("running")

				player0:play()

			end
		end
		GameSettings.DefenseCharge = 0
			local vx, vy = player0:getLinearVelocity()
			if vx <= iOh*-1 then
			player0:setLinearVelocity(vx * 0.8, vy * 0.01)
			end
			player0:applyForce(player0.xScale * 35, 0, vx, player0.y)	
		end
	end
	if GameSettings.lockStatus == false and GameSettings.gymIsCleared == 0 then
		if (GameSettings.playerIsMoving == 3 and GameSettings.playerIsDirection == "up") or (GameSettings.playerIsFirstMoving == 1 and GameSettings.playerIsDirection == "up") then
	GameSettings.playerIsMoving = 3
	if upArrow._touch_num < 11 then
	upArrow._touch_num = upArrow._touch_num+5
	rightArrow._touch_num = 0
			player0:setSequence("walking")
			player0:play()
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0 or GameFile.Speed > 10 then
				player0:setSequence("running")
				player0:play()
			end
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0  then
				player0:setSequence("running")

				player0:play()

			end
		end
		GameSettings.DefenseCharge = 0
			local vx, vy = player0:getLinearVelocity()
			if vy <= iUg*-1 then
			player0:setLinearVelocity(vx * 0.8, vy * 0.01)
			end
			player0:applyForce(0, -70, player0.x, vy)	
		end
	end
	if GameSettings.lockStatus == false and GameSettings.gymIsCleared == 0 then
		if (GameSettings.playerIsMoving == 4 and GameSettings.playerIsDirection == "down") or (GameSettings.playerIsFirstMoving == 1 and GameSettings.playerIsDirection == "down") then
	GameSettings.playerIsMoving = 4
	if downArrow._touch_num < 11 then
	downArrow._touch_num = downArrow._touch_num+5
	rightArrow._touch_num = 0
			player0:setSequence("walking")
			player0:play()
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0 or GameFile.Speed > 10 then
				player0:setSequence("running")
				player0:play()
			end
			if GameSettings.SpeedChain > 0 or GameSettings.UnlimitedChain > 0  then
				player0:setSequence("running")

				player0:play()

			end
		end
		GameSettings.DefenseCharge = 0
			local vx, vy = player0:getLinearVelocity()
			if vy <= iUg*-1 then
			player0:setLinearVelocity(vx * 0.8, vy * 0.01)
			end
			player0:applyForce(0, 70, player0.x, vy)	
		end
	end
	if GameSettings.isPaused == true  then
		GameSettings.DefenseCharge = 0
			GameSettings.playerIsMoving = 0
			player0:setSequence("stopped")
			player0:play()
	end
	if GameSettings.playerIsMoving == 0 then
		GameSettings.playerMoveAttack = 0
		local vx, vy = player0:getLinearVelocity()
		player0:setLinearVelocity(vx * 0.4, vy* 0.4)
	end
		--[[
		print(player0.y)
		print(fT-15)
			]]
		if player0.y <= GameSettings.upperHeight then
			player0.y = GameSettings.upperHeight
			end
		if player0.y >= eH then
			player0.y = eH
			end
		if player0.x <= aG+40 then
			player0.x = aG+40
			end
			yUh = ((aH-qWy))*-1
		if player0.x >= yUh then
			player0.x = yUh
			end
	if GameSettings.playerHasDied == true or GameSettings.quitGameNow == true or GameSettings.levelIsCleared == true or GameSettings.gymIsCleared == true then
		Runtime:removeEventListener("enterFrame", movingMotion)
	end
end
Runtime:addEventListener("enterFrame", movingMotion)

	
	------------------------------------------------------------------
	
