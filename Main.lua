#sorting algorithim in Love2d




tosort = {}
len = 100

for i=1,len do

	--tosort[i] = len-(i-1)
	tosort[i] = love.math.random(1,255)

end

function love.draw()

	for i=1,len do
		love.graphics.setColor(tosort[i],0,0)
		love.graphics.rectangle("fill",10,i*5,tosort[i]*2.5,5)

	end


end


function love.update()
	if love.keyboard.isDown("left") then
		sort()
	end

	if love.keyboard.isDown("right") then
		isort()
	end

	if love.keyboard.isDown("up") then
		rsort()
	end

	if love.keyboard.isDown(" ") then
		complete()
	end

end


function sort()
	for i=1,len - 1 do
		if (tosort[i+1] < tosort[i]) then
			a = tosort[i]
			b = tosort[i+1]
			tosort[i] = b
			tosort[i+1] = a
		end
	end
end

function isort()
	for i=1,len - 1 do
		if (tosort[i+1] > tosort[i]) then
			a = tosort[i]
			b = tosort[i+1]
			tosort[i] = b
			tosort[i+1] = a
		end
	end
end

function rsort()
	for i=2,len - 1 do
		if (tosort[i-1] > tosort[i]) then
			a = tosort[i]
			b = tosort[i+1]
			tosort[i] = b
			tosort[i+1] = a
		end
	end
	for i=2,len - 1 do
		if (tosort[i+1] > tosort[i]) then
			a = tosort[i]
			b = tosort[i-1]
			tosort[i] = b
			tosort[i-1] = a
		end
	end
end

function complete()

	k = 0
	for i=1,len - 1 do
		for i=1,len - (1+k) do
			if (tosort[i+1] < tosort[i]) then
				a = tosort[i]
				b = tosort[i+1]
				tosort[i] = b
				tosort[i+1] = a
			end
		end
		k = k + 1
	end
end
