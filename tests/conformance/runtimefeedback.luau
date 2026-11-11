local iterations = 0

local function runOnce(start, limit, step)
	for _ = start, limit, step do
		iterations += 1
		break
	end
end

runOnce(1, 0, 0)
runOnce(1, 0, -0.0)
runOnce(0, -math.huge, 0)
runOnce(0, math.huge, 1)
runOnce(1, 0, 0 / 0)

assert(iterations == 5)

local sum = 0
for index = 1, 5 do
	sum += index
end
assert(sum == 15)
