execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run data merge block -1362 52 -114 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_10/enter"}}'}
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run setblock -1362 53 -116 minecraft:red_wool

#loot spawn ~ ~ ~ loot medabots_server:gameplay/options/1
#execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/lagdou_ruins_10/empty
#execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
function medabots_server:stage/try/lagdou_ruins_10/empty