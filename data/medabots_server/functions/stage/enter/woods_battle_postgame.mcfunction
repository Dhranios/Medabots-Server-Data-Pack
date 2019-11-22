loot spawn ~ ~ ~ loot medabots_server:gameplay/options/3
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run tag @s add dialog_infinity_postgame_samantha
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run tag @s add dialog_infinity_postgame_koji
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run tag @s add dialog_infinity_postgame_director_tune
execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s