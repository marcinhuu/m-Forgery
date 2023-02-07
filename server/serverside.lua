local QBCore = exports[Config.Core]:GetCoreObject()

RegisterServerEvent("m-Forgery:Server:ForgeID", function(citizenid, firstname, lastname, birthday, nationality)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money.cash >= Config.Amount then
        info = {}
        info.citizenid = citizenid
        info.firstname = firstname
        info.lastname = lastname
        info.birthdate = birthday
        info.gender = Player.PlayerData.charinfo.gender
        info.nationality = nationality

        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["id_card"], 'add')
        Player.Functions.AddItem("id_card", 1, nil, info)

        Player.Functions.RemoveMoney(Config.Payment, Config.Amount)
    else
        TriggerClientEvent('QBCore:Notify', src, Language.Money, 'error', 5000)
    end
end)

RegisterServerEvent("m-Forgery:Server:ForgeDriverLicense", function(firstname,lastname,birthday)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money.cash >= Config.Amount then
        info = {}
        info.firstname = firstname
        info.lastname = lastname
        info.birthdate = birthday
        info.type = "CLASS G DRIVER LICENSE"

        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["driver_license"], 'add')
        Player.Functions.AddItem("driver_license", 1, nil, info)

        Player.Functions.RemoveMoney(Config.Payment, Config.Amount)
    else
        TriggerClientEvent('QBCore:Notify', src, Language.Money, 'error', 5000)
    end
end)

if Config.NeedItem then
    QBCore.Functions.CreateCallback('m-Forgery:Server:HaveItem', function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if Player.Functions.GetItemByName(Config.Item) and Player.Functions.GetItemByName(Config.Item).amount >= 1 then
            cb(true)
        else
            cb(false)
        end
    end)
end