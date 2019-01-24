# Prevent money from jumping away
data merge entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:medallar_cent"}}}},tag=!do_not_teleport,nbt=!{Thrower:{}}] {Motion:[0.0d,0.0d,0.0d],PickupDelay:0s}

# Give dropped items to the me
execute if entity @a[tag=hostile,distance=..2,sort=nearest,limit=1] run data merge entity @s[tag=!do_not_teleport] {PickupDelay:0s}
execute unless entity @a[tag=hostile,distance=..2,sort=nearest,limit=1] run data merge entity @s[tag=!do_not_teleport] {PickupDelay:40s}
execute if entity @s[scores={Time=60},nbt={Owner:{}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["do_not_teleport","no_replace"],PickupDelay:1s}
execute if entity @s[scores={Time=60},nbt={Owner:{}}] run data modify entity @e[type=minecraft:item,tag=no_replace,distance=..0.1,limit=1] Item merge from entity @s Item
kill @s[scores={Time=60},nbt={Owner:{}}]
data modify entity @s Owner merge from entity @s Thrower
execute at @a[tag=hostile,distance=..2,sort=nearest,limit=1] run teleport @s[tag=!do_not_teleport] ~ ~ ~
tag @s add do_not_teleport
scoreboard players add @s Time 1