# Prevent self-damaging
effect give @s minecraft:resistance 1 5 true

# Prevent harming allies
execute if entity @s[tag=ally_medabot] positioned ^ ^ ^2 run effect give @a[distance=..10,tag=ally_medabot] minecraft:resistance 1 5 true
execute if entity @s[tag=enemy_medabot] positioned ^ ^ ^2 run effect give @e[distance=..10,tag=enemy_medabot] minecraft:resistance 1 5 true

# Spawn an explosion depending on the charge value
execute if entity @s[scores={Charge=0..10}] unless entity @s[scores={ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:1b,Tags:["wave"]}
execute if entity @s[scores={Charge=11..20}] unless entity @s[scores={ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:2b,Tags:["wave"]}
execute if entity @s[scores={Charge=21..30}] unless entity @s[scores={ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:3b,Tags:["wave"]}
execute if entity @s[scores={Charge=31..40}] unless entity @s[scores={ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:4b,Tags:["wave"]}
execute if entity @s[scores={Charge=41..50}] unless entity @s[scores={ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:5b,Tags:["wave"]}
execute if entity @s[scores={Charge=0..10,ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:2b,Tags:["wave"]}
execute if entity @s[scores={Charge=11..20,ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:3b,Tags:["wave"]}
execute if entity @s[scores={Charge=21..30,ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:4b,Tags:["wave"]}
execute if entity @s[scores={Charge=31..40,ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:5b,Tags:["wave"]}
execute if entity @s[scores={Charge=41..50,ScoutTime=1..}] anchored eyes run summon minecraft:creeper ^ ^ ^2 {CustomName:'{"translate":"medabots_server:move.wave"}',Fuse:0s,ExplosionRadius:6b,Tags:["wave"]}

# Remove from head uses if it was the head part
scoreboard players remove @s[tag=head_activated] HeadUses 1