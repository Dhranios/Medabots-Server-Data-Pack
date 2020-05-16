loot spawn ~ ~ ~ loot medabots_server:gameplay/options/8
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:1}}}] run teleport @s ~ ~ ~ ~ ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:2}}}] run teleport @s ~ ~ ~ ~45 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:3}}}] run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:4}}}] run teleport @s ~ ~ ~ ~135 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:5}}}] run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:6}}}] run teleport @s ~ ~ ~ ~225 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:7}}}] run teleport @s ~ ~ ~ ~270 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Option:8}}}] run teleport @s ~ ~ ~ ~315 ~
execute as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
tag @s add rotated