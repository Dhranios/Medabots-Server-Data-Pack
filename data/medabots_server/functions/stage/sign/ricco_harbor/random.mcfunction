scoreboard players set @s Stage 46
scoreboard players set @s Gamemode 0

#loot spawn ~ ~ ~ loot medabots_server:gameplay/options/1
#execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/ricco_harbor/empty
#execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
function medabots_server:stage/try/ricco_harbor/empty

execute if entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/ricco_harbor/random_success
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Stage
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Gamemode