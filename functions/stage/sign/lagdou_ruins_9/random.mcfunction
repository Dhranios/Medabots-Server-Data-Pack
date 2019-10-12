execute if entity @s[tag=!vs_cpus] run data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_9/enter"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1289 53 -281 minecraft:red_wool

loot spawn ~ ~ ~ loot medabots_server:gameplay/options/2
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/lagdou_ruins_9/empty
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:stage/try/lagdou_ruins_9/darkness
execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s