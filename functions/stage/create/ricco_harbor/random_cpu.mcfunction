loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/yuchitang/ka_o_lantern/attack_tyrano/yuchitang/kuwagata
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/uglyduck/pure_mermaid/frappe/uglyduck/kuwagata
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/dragonbeetle/fly_falcon/keithturtle/dragonbeetle/kabuto
# Based on F.L.U.D.D., auxiliairy charge = turbo nozzle, rifle = spray, fly = rocket nozzle/hover nozzle, chameleon = blowing up those balloon pig... thingies
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/warbonnet/bluesdog/bluesdog/fly_falcon/chameleon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/hellphoenix/marine_killer/marine_killer/bluesdog/kuwagata
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 46
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot