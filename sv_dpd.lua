RegisterServerEvent("vRP:returnSafe:server")
AddEventHandler("vRP:returnSafe:server", function(deliveryType, safeReturn)
    local source = source
    local user_id = vRP.getUserId(source)
    if safeReturn then
        local SafeMoney = 4000
        for k, v in pairs(dpdcfg.Safe) do
            if k == deliveryType then
                SafeMoney = v
                break
            end
        end
    else
    end
end)

RegisterServerEvent("vRP:finishDelivery:server")
AddEventHandler("vRP:finishDelivery:server", function(deliveryType)
    local source = source
    local user_id = vRP.getUserId(source)
    local delieryMoney = 50000
    for k, v in pairs(dpdcfg.Rewards) do
        if k == deliveryType then
            deliveryMoney = v
            break
        end
    end
    vRP.giveBankMoney(user_id,delieryMoney)
    vRPclient.notify(source,{"Package Delivered, you received £"..tostring(deliveryMoney)})
end)

RegisterServerEvent("vRP:removeSafeMoney:server")
AddEventHandler("vRP:removeSafeMoney:server", function(deliveryType)
        local user_id = vRP.getUserId({source})
        local SafeMoney = 4000
            for k, v in pairs(dpdcfg.Safe) do
                if k == deliveryType then
                    SafeMoney = v
                break
            end
        end
    TriggerClientEvent("vRP:startJob:client", source, deliveryType)
end)
