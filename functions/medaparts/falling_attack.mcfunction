# Tag the attack
tag @s[tag=!fallen,nbt={Item:{tag:{medabots_server:{id:"medabots_server:attack.falling",team:"ally"}}}}] add ally_team
tag @s[tag=!fallen,nbt={Item:{tag:{medabots_server:{id:"medabots_server:attack.falling",team:"enemy"}}}}] add enemy_team
tag @s[tag=!fallen,nbt={Item:{tag:{medabots_server:{id:"medabots_server:attack.falling",strong:1b}}}}] add strong
data merge entity @s[tag=falling,tag=!fallen] {CustomName:'{"translate":"medabots_server:move.falling"}',Tags:["hostile","do_not_teleport","falling","fallen"],PickupDelay:32767s,Age:3600s}

# Damage close enemies
execute if entity @s[tag=fallen,tag=!strong,tag=!ally_team,tag=!enemy_team] as @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b}] unless entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling_hit
execute if entity @s[tag=fallen,tag=!strong,tag=ally_team] as @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b},tag=!ally_medabot] unless entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling_hit
execute if entity @s[tag=fallen,tag=!strong,tag=enemy_team] as @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b},tag=!enemy_medabot] unless entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling_hit
execute if entity @s[tag=fallen,tag=strong,tag=!ally_team,tag=!enemy_team] as @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b}] unless entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling_hit_strong
execute if entity @s[tag=fallen,tag=strong,tag=ally_team] as @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b},tag=!ally_medabot] unless entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling_hit_strong
execute if entity @s[tag=fallen,tag=strong,tag=enemy_team] as @e[tag=!falling,distance=..1,tag=hostile,nbt={OnGround:1b},tag=!enemy_medabot] unless entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling_hit_strong