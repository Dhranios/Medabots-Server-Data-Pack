# Prevent money from jumping away
data merge entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:medallar_cent"}}}},tag=!do_not_teleport] {Motion:[0.0d,0.0d,0.0d],PickupDelay:0s}

# Give dropped items to the me
data merge entity @s {PickupDelay:0s}
execute at @a[tag=hostile,distance=..2,sort=nearest,limit=1] run teleport @s ~ ~ ~
tag @s add do_not_teleport