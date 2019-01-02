playsound medabots_server:entity.rubberobo.death neutral @a ~ ~ ~ 1
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute store result entity @s Pos[0] double 1 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s HomeZ
execute at @s run teleport @s ~0.5 ~-2 ~0.5
scoreboard players set @s Time 80
data merge entity @s {NoGravity:1b,Invulnerable:1b,AbsorptionAmount:250f}
tag @s remove hurt
tag @s remove walking
tag @s remove see_goal_area
tag @s remove seen_goal_area
tag @s remove follow_wall
tag @s remove move_1_block
tag @s remove hurt
tag @s remove downed
tag @s remove turn_left
tag @s add respawning