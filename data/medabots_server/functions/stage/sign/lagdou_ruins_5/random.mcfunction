execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_5/enter"}}'}
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run setblock -1347 52 -230 minecraft:red_wool
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s MusicType 4
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s Stage 40

loot spawn ~ ~ ~ loot medabots_server:gameplay/options/2
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/lagdou_ruins_5/empty
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:stage/try/lagdou_ruins_5/darkness
execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s