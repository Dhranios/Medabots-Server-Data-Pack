# Keep in bounds
execute store result entity @s[tag=idle] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[tag=idle] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute at @s unless entity @s[tag=!idle,tag=!cooperate] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying

execute unless entity @s[tag=dying,tag=!dead] if score @s Health < @s LastHealth run playsound medabots_server:entity.crazy_hand.damage hostile @a ~ ~ ~ 1
execute if entity @s[tag=dying,tag=!dead] run playsound medabots_server:entity.crazy_hand.final_hit2 hostile @a ~ ~ ~ 1
execute if entity @s[tag=dying,tag=!dead] run playsound medabots_server:entity.crazy_hand.death2 hostile @a ~ ~ ~ 1

# Select random attack
scoreboard players set @s[scores={Dialog=29}] Dialog 0
execute unless entity @s[scores={Dialog=0..}] run scoreboard players add @s Dialog 0
execute if entity @e[distance=..30,tag=target] run scoreboard players add @s[scores={Time=0,Dialog=0},tag=!cooperate,tag=idle] Dialog 1
scoreboard players add @s[scores={Dialog=1..28}] Dialog 1
tag @s remove can_cooperate
scoreboard players operation #temp Stage = @s Stage
execute if entity @s[scores={Time=0}] as @e[tag=master_hand,tag=!dying] if score @s Stage = #temp Stage run tag @e[distance=..0.1,tag=crazy_hand] add can_cooperate
tag @s[tag=!can_cooperate] remove cooperate
execute if entity @s[scores={Dialog=29},tag=can_cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","cooperate"],Duration:1}
execute if entity @s[scores={Dialog=29},tag=can_cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","cooperate"],Duration:1}
execute if entity @s[scores={Dialog=29},tag=can_cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","cooperate"],Duration:1}
execute if entity @s[scores={Dialog=29},tag=can_cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","cooperate"],Duration:1}
execute if entity @s[scores={Dialog=29},tag=can_cooperate] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","cooperate"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","jet"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","ram"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","crush"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","spasm"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","grab"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","poke"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","punch"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","fake_out"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","slap"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","sweep"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","drill"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","crawl"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","lasers"],Duration:1}
execute if entity @s[scores={Dialog=29}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","bombs"],Duration:1}
execute if entity @s[scores={Dialog=29}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add selected
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=cooperate] run tag @s add cooperate
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=jet] run tag @s add attack_jet
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=dash] run tag @s add attack_dash
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=ram] run tag @s add attack_ram
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=crush] run tag @s add attack_crush
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=spasm] run tag @s add attack_spasm
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=grab] run tag @s add attack_grab
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=poke] run tag @s add attack_poke
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=punch] run tag @s add attack_punch
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=fake_out] run tag @s add attack_fake_out
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=slap] run tag @s add attack_slap
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=sweep] run tag @s add attack_sweep
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=drill] run tag @s add attack_drill
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=crawl] run tag @s add attack_crawl
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=lasers] run tag @s add attack_lasers
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected,tag=bombs] run tag @s add attack_bombs
execute if entity @s[scores={Dialog=29}] if entity @e[distance=..1,tag=random_select,tag=selected] run tag @s remove idle
kill @e[type=minecraft:area_effect_cloud,tag=random_select]

# https://supersmashbros.fandom.com/wiki/Crazy_Hand
# Execute attack
execute if entity @s[tag=attack_catch] run function medabots_server:entities/crazy_hand/catch
execute if entity @s[tag=attack_lasers] run function medabots_server:entities/crazy_hand/lasers
execute if entity @s[tag=attack_jet] run function medabots_server:entities/crazy_hand/jet
execute if entity @s[tag=attack_applaud] run function medabots_server:entities/crazy_hand/applaud
execute if entity @s[tag=attack_double_punch] run function medabots_server:entities/crazy_hand/double_punch
execute if entity @s[tag=attack_ball_throw] run function medabots_server:entities/crazy_hand/ball_throw
execute if entity @s[tag=attack_crawl_slam] run function medabots_server:entities/crazy_hand/crawl_slam
execute if entity @s[tag=attack_ram] run function medabots_server:entities/crazy_hand/ram
execute if entity @s[tag=attack_crush] run function medabots_server:entities/crazy_hand/crush
execute if entity @s[tag=attack_spasm] run function medabots_server:entities/crazy_hand/spasm
execute if entity @s[tag=attack_grab] run function medabots_server:entities/crazy_hand/grab
execute if entity @s[tag=attack_poke] run function medabots_server:entities/crazy_hand/poke
execute if entity @s[tag=attack_punch] run function medabots_server:entities/crazy_hand/punch
execute if entity @s[tag=attack_fake_out] run function medabots_server:entities/crazy_hand/fake_out
execute if entity @s[tag=attack_slap] run function medabots_server:entities/crazy_hand/slap
execute if entity @s[tag=attack_sweep] run function medabots_server:entities/crazy_hand/sweep
execute if entity @s[tag=attack_drill] run function medabots_server:entities/crazy_hand/drill
execute if entity @s[tag=attack_crawl] run function medabots_server:entities/crazy_hand/crawl
execute if entity @s[tag=attack_bombs] run function medabots_server:entities/crazy_hand/bombs
scoreboard players reset #temp Stage

# Set bossbar health
execute store result bossbar medabots_server:crazy_hand/2 value run data get entity @s AbsorptionAmount