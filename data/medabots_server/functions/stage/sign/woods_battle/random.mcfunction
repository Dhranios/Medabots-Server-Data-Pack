execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 4
scoreboard players set @s Stage 49
scoreboard players set @s Gamemode 0

loot spawn ~ ~ ~ loot medabots_server:gameplay/options/8
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/woods_battle/stones
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:stage/try/woods_battle/action_floors_1
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:stage/try/woods_battle/action_floors_2
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:stage/try/woods_battle/balloon_bombs
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:stage/try/woods_battle/accelerators
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:6}}}] run function medabots_server:stage/try/woods_battle/lasers
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:7}}}] run function medabots_server:stage/try/woods_battle/cannons
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:8}}}] run function medabots_server:stage/try/woods_battle/empty
execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s