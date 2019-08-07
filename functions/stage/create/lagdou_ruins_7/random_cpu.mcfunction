loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
# Gargoyle
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/rokusho/hippopojamas/nin_ninja/fly_falcon/devil
# Gorgon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/uglyduck/peppercat/fancyroll/potato_insect/question

execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/keithturtle/bezelga/basstroyer/baroncastle/devil

execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/primity_baby/rokusho/warbonnet/yuchitang/kuwagata

execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/uglyduck/peppercat/saintnurse/uglyduck/question
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 42
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot