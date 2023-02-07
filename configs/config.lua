Config = {}

Config.Core = "qb-core" -- Your qb-core folder name
Config.Payment = "cash" -- "cash" or "bank" 
Config.Notify = "QBCore" -- "QBCore" | "okok" | "mythic"
Config.Amount = 25000 -- Amount of money pay for documents
Config.Debug = false -- Enable debug?
Config.NeedItem = false -- Need item to enter on warehouse?
Config.Item = "" -- Put the item you want for enter on warehouse
Config.CallCops = true -- Call cops when forgery?

Config.Times = {
	ForgeID = 15, -- Time of progressbar
	ForgeDriver = 15, -- Time of progressbar
}

Config.Locations = {
	EnterWarehouse = vector3(-333.5, 6228.77, 31.67), -- Location to enter warehouse
	ExitWarehouse = vector3(1174.0, -3196.63, -39.01), -- Location to exit warehouse
	ForgeID = vector3(1169.52, -3196.85, -39.01), -- Location to forge a ID
	ForgeDriver = vector3(1159.82, -3199.15, -39.01), -- Location to forge a Driver Licenses
}
