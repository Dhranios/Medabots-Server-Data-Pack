execute as @a[dx=0,dy=4,dz=0,distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
tag @a[dx=0,dy=4,dz=0,distance=..0.7,tag=hostile] add had_death
tag @a[dx=0,dy=4,dz=0,distance=..0.7,tag=hostile] add crushed
execute as @e[dx=0,dy=4,dz=0,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}

tag @e[tag=crushed,tag=!dying] add dying