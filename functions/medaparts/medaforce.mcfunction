# Activate charged medaforce
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=kuwagata_medal,type=!minecraft:player] Medaforce -2
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=kabuto_medal,type=!minecraft:player] Medaforce -3
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=mermaid_medal,type=!minecraft:player] Medaforce -4
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=ghost_medal,type=!minecraft:player] Medaforce -5
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=monkey_medal,type=!minecraft:player] Medaforce -6
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=spidar_medal,type=!minecraft:player] Medaforce -7
tag @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=alien_medal,type=!minecraft:player,tag=!alien] add alien
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=question_medal,type=!minecraft:player] Medaforce -9

# Randomize alien medaforce
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","2"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","3"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","4"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","5"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","6"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","7"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","9"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1},type=!minecraft:player] run scoreboard players set @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_medaforce] Medaforce 1
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=2] run scoreboard players set @s Medaforce -2
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=3] run scoreboard players set @s Medaforce -3
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=4] run scoreboard players set @s Medaforce -4
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=5] run scoreboard players set @s Medaforce -5
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=6] run scoreboard players set @s Medaforce -6
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=7] run scoreboard players set @s Medaforce -7
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=9] run scoreboard players set @s Medaforce -9
execute if entity @s[tag=alien,scores={Time=1}] run kill @e[type=minecraft:area_effect_cloud,tag=random_medaforce]

# Increase time by 1
scoreboard players add @s Time 1

# Show particles
execute if entity @s[scores={Medaforce=..-2,Time=1..}] run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Give the weapon to kuwagata user
replaceitem entity @s[scores={Medaforce=-2,Time=17..19,Drop=0}] hotbar.4 minecraft:snowball{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.throw\"}"]},medabots_server:{id:"medabots_server:kuwagata",activated:1b,version:1}}
execute if entity @s[scores={Medaforce=-2,Time=17..19},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:"{\"translate\":\"medabots_server:move.kuwagata\"}",Tags:["cut_space","cpu_owned"],NoGravity:1b}

# Remove the weapon from kuwagata user
clear @s[scores={Medaforce=-2,Time=49}] minecraft:bow{medabots_server:{id:"medabots_server:kuwagata"}}
replaceitem entity @s[scores={Medaforce=-2,Time=49}] weapon.mainhand minecraft:air

# Name the kuwagata attack
#execute as run data; MC-121807
execute if entity @s[scores={Medaforce=-2,Time=1..}] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!cut_space] run data merge entity @s {CustomName:"{\"translate\":\"medabots_server:move.kuwagata\"}",Tags:["cut_space"]}

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

# Show particles at mermaid user
execute if entity @s[scores={Medaforce=-4,Time=17}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1
execute if entity @s[scores={Medaforce=-4,Time=25}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1
execute if entity @s[scores={Medaforce=-4,Time=33}] run particle minecraft:heart ~ ~1.55 ~ 0 0 0 1

# Give the weapon to ghost user
replaceitem entity @s[scores={Medaforce=-5,Time=17..19}] hotbar.4 minecraft:purple_wool{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop\"}"]},medabots_server:{id:"medabots_server:ghost"}}
execute if entity @s[scores={Medaforce=-5,Time=17},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:purple_wool",Count:1b,tag:{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop\"}"]},medabots_server:{id:"medabots_server:ghost"}}}}

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

# Show particles at monkey user
execute if entity @s[scores={Medaforce=-6,Time=17}] run particle minecraft:portal ~ ~1.55 ~ 0 0 0 10

# Set trap at spidar user
execute if entity @s[scores={Medaforce=-7,Time=17}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.melee_trap\"}",Tags:["melee_trap","trap"],Duration:6000}
execute if entity @s[scores={Medaforce=-7,Time=17}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.shooting_trap\"}",Tags:["shooting_trap","trap"],Duration:6000}

# Show particles at spidar user
execute if entity @s[scores={Medaforce=-7,Time=17}] run particle minecraft:dripping_water ~ ~1 ~ 0 0 0 10
execute if entity @s[scores={Medaforce=-7,Time=17}] run particle minecraft:dripping_lava ~ ~1 ~ 0 0 0 10

# Give confusion and bug effect to enemies for ? user
execute if entity @s[scores={Medaforce=-9,Time=17}] positioned ^ ^ ^10 as @e[distance=..10] unless entity @s[scores={Medaforce=-9,Time=17}] run scoreboard players set @s BugTime 4000
execute if entity @s[scores={Medaforce=-9,Time=17}] positioned ^ ^ ^10 as @e[distance=..10] unless entity @s[scores={Medaforce=-9,Time=17}] run effect give @s minecraft:nausea 200 0 true

# Show particles at ? user
execute if entity @s[scores={Medaforce=-9,Time=17}] run particle minecraft:witch ~ ~1.55 ~ 0 0 0 3

# Give back the original medal
replaceitem entity @s[scores={Medaforce=-2,Time=49}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kuwagata_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-3,Time=49}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kabuto_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-4,Time=25}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.mermaid_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.mermaid\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.mermaid.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-5,Time=33}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.ghost_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-6,Time=21}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.monkey_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.monkey\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.monkey.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-7,Time=21}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.spider_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.spider\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.spider.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[scores={Medaforce=-9,Time=33}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.question_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.question\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.question.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s[scores={Medaforce=-2,Time=51..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-3,Time=51..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-4,Time=35..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-5,Time=35..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-6,Time=19..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-7,Time=23..}] Medaforce 0
scoreboard players set @s[scores={Medaforce=-9,Time=19..}] Medaforce 0
execute unless entity @s[scores={Medaforce=..-1}] run scoreboard players set @s Time 1

# Reset charge
scoreboard players set @s[scores={Medaforce=..-1,Time=1..},nbt={Inventory:[{Slot:4b,Count:50b,tag:{medabots_server:{move:"medaforce_charge"}}}]}] Charge 0
scoreboard players set @s[scores={Medaforce=..-1,Time=1..},type=!minecraft:player] Charge 0

# Give back the medal to alien user
replaceitem entity @s[tag=alien,scores={Medaforce=0}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.alien_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.alien\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.alien.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=alien,scores={Medaforce=0}] remove alien