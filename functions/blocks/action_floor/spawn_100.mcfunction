execute as @e[distance=..0.7,tag=no_processing] run data merge entity @s {Invulnerable:0b}
scoreboard players operation @e[distance=..0.7,tag=no_processing] ActionFloorNr = @s ActionFloorNr
tag @e[distance=..0.7,tag=no_processing] remove no_processing
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:snow
fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
tag @s[tag=1_medallar_cent] remove 1_medallar_cent
tag @s[tag=2_medallar_cents] remove 2_medallar_cents
tag @s[tag=4_medallar_cents] remove 4_medallar_cents
tag @s[tag=6_medallar_cents] remove 6_medallar_cents
tag @s[tag=10_medallar_cents] remove 10_medallar_cents
tag @s[tag=20_medallar_cents] remove 20_medallar_cents
tag @s add entity_exists
scoreboard players set @s Time -100