local QBCore = exports[Config.Core]:GetCoreObject()

function Notify(msg, type, time)
    if Config.Notify == "QBCore" then
        if type == "primary" then 
            QBCore.Functions.Notify(msg, "primary", time)
        end
        if type == "success" then
            QBCore.Functions.Notify(msg, "success", time)
        end
        if type == "error" then
            QBCore.Functions.Notify(msg, "error", time)
        end
    elseif Config.Notify == "okok" then
        if type == "primary" then 
            exports['okokNotify']:Alert('Farming', msg, time, 'primary')
        end
        if type == "success" then
            exports['okokNotify']:Alert('Farming', msg, time, 'success')
        end
        if type == "error" then
            exports['okokNotify']:Alert('Farming', msg, time, 'error')
        end
    elseif Config.Notify == "mythic" then
        if type == "primary" then 
            exports['mythic_notify']:DoHudText('inform', msg)
        end
        if type == "success" then
            exports['mythic_notify']:DoHudText('success', msg)
        end
        if type == "error" then
            exports['mythic_notify']:DoHudText('error', msg)
        end
    end
end

function CallCops()
	exports["ps-dispatch"]:CustomAlert({
	   coords = Config.Locations.EnterWarehouse,
	   message = "Forgering ID",
	   dispatchCode = "911",
	   description = "Forgering ID",
	   radius = 0,
	   sprite = 357,
	   color = 3,
	   scale = 0.8,
	   length = 3,
	})
end