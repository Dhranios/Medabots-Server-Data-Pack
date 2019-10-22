data merge block -2016 44 -197 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/final_destination_1/enter"}}'}
setblock -2014 45 -197 minecraft:red_wool

#loot spawn ~ ~ ~ loot medabots_server:gameplay/options/1
#execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/final_destination_1/empty
#execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
function medabots_server:stage/try/final_destination_1/empty