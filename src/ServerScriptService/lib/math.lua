--Preinitialization
if not (script:IsA("ModuleScript")) then error(string.format("Failed to load %s %s", script.Name, script.ClassName)) end
--Variables
local meta = {}
local mathext = {}
local mathutil = {}
--Initialization

--Functions
meta.__index = function(_ : table, k : any)
    if mathutil[k] then
        return mathutil[k]
    else
        local a,b = pcall(function() return math[k] end)
        if a then
            return b
        end
    end
    error("Unable to fetch variable")
end
meta.__newindex = function()
    error("Unable to create value to math utility")
end

mathutil.testFunction = function(a : number, b : number)
    return a+b
end
--Events

--Postinitialization
setmetatable(mathext, meta)
--Main
return mathext