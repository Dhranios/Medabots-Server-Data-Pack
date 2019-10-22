# Keep in bounds
execute store result entity @s[tag=idle] Pos[2] double 1 run scoreboard players get @s HomeZ
execute at @s[tag=idle] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute if score @s Health < @s LastHealth run playsound medabots_server:entity.master_hand.damage hostile @a ~ ~ ~ 1

# Select random attack
scoreboard players set @s[scores={Dialog=20}] Dialog 0
execute unless entity @s[scores={Dialog=0..}] run scoreboard players add @s Dialog 0
execute if entity @a[distance=..30,tag=medabot,tag=!enemy_medabot] run scoreboard players add @s[scores={Time=0,Dialog=0}] Dialog 1
scoreboard players add @s[scores={Dialog=1..19}] Dialog 1
#execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","jet"],Duration:1}
execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","ram"],Duration:1}
#execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","crush"],Duration:1}
#execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","gun"],Duration:1}
execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","grab"],Duration:1}
#execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","poke"],Duration:1}
execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","punch"],Duration:1}
#execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","slap"],Duration:1}
execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","drill"],Duration:1}
#execute if entity @s[scores={Dialog=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","walk"],Duration:1}
execute if entity @s[scores={Dialog=20}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add selected
execute if entity @e[tag=random_select,tag=selected,tag=jet] run tag @s add attack_jet
execute if entity @e[tag=random_select,tag=selected,tag=ram] run tag @s add attack_ram
execute if entity @e[tag=random_select,tag=selected,tag=crush] run tag @s add attack_crush
execute if entity @e[tag=random_select,tag=selected,tag=gun] run tag @s add attack_gun
execute if entity @e[tag=random_select,tag=selected,tag=grab] run tag @s add attack_grab
execute if entity @e[tag=random_select,tag=selected,tag=poke] run tag @s add attack_poke
execute if entity @e[tag=random_select,tag=selected,tag=punch] run tag @s add attack_punch
execute if entity @e[tag=random_select,tag=selected,tag=slap] run tag @s add attack_slap
execute if entity @e[tag=random_select,tag=selected,tag=drill] run tag @s add attack_drill
execute if entity @e[tag=random_select,tag=selected,tag=walk] run tag @s add attack_walk
execute if entity @e[tag=random_select,tag=selected] run tag @s remove idle
kill @e[type=minecraft:area_effect_cloud,tag=random_select]
tag @s remove cooperate

# https://supersmashbros.fandom.com/wiki/Master_Hand
# Execute attack
execute if entity @s[tag=attack_ram] run function medabots_server:entities/master_hand/ram
execute if entity @s[tag=attack_crush] run function medabots_server:entities/master_hand/crush
execute if entity @s[tag=attack_gun] run function medabots_server:entities/master_hand/gun
execute if entity @s[tag=attack_grab] run function medabots_server:entities/master_hand/grab
execute if entity @s[tag=attack_poke] run function medabots_server:entities/master_hand/poke
execute if entity @s[tag=attack_punch] run function medabots_server:entities/master_hand/punch
execute if entity @s[tag=attack_slap] run function medabots_server:entities/master_hand/slap
execute if entity @s[tag=attack_drill] run function medabots_server:entities/master_hand/drill
execute if entity @s[tag=attack_walk] run function medabots_server:entities/master_hand/walk

# Set boosbar health
execute store result bossbar medabots_server:master_hand/1 value run data get entity @s AbsorptionAmount