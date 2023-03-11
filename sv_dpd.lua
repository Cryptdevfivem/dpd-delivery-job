RegisterServerEvent("ENHANCE:returnSafe:server")
AddEventHandler("ENHANCE:returnSafe:server", function(deliveryType, safeReturn)
    local source = source
    local user_id = ENHANCE.getUserId(source)
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

RegisterServerEvent("ENHANCE:finishDelivery:server")
AddEventHandler("ENHANCE:finishDelivery:server", function(deliveryType)
    local source = source
    local user_id = ENHANCE.getUserId(source)
    local delieryMoney = 50000
    for k, v in pairs(dpdcfg.Rewards) do
        if k == deliveryType then
            deliveryMoney = v
            break
        end
    end
    ENHANCE.giveBankMoney(user_id,delieryMoney)
    ENHANCEclient.notify(source,{"Package Delivered, you received £"..tostring(deliveryMoney)})
end)

RegisterServerEvent("ENHANCE:removeSafeMoney:server")
AddEventHandler("ENHANCE:removeSafeMoney:server", function(deliveryType)
        local user_id = ENHANCE.getUserId({source})
        local SafeMoney = 4000
            for k, v in pairs(dpdcfg.Safe) do
                if k == deliveryType then
                    SafeMoney = v
                break
            end
        end
    TriggerClientEvent("ENHANCE:startJob:client", source, deliveryType)
end)
