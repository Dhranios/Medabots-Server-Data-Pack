# Activate charged medaforce
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=kuwagata_medal,type=!minecraft:player] Medaforce -2
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=kabuto_medal,type=!minecraft:player] Medaforce -3
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=mermaid_medal,type=!minecraft:player] Medaforce -4
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=ghost_medal,type=!minecraft:player] Medaforce -5
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=monkey_medal,type=!minecraft:player] Medaforce -6
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=spidar_medal,type=!minecraft:player] Medaforce -7
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=question_medal,type=!minecraft:player] Medaforce -8
tag @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=alien_medal,type=!minecraft:player,tag=!alien] add alien

# Randomize alien medaforce
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","2"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","3"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","4"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","5"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","6"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","7"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","8"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run scoreboard players set @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_medaforce] Medaforce 1
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=2] run scoreboard players set @s Medaforce -2
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=3] run scoreboard players set @s Medaforce -3
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=4] run scoreboard players set @s Medaforce -4
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=5] run scoreboard players set @s Medaforce -5
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=6] run scoreboard players set @s Medaforce -6
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=7] run scoreboard players set @s Medaforce -7
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=8] run scoreboard players set @s Medaforce -8
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run kill @e[type=minecraft:area_effect_cloud,tag=random_medaforce]

# Increase time by 1
scoreboard players add @s Time 1

# Show particles
execute if entity @s[scores={Medaforce=..-2,Time=1..}] run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Give the weapon to kuwagata user
replaceitem entity @s[scores={Medaforce=-2,Time=17..19,Drop=0}] hotbar.4 minecraft:snowball{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.throw\"}"]},medabots_server:{id:"medabots_server:kuwagata"}}
execute if entity @s[scores={Medaforce=-2,Time=17},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:"{\"translate\":\"medabots_server:move.kuwagata\"}",Tags:["cut_space","cpu_owned","enemy_team"],NoGravity:1b}

# Remove the weapon from kuwagata user
clear @s[scores={Medaforce=-2,Time=49}] minecraft:snowball{medabots_server:{id:"medabots_server:kuwagata"}}

# Name the kuwagata attack
#execute as run data; MC-121807
execute if entity @s[scores={Medaforce=-2,Time=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!cut_space] run data merge entity @s {CustomName:"{\"translate\":\"medabots_server:move.kuwagata\"}",Tags:["cut_space"]}
execute if entity @s[scores={Medaforce=-2,Time=1..},tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!cut_space] run data merge entity @s {CustomName:"{\"translate\":\"medabots_server:move.kuwagata\"}",Tags:["cut_space","ally_team"]}
execute if entity @s[scores={Medaforce=-2,Time=1..},tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!cut_space] run data merge entity @s {CustomName:"{\"translate\":\"medabots_server:move.kuwagata\"}",Tags:["cut_space","enemy_team"]}

# Give the weapon to kabuto user
replaceitem entity @s[scores={Medaforce=-3,Time=17..19,Drop=0}] hotbar.4 minecraft:bow{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.shoot\"}"]},Enchantments:[{id:"minecraft:power",lvl:20s}],medabots_server:{id:"medabots_server:kabuto"}}
replaceitem entity @s[scores={Medaforce=-3,Time=17..19},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.shoot\"}"]},Enchantments:[{id:"minecraft:power",lvl:20s}],medabots_server:{id:"medabots_server:kabuto"}}
replaceitem entity @s[scores={Medaforce=-3,Time=17..19}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:15066419,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.bullet\"}"},CustomPotionEffects:[{Id:18b,Amplifier:4b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}

# Remove the weapon from kabuto user
clear @s[scores={Medaforce=-3,Time=49}] minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s[scores={Medaforce=-3,Time=49}] minecraft:bow{medabots_server:{id:"medabots_server:kabuto"}}
replaceitem entity @s[scores={Medaforce=-3,Time=49},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={Medaforce=-3,Time=49},type=!minecraft:player] weapon.mainhand minecraft:air

# Heal mermaid user
scoreboard players add @s[scores={Medaforce=-4,Time=17}] HeadArmor 20
execute if score @s[scores={Medaforce=-4,Time=17}] HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Mermaid affect teammates
execute if entity @s[scores={Medaforce=-4,Time=17},tag=ally_medabot] run scoreboard players add @a[distance=..16,tag=ally_medabot] HeadArmor 20
execute if entity @s[scores={Medaforce=-4,Time=17},tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute if entity @s[scores={Medaforce=-4,Time=17},tag=enemy_medabot] run scoreboard players add @e[distance=..16,tag=enemy_medabot] HeadArmor 20
execute if entity @s[scores={Medaforce=-4,Time=17},tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] if score @s HeadArmor > @s MaxHeadArmor run scoreboard players operation @s HeadArmor = @s MaxHeadArmor

# Show particles at mermaid user
execute if entity @s[scores={Medaforce=-4,Time=17}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1
execute if entity @s[scores={Medaforce=-4,Time=25}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1
execute if entity @s[scores={Medaforce=-4,Time=33}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1

# Give the weapon to ghost user
replaceitem entity @s[scores={Medaforce=-5,Time=17..19},tag=!ally_medabot,tag=!enemy_medabot] hotbar.4 minecraft:purple_wool{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop\"}"]},medabots_server:{id:"medabots_server:ghost",team:"none"}}
replaceitem entity @s[scores={Medaforce=-5,Time=17..19},tag=ally_medabot] hotbar.4 minecraft:purple_wool{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop\"}"]},medabots_server:{id:"medabots_server:ghost",team:"ally"}}
replaceitem entity @s[scores={Medaforce=-5,Time=17..19},tag=enemy_medabot] hotbar.4 minecraft:purple_wool{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop\"}"]},medabots_server:{id:"medabots_server:ghost",team:"enemy"}}
execute if entity @s[scores={Medaforce=-5,Time=17},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:purple_wool",Count:1b,tag:{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop\"}"]},medabots_server:{id:"medabots_server:ghost",team:"enemy"}}}}

# Remove the weapon from ghost user
clear @s[scores={Time=33}] minecraft:purple_wool{medabots_server:{id:"medabots_server:ghost"}}

# Fully repair monkey user
scoreboard players set @s[scores={Medaforce=-6,Time=17,LegsArmor=..10}] LegsArmor 10
scoreboard players set @s[scores={Medaforce=-6,Time=17,LeftArmArmor=..10}] LeftArmArmor 10
scoreboard players set @s[scores={Medaforce=-6,Time=17,RightArmArmor=..10}] RightArmArmor 10
scoreboard players operation @s[scores={Medaforce=-6,Time=17,MaxLegsArmor=..10}] LegsArmor = @s MaxLegsArmor
scoreboard players operation @s[scores={Medaforce=-6,Time=17,MaxLeftArmArmor=..10}] LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s[scores={Medaforce=-6,Time=17,MaxRightArmArmor=..10}] RightArmArmor = @s MaxRightArmArmor
scoreboard players operation @s[scores={Medaforce=-6,Time=17}] HeadUses = @s MaxHeadUses

# Monkey affect teammates
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] run scoreboard players set @a[scores={LegsArmor=..10},distance=..16,tag=ally_medabot] LegsArmor 10
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] run scoreboard players set @a[scores={LeftArmArmor=..10},distance=..16,tag=ally_medabot] LeftArmArmor 10
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] run scoreboard players set @a[scores={RightArmArmor=..10},distance=..16,tag=ally_medabot] RightArmArmor 10
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] as @a[scores={MaxLegsArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] as @a[scores={MaxLeftArmArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] as @a[scores={MaxRightArmArmor=..10},distance=..16,tag=ally_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute if entity @s[scores={Medaforce=-6,Time=17},tag=ally_medabot] as @a[distance=..16,tag=ally_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] run scoreboard players set @e[scores={LegsArmor=..10},distance=..16,tag=enemy_medabot] LegsArmor 10
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] run scoreboard players set @e[scores={LeftArmArmor=..10},distance=..16,tag=enemy_medabot] LeftArmArmor 10
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] run scoreboard players set @e[scores={RightArmArmor=..10},distance=..16,tag=enemy_medabot] RightArmArmor 10
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] as @e[scores={MaxLegsArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] as @e[scores={MaxLeftArmArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] as @e[scores={MaxRightArmArmor=..10},distance=..16,tag=enemy_medabot] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute if entity @s[scores={Medaforce=-6,Time=17},tag=enemy_medabot] as @e[distance=..16,tag=enemy_medabot] run scoreboard players operation @s HeadUses = @s MaxHeadUses

# Show particles at monkey user
execute if entity @s[scores={Medaforce=-6,Time=17}] run particle minecraft:portal ~ ~1.55 ~ 0 0 0 10

# Set trap at spider user
execute if entity @s[scores={Medaforce=-7,Time=17},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.melee_trap\"}",Tags:["melee_trap","trap"],Duration:6000}
execute if entity @s[scores={Medaforce=-7,Time=17},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.shooting_trap\"}",Tags:["shooting_trap","trap"],Duration:6000}
execute if entity @s[scores={Medaforce=-7,Time=17},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.melee_trap\"}",Tags:["melee_trap","trap","ally_team"],Duration:6000}
execute if entity @s[scores={Medaforce=-7,Time=17},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.shooting_trap\"}",Tags:["shooting_trap","trap","ally_team"],Duration:6000}
execute if entity @s[scores={Medaforce=-7,Time=17},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.melee_trap\"}",Tags:["melee_trap","trap","enemy_team"],Duration:6000}
execute if entity @s[scores={Medaforce=-7,Time=17},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.shooting_trap\"}",Tags:["shooting_trap","trap","enemy_team"],Duration:6000}

# Show particles at spidar user
execute if entity @s[scores={Medaforce=-7,Time=17}] run particle minecraft:dripping_water ~ ~1 ~ 0 0 0 10
execute if entity @s[scores={Medaforce=-7,Time=17}] run particle minecraft:dripping_lava ~ ~1 ~ 0 0 0 10

# Give confusion and bug effect to enemies for ? user
execute if entity @s[scores={Medaforce=-8,Time=17},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile] unless entity @s[scores={Medaforce=-8,Time=17}] run scoreboard players set @s BugTime 4000
execute if entity @s[scores={Medaforce=-8,Time=17},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile] unless entity @s[scores={Medaforce=-8,Time=17}] run effect give @s minecraft:nausea 200 0 true
execute if entity @s[scores={Medaforce=-8,Time=17},tag=ally_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Medaforce=-8,Time=17}] run scoreboard players set @s BugTime 4000
execute if entity @s[scores={Medaforce=-8,Time=17},tag=ally_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Medaforce=-8,Time=17}] run effect give @s minecraft:nausea 200 0 true
execute if entity @s[scores={Medaforce=-8,Time=17},tag=enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Medaforce=-8,Time=17}] run scoreboard players set @s BugTime 4000
execute if entity @s[scores={Medaforce=-8,Time=17},tag=enemy_medabot] positioned ^ ^ ^10 as @e[distance=..10,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Medaforce=-8,Time=17}] run effect give @s minecraft:nausea 200 0 true

# Show particles at ? user
execute if entity @s[scores={Medaforce=-8,Time=17}] run particle minecraft:witch ~ ~1.55 ~ 0 0 0 3

# Give back the original medal
replaceitem entity @s[scores={Medaforce=-2,Time=49}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kuwagata_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-3,Time=49}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kabuto_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-4,Time=25}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.mermaid_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.mermaid\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.mermaid.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-5,Time=33}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.ghost_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-6,Time=21}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.monkey_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.monkey\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.monkey.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-7,Time=21}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.spider_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.spider\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.spider.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-8,Time=33}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.question_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.question\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.question.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Medaforce=-2,Time=51..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-3,Time=51..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-4,Time=35..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-5,Time=35..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-6,Time=19..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-7,Time=23..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-8,Time=19..}] Medaforce 0
execute unless entity @s[scores={Medaforce=..-1}] run scoreboard players set @s Time 1

# Reset charge
scoreboard players set @s[scores={Medaforce=..-1,Time=1..},nbt={Inventory:[{Slot:4b,Count:50b,tag:{medabots_server:{move:"medaforce_charge"}}}]}] Charge 0
scoreboard players set @s[scores={Medaforce=..-1,Time=1..},type=!minecraft:player] Charge 0

# Give back the medal to alien user
replaceitem entity @s[tag=alien,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.alien_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.alien\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.alien.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=alien,scores={Medaforce=0}] remove alien