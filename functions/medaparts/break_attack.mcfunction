# Tag the attack
tag @s[tag=!broken,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break",team:"ally"}}}}] add ally_team
tag @s[tag=!broken,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break",team:"enemy"}}}}] add enemy_team
tag @s[tag=!broken,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break",strong:1b}}}}] add strong
data merge entity @s[tag=!broken] {CustomName:'{"translate":"medabots_server:move.break"}',Tags:["hostile","do_not_teleport","break","broken"],PickupDelay:32767s,Age:3600s}

# Spawn black mass
summon minecraft:armor_stand ~ ~-1.3 ~ {Invisible:1b,CustomName:'{"translate":"medabots_server:move.break"}',NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}],Marker:1b,Tags:["life_time"]}

# Damage every entity that gets close
execute if entity @s[tag=broken,tag=!strong,tag=!ally_team,tag=!enemy_team] as @e[tag=!break,distance=..1,tag=hostile] unless entity @s[scores={Break=1..}] run function medabots_server:medaparts/break_hit
execute if entity @s[tag=broken,tag=!strong,tag=ally_team] as @e[tag=!break,distance=..1,tag=hostile,tag=!ally_team] unless entity @s[scores={Break=1..}] run function medabots_server:medaparts/break_hit
execute if entity @s[tag=broken,tag=!strong,tag=enemy_team] as @e[tag=!break,distance=..1,tag=hostile,tag=!enemy_team] unless entity @s[scores={Break=1..}] run function medabots_server:medaparts/break_hit
execute if entity @s[tag=broken,tag=strong,tag=!ally_team,tag=!enemy_team] as @e[tag=!break,distance=..1,tag=hostile] unless entity @s[scores={Break=1..}] run function medabots_server:medaparts/break_hit_strong
execute if entity @s[tag=broken,tag=strong,tag=ally_team] as @e[tag=!break,distance=..1,tag=hostile,tag=!ally_team] unless entity @s[scores={Break=1..}] run function medabots_server:medaparts/break_hit_strong
execute if entity @s[tag=broken,tag=strong,tag=enemy_team] as @e[tag=!break,distance=..1,tag=hostile,tag=!enemy_team] unless entity @s[scores={Break=1..}] run function medabots_server:medaparts/break_hit_strong