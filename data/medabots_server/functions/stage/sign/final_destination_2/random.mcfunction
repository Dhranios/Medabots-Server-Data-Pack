execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run data merge block -1959 44 -197 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/final_destination_2/enter"}}'}
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run setblock -1957 45 -197 minecraft:red_wool
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s MusicType 4
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s Stage 62

#loot spawn ~ ~ ~ loot medabots_server:gameplay/options/1
#execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:stage/try/final_destination_2/empty
#execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
function medabots_server:stage/try/final_destination_2/empty