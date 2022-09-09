--Initialization
if not (script:IsA("ModuleScript")) then error(string.format("Failed to load %s %s", script.Name, script.ClassName)) end
--Variables
local meta = {}
local mathext = {}

meta.__index = math
meta.__newindex = function(t,k,v)
    error("Unable to create value to math utility")
end
--Functions

--Events

--Main
return setmetatable(mathext,meta)