# Activate charged medaforce
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_kuwagata_medaforce"}}}]}] Medaforce -2
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_kabuto_medaforce"}}}]}] Medaforce -3
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_mermaid_medaforce"}}}]}] Medaforce -4
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_ghost_medaforce"}}}]}] Medaforce -5
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_monkey_medaforce"}}}]}] Medaforce -6
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_spidar_medaforce"}}}]}] Medaforce -7
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_question_medaforce"}}}]}] Medaforce -8
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_chameleon_medaforce"}}}]}] Medaforce -9
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_knight_medaforce"}}}]}] Medaforce -10
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_unicorn_medaforce"}}}]}] Medaforce -11
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_devil_medaforce"}}}]}] Medaforce -12
tag @s[scores={Medaforce=2},tag=!blocked_medaforce,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_alien_medaforce"}}}]},tag=!random_change] add random_change

# Randomize alien medaforce
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","2"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","3"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","4"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","5"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","6"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","7"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","8"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","9"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","10"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","11"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","12"],Duration:1}
execute if entity @s[tag=random_change] run scoreboard players set @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_medaforce] Medaforce 1
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=2] run scoreboard players set @s Medaforce -2
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=3] run scoreboard players set @s Medaforce -3
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=4] run scoreboard players set @s Medaforce -4
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=5] run scoreboard players set @s Medaforce -5
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=6] run scoreboard players set @s Medaforce -6
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=7] run scoreboard players set @s Medaforce -7
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=8] run scoreboard players set @s Medaforce -8
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=9] run scoreboard players set @s Medaforce -9
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=10] run scoreboard players set @s Medaforce -10
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=11] run scoreboard players set @s Medaforce -11
execute at @e[type=minecraft:area_effect_cloud,tag=left_arm_selected,tag=12] run scoreboard players set @s Medaforce -12
execute if entity @s[tag=random_change] run kill @e[type=minecraft:area_effect_cloud,tag=random_medaforce]

# Activate left arm, right arm or head
tag @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,part:"head"}}}]}] add head_selected
tag @s[scores={RightArmArmor=1..},tag=!ineffective_right_arm,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,part:"right_arm"}}}]}] add right_arm_selected
tag @s[scores={LeftArmArmor=1..},tag=!ineffective_left_arm,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,part:"left_arm"}}}]}] add left_arm_selected
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"press",part:"left_arm"}}}]}] MedapartType 30
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"press",part:"right_arm"}}}]}] MedapartType 30
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"press",part:"head"}}}]}] MedapartType 30
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"napalm",part:"left_arm"}}}]}] MedapartType 26
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"napalm",part:"right_arm"}}}]}] MedapartType 26
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"napalm",part:"head"}}}]}] MedapartType 26
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"melt",part:"left_arm"}}}]}] MedapartType 24
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"melt",part:"right_arm"}}}]}] MedapartType 24
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"melt",part:"head"}}}]}] MedapartType 24
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"bug",part:"left_arm"}}}]}] MedapartType 5
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"bug",part:"right_arm"}}}]}] MedapartType 5
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"bug",part:"head"}}}]}] MedapartType 5
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"MeleeTrap",part:"left_arm"}}}]}] MedapartType 23
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"MeleeTrap",part:"right_arm"}}}]}] MedapartType 23
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"MeleeTrap",part:"head"}}}]}] MedapartType 23
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"hold",part:"left_arm"}}}]}] MedapartType 18
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"hold",part:"right_arm"}}}]}] MedapartType 18
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"hold",part:"right_arm"}}}]}] MedapartType 18
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"falling",part:"left_arm"}}}]}] MedapartType 9
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"falling",part:"right_arm"}}}]}] MedapartType 9
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"falling",part:"head"}}}]}] MedapartType 9
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"confuse",part:"left_arm"}}}]}] MedapartType 6
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"confuse",part:"right_arm"}}}]}] MedapartType 6
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"falling",part:"head"}}}]}] MedapartType 6
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"no_defend",part:"left_arm"}}}]}] MedapartType 27
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"no_defend",part:"right_arm"}}}]}] MedapartType 27
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"no_defend",part:"head"}}}]}] MedapartType 27
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"rifle",part:"left_arm"}}}]}] MedapartType 32
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"rifle",part:"right_arm"}}}]}] MedapartType 32
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"rifle",part:"head"}}}]}] MedapartType 32
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"hide",part:"left_arm"}}}]}] MedapartType 17
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"hide",part:"right_arm"}}}]}] MedapartType 17
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"hide",part:"head"}}}]}] MedapartType 17
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"anti_tank",part:"left_arm"}}}]}] MedapartType 2
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"anti_tank",part:"right_arm"}}}]}] MedapartType 2
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"anti_tank",part:"head"}}}]}] MedapartType 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"anti_fly",part:"left_arm"}}}]}] MedapartType 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"anti_fly",part:"right_arm"}}}]}] MedapartType 1
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"anti_fly",part:"head"}}}]}] MedapartType 1
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"infect",part:"left_arm"}}}]}] MedapartType 20
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"infect",part:"right_arm"}}}]}] MedapartType 20
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"infect",part:"head"}}}]}] MedapartType 20
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"gatling",part:"left_arm"}}}]}] MedapartType 11
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"gatling",part:"right_arm"}}}]}] MedapartType 11
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"gatling",part:"head"}}}]}] MedapartType 11
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"missile",part:"left_arm"}}}]}] MedapartType 25
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"missile",part:"right_arm"}}}]}] MedapartType 25
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"missile",part:"head"}}}]}] MedapartType 25
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"freeze",part:"left_arm"}}}]}] MedapartType 10
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"freeze",part:"right_arm"}}}]}] MedapartType 10
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"freeze",part:"head"}}}]}] MedapartType 10
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"paralyze",part:"left_arm"}}}]}] MedapartType 28
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"paralyze",part:"right_arm"}}}]}] MedapartType 28
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"paralyze",part:"head"}}}]}] MedapartType 28
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"scout",part:"left_arm"}}}]}] MedapartType 34
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"scout",part:"right_arm"}}}]}] MedapartType 34
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"scout",part:"head"}}}]}] MedapartType 34
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"sword",part:"left_arm"}}}]}] MedapartType 37
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"sword",part:"right_arm"}}}]}] MedapartType 37
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"sword",part:"head"}}}]}] MedapartType 37
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"hammer",part:"left_arm"}}}]}] MedapartType 15
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"hammer",part:"right_arm"}}}]}] MedapartType 15
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"hammer",part:"head"}}}]}] MedapartType 15
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"perfect_guard",part:"left_arm"}}}]}] MedapartType 29
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"perfect_guard",part:"right_arm"}}}]}] MedapartType 29
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"perfect_guard",part:"head"}}}]}] MedapartType 29
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"sacrifice",part:"left_arm"}}}]}] MedapartType 33
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"sacrifice",part:"right_arm"}}}]}] MedapartType 33
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"repair",part:"left_arm"}}}]}] MedapartType 31
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"repair",part:"right_arm"}}}]}] MedapartType 31
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"repair",part:"head"}}}]}] MedapartType 31
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"destroy",part:"left_arm"}}}]}] MedapartType 8
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"destroy",part:"right_arm"}}}]}] MedapartType 8
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"destroy",part:"head"}}}]}] MedapartType 8
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"laser",part:"left_arm"}}}]}] MedapartType 21
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"laser",part:"right_arm"}}}]}] MedapartType 21
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"laser",part:"head"}}}]}] MedapartType 21
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"break",part:"left_arm"}}}]}] MedapartType 4
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"break",part:"right_arm"}}}]}] MedapartType 4
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"break",part:"head"}}}]}] MedapartType 4
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"defense",part:"left_arm"}}}]}] MedapartType 7
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"defense",part:"right_arm"}}}]}] MedapartType 7
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"defense",part:"head"}}}]}] MedapartType 7
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"wave",part:"left_arm"}}}]}] MedapartType 39
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"wave",part:"right_arm"}}}]}] MedapartType 39
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"wave",part:"head"}}}]}] MedapartType 39
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"shooting_trap",part:"left_arm"}}}]}] MedapartType 35
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"shooting_trap",part:"right_arm"}}}]}] MedapartType 35
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"shooting_trap",part:"head"}}}]}] MedapartType 35
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"heal",part:"left_arm"}}}]}] MedapartType 16
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"heal",part:"right_arm"}}}]}] MedapartType 16
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"heal",part:"head"}}}]}] MedapartType 16
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"guard_optical",part:"left_arm"}}}]}] MedapartType 14
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"guard_optical",part:"right_arm"}}}]}] MedapartType 14
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"guard_optical",part:"head"}}}]}] MedapartType 14
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"guard_gunpowder",part:"left_arm"}}}]}] MedapartType 13
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"guard_gunpowder",part:"right_arm"}}}]}] MedapartType 13
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"guard_gunpowder",part:"head"}}}]}] MedapartType 13
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"guard_gravity",part:"left_arm"}}}]}] MedapartType 12
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"guard_gravity",part:"right_arm"}}}]}] MedapartType 12
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"guard_gravity",part:"head"}}}]}] MedapartType 12
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"auxiliary_charge",part:"left_arm"}}}]}] MedapartType 3
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"auxiliary_charge",part:"right_arm"}}}]}] MedapartType 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"auxiliary_charge",part:"head"}}}]}] MedapartType 3
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"medaforce_control",part:"left_arm"}}}]}] MedafoceControl 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"medaforce_control",part:"right_arm"}}}]}] MedafoceControl 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"medaforce_control",part:"head"}}}]}] MedapartType 22
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"status_clear",part:"left_arm"}}}]}] MedapartType 36
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"status_clear",part:"right_arm"}}}]}] MedapartType 36
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"status_clear",part:"head"}}}]}] MedapartType 36
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"ineffective",part:"left_arm"}}}]}] MedapartType 19
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"ineffective",part:"right_arm"}}}]}] MedapartType 19
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"ineffective",part:"head"}}}]}] MedapartType 19
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"transform",part:"left_arm"}}}]}] MedapartType 38
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"transform",part:"right_arm"}}}]}] MedapartType 38
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"transform",part:"head"}}}]}] MedapartType 38

#Increase left arm and right arm speed
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,part:"left_arm"}}}]}] Time 10
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,part:"right_arm"}}}]}] Time 20