# Tag the attack
tag @s[tag=!damage_balled,nbt={Item:{tag:{medabots_server:{id:"medabots_server:damage_ball",team:"ally"}}}}] add ally_team
tag @s[tag=!damage_balled,nbt={Item:{tag:{medabots_server:{id:"medabots_server:damage_ball",team:"enemy"}}}}] add enemy_team
data merge entity @s[tag=damage_ball,tag=!damage_balled] {NoGravity:1b,Tags:["hostile","do_not_teleport","damage_balled"],PickupDelay:32767s,Age:3600s}

# Summon purple mass
summon minecraft:armor_stand ~ ~-1.3 ~ {Invisible:1b,CustomName:'{"translate":"medabots_server:move.chameleon"}',NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:purple_wool",Count:1b}],Marker:1b,Tags:["life_time"]}

# Damage enemies that come close, only remove this if the enemy is deep in the range
execute if entity @s[tag=damage_balled,tag=!ally_team,tag=!enemy_team] as @e[tag=!power_press,distance=..2,tag=hostile] unless entity @s[scores={Medaforce=-5}] run function medabots_server:medaparts/damage_ball_hit
execute if entity @s[tag=damage_balled,tag=ally_team] as @e[tag=!power_press,distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Medaforce=-5}] run function medabots_server:medaparts/damage_ball_hit
execute if entity @s[tag=damage_balled,tag=enemy_team] as @e[tag=!power_press,distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Medaforce=-5}] run function medabots_server:medaparts/damage_ball_hit