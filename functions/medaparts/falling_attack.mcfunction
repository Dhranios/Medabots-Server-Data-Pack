# Tag the attack
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:attack.falling"}}}}] add falling 
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:attack.falling",team:"ally"}}}}] add ally_team
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:attack.falling",team:"enemy"}}}}] add enemy_team 
data merge entity @s[tag=falling] {CustomName:"{\"translate\":\"medabots_server:move.falling\"}",Tags:["hostile","do_not_teleport","fallen"],PickupDelay:32767s,Age:3600s}

# Damage close enemies
execute if entity @s[tag=fallen,tag=!ally_team,tag=!enemy_team] run tag @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b}] add falling
execute if entity @s[tag=fallen,tag=ally_team] run tag @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b},tag=!ally_medabot] add falling
execute if entity @s[tag=fallen,tag=enemy_team] run tag @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b},tag=!enemy_medabot] add falling
tag @a[tag=falling,scores={Falling=1..}] remove falling
effect give @e[tag=falling,tag=!undead] minecraft:instant_damage 1 0 false
effect give @e[tag=falling,tag=undead] minecraft:instant_health 1 0 false
effect give @e[tag=falling] minecraft:levitation 1 30 false
effect give @e[tag=falling] minecraft:nausea 5 0 false
scoreboard players set @e[tag=falling,scores={Time=2..}] Time 1000
execute at @e[tag=falling] run kill @s
tag @e[tag=falling] remove falling