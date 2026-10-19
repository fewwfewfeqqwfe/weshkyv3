-- Weshky V3 loader: runs the script only in Build a Boat for Treasure (place 537413528)
local PLACE_ID   = 537413528
local SCRIPT_URL = "https://gitlab.com/babft/weshkyv3/-/raw/main/source/source?ref_type=heads"

if game.PlaceId == PLACE_ID then
	loadstring(game:HttpGet(SCRIPT_URL))()
else
	pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Weshky V3",
			Text = "This script only works in Build a Boat for Treasure.",
			Duration = 6,
		})
	end)
end
