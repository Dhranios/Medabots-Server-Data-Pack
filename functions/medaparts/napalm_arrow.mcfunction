# Name the arrow
data merge entity @s[tag=!napalm,nbt={CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:"{\"translate\":\"medabots_server:move.napalm\"}",Tags:["napalm"]}

# Part of team?
execute if entity @e[scores={Napalm=1..,Time=32..82},tag=ally_medabot] run tag @s[tag=!life_time] add ally_team
execute if entity @e[scores={Napalm=1..,Time=32..82},tag=enemy_medabot] run tag @s[tag=!life_time] add enemy_team

# Leave a temporary trail
tag @s[tag=napalm] add life_time
execute if entity @s[tag=napalm,scores={LifeTime=2..},tag=!ally_team,tag=!enemy_team] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.napalm\"}",Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["napalm","life_time"]}
execute if entity @s[tag=napalm,scores={LifeTime=2..},tag=ally_team] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.napalm\"}",Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["napalm","life_time","ally_team"]}
execute if entity @s[tag=napalm,scores={LifeTime=2..},tag=enemy_team] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.napalm\"}",Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["napalm","life_time","enemy_team"]}

# Explode if in the ground
execute if entity @s[tag=napalm,tag=in_ground] run summon minecraft:creeper ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.napalm\"}",Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Tags:["napalm"]}