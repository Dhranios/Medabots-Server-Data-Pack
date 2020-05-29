scoreboard players operation @e[distance=..0.7,tag=no_processing] ActionFloorNr = @s ActionFloorNr
tag @e[distance=..0.7,tag=!action_floor,tag=no_processing] add no_ticking
tag @e[distance=..0.7,tag=!action_floor,tag=no_processing] remove no_processing
tag @s[tag=1_medallar_cent] remove 1_medallar_cent
tag @s[tag=2_medallar_cents] remove 2_medallar_cents
tag @s[tag=4_medallar_cents] remove 4_medallar_cents
tag @s[tag=6_medallar_cents] remove 6_medallar_cents
tag @s[tag=10_medallar_cents] remove 10_medallar_cents
tag @s[tag=20_medallar_cents] remove 20_medallar_cents
tag @s add entity_exists
playsound medabots_server:block.action_floor.close block @a ~ ~ ~ 1