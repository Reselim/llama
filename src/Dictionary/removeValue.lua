local Dictionary = script.Parent

local Llama = Dictionary.Parent
local t = require(Llama.t)

local validate = t.table

local function removeValues(dictionary, value)
	assert(validate(dictionary))

	local new = {}

	for k, v in pairs(dictionary) do
		if v ~= value then
			new[k] = v
		end
	end

	return new
end

return removeValues