CreateThread(function()
    while true do

        local Player = PlayerPedId()
        local WeaponHash = GetSelectedPedWeapon(Player)

        local sleep = 100        
        local ammo = 0

        if (IsPedArmed(Player, 4)) then 
            _, ammo = GetAmmoInClip(Player, WeaponHash)
            sleep = 100
        else sleep = 500
        end

        SendNUIMessage({
            action = "Status",
            Ammo = ammo,
            Armed = IsPedArmed(Player, 4),
        })

        Wait(sleep)
    end
end)
