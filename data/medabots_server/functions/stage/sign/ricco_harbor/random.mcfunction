execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run data merge block -1441 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ricco_harbor/enter"}}'}
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run setblock -1441 53 -212 minecraft:red_wool
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s MusicType 4
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s Stage 46

#loot spawn ~ ~ ~ loot medabots_server:gameplay/options/1
#execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/ricco_harbor/empty
#execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
function medabots_server:stage/try/ricco_harbor/empty