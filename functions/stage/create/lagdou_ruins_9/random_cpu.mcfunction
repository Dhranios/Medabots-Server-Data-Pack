loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run summon minecraft:item ~ ~ ~
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run summon minecraft:item ~ ~ ~
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run summon minecraft:item ~ ~ ~
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run summon minecraft:item ~ ~ ~
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run summon minecraft:item ~ ~ ~
execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
execute as @e[type=minecraft:item,distance=..0.7] unless data entity @s Item.tag.Option run teleport @s ~ ~ ~ ~ ~