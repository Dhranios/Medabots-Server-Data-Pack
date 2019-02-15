# New gass floors need scores and carpet
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 20
setblock ~ ~ ~ minecraft:light_gray_carpet

# Coundown blowing
scoreboard players remove @s[scores={Time=20..}] Time 1
scoreboard players remove @s[scores={Time=1..20},tag=enabled] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.gas_floor hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Time=0}] Time 200
execute if entity @s[scores={Time=121..}] run function medabots_server:blocks/gas_floor/gas

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
kill @s[tag=dead]