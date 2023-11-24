local optimize = {}

optimize.get_boolean = function(item)
    if item:get() == true then
        return true
    elseif item:get() == false then
        return false
    end
end

-- @Example:
local switch = ui.create('A'):switch('Test')

events.render:set(function()
    if optimize.get_boolean(switch) == true then
        print('true')
    elseif optimize.get_boolean(switch) == false then
        print('false')
    end
end)
