# Activate charged medaforce
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_kuwagata_medaforce"}}}]}] Medaforce -2
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_kabuto_medaforce"}}}]}] Medaforce -3
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_mermaid_medaforce"}}}]}] Medaforce -4
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_ghost_medaforce"}}}]}] Medaforce -5
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_monkey_medaforce"}}}]}] Medaforce -6
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_spidar_medaforce"}}}]}] Medaforce -7
scoreboard players set @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,medabots_server:{activated:1b,id:"medabots_server:activate_question_medaforce"}}]}] Medaforce -8
tag @s[scores={Medaforce=2},tag=!medaforce_blocked,nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{activated:1b,id:"medabots_server:activate_alien_medaforce"}}}]},tag=!alien] add alien

# Randomize alien medaforce
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","2"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","3"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","4"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","5"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","6"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","7"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Medaforce\"}",Tags:["random_medaforce","8"],Duration:1}
execute if entity @s[tag=alien,scores={Time=1}] run scoreboard players set @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_medaforce] Medaforce 1
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=2] run scoreboard players set @s Medaforce -2
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=3] run scoreboard players set @s Medaforce -3
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=4] run scoreboard players set @s Medaforce -4
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=5] run scoreboard players set @s Medaforce -5
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=6] run scoreboard players set @s Medaforce -6
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=7] run scoreboard players set @s Medaforce -7
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=8] run scoreboard players set @s Medaforce -8
execute if entity @s[tag=alien,scores={Time=1}] run kill @e[type=minecraft:area_effect_cloud,tag=random_medaforce]

# Static flying
tag @s[scores={UsePart=1..},tag=!static_fly,nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{activated:1b,move:"fly",part:"legs"}}}]}] add static_flying 
tag @s[scores={UsePart=1..},tag=static_fly,nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{activated:1b,move:"fly",part:"legs"}}}]}] remove static_fly
tag @s[tag=static_flying] add static_fly
tag @s[tag=static_flying] remove static_flying

# Activate left arm, right arm or head
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"press",part:"left_arm"}}}]}] Press 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"press",part:"right_arm"}}}]}] Press 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"press",part:"head"}}}]}] Press 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"napalm",part:"left_arm"}}}]}] Napalm 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"napalm",part:"right_arm"}}}]}] Napalm 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"napalm",part:"head"}}}]}] Napalm 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"melt",part:"left_arm"}}}]}] Melt 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"melt",part:"right_arm"}}}]}] Melt 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"melt",part:"head"}}}]}] Melt 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"bug",part:"left_arm"}}}]}] Bug 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"bug",part:"right_arm"}}}]}] Bug 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"bug",part:"head"}}}]}] Bug 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"MeleeTrap",part:"left_arm"}}}]}] MeleeTrap 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"MeleeTrap",part:"right_arm"}}}]}] MeleeTrap 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"MeleeTrap",part:"head"}}}]}] MeleeTrap 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"hold",part:"left_arm"}}}]}] Hold 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"hold",part:"right_arm"}}}]}] Hold 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"hold",part:"right_arm"}}}]}] Hold 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"falling",part:"left_arm"}}}]}] Falling 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"falling",part:"right_arm"}}}]}] Falling 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"falling",part:"head"}}}]}] Falling 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"confuse",part:"left_arm"}}}]}] Confuse 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"confuse",part:"right_arm"}}}]}] Confuse 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"falling",part:"head"}}}]}] Confuse 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"no_defend",part:"left_arm"}}}]}] NoDefend 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"no_defend",part:"right_arm"}}}]}] NoDefend 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"no_defend",part:"head"}}}]}] NoDefend 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"rifle",part:"left_arm"}}}]}] Rifle 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"rifle",part:"right_arm"}}}]}] Rifle 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"rifle",part:"head"}}}]}] Rifle 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"hide",part:"left_arm"}}}]}] Hide 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"hide",part:"right_arm"}}}]}] Hide 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"hide",part:"head"}}}]}] Hide 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"anti_tank",part:"left_arm"}}}]}] AntiTank 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"anti_tank",part:"right_arm"}}}]}] AntiTank 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"anti_tank",part:"head"}}}]}] AntiTank 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"anti_fly",part:"left_arm"}}}]}] AntiFly 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"anti_fly",part:"right_arm"}}}]}] AntiFly 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"anti_fly",part:"head"}}}]}] AntiFly 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"infect",part:"left_arm"}}}]}] Infect 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"infect",part:"right_arm"}}}]}] Infect 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"infect",part:"head"}}}]}] Infect 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"gatling",part:"left_arm"}}}]}] Gatling 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"gatling",part:"right_arm"}}}]}] Gatling 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"gatling",part:"head"}}}]}] Gatling 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"missile",part:"left_arm"}}}]}] Missile 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"missile",part:"right_arm"}}}]}] Missile 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"missile",part:"head"}}}]}] Missile 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"freeze",part:"left_arm"}}}]}] Freeze 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"freeze",part:"right_arm"}}}]}] Freeze 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"freeze",part:"head"}}}]}] Freeze 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"paralyze",part:"left_arm"}}}]}] Paralyze 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"paralyze",part:"right_arm"}}}]}] Paralyze 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"paralyze",part:"head"}}}]}] Paralyze 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"scout",part:"left_arm"}}}]}] Scout 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"scout",part:"right_arm"}}}]}] Scout 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"scout",part:"head"}}}]}] Scout 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"sword",part:"left_arm"}}}]}] Sword 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"sword",part:"right_arm"}}}]}] Sword 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"sword",part:"head"}}}]}] Sword 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"hammer",part:"left_arm"}}}]}] Hammer 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"hammer",part:"right_arm"}}}]}] Hammer 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"hammer",part:"head"}}}]}] Hammer 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"perfect_guard",part:"left_arm"}}}]}] PerfectGuard 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"perfect_guard",part:"right_arm"}}}]}] PerfectGuard 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"perfect_guard",part:"head"}}}]}] PerfectGuard 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"sacrifice",part:"left_arm"}}}]}] Sacrifice 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"sacrifice",part:"right_arm"}}}]}] Sacrifice 3
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"repair",part:"left_arm"}}}]}] Repair 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"repair",part:"right_arm"}}}]}] Repair 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"repair",part:"head"}}}]}] Repair 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"destroy",part:"left_arm"}}}]}] Destroy 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"destroy",part:"right_arm"}}}]}] Destroy 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"destroy",part:"head"}}}]}] Destroy 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"laser",part:"left_arm"}}}]}] Laser 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"laser",part:"right_arm"}}}]}] Laser 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"laser",part:"head"}}}]}] Laser 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"break",part:"left_arm"}}}]}] Break 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"break",part:"right_arm"}}}]}] Break 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"break",part:"head"}}}]}] Break 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"defense",part:"left_arm"}}}]}] Defense 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"defense",part:"right_arm"}}}]}] Defense 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"defense",part:"head"}}}]}] Defense 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"wave",part:"left_arm"}}}]}] Wave 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"wave",part:"right_arm"}}}]}] Wave 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"wave",part:"head"}}}]}] Wave 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"shooting_trap",part:"left_arm"}}}]}] ShootingTrap 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"shooting_trap",part:"right_arm"}}}]}] ShootingTrap 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"shooting_trap",part:"head"}}}]}] ShootingTrap 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"heal",part:"left_arm"}}}]}] Heal 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"heal",part:"right_arm"}}}]}] Heal 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"heal",part:"head"}}}]}] Heal 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"guard_optical",part:"left_arm"}}}]}] GuardOptical 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"guard_optical",part:"right_arm"}}}]}] GuardOptical 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"guard_optical",part:"head"}}}]}] GuardOptical 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"guard_gunpowder",part:"left_arm"}}}]}] GuardGunpowder 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"guard_gunpowder",part:"right_arm"}}}]}] GuardGunpowder 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"guard_gunpowder",part:"head"}}}]}] GuardGunpowder 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"guard_gravity",part:"left_arm"}}}]}] GuardGravity 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"guard_gravity",part:"right_arm"}}}]}] GuardGravity 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"guard_gravity",part:"head"}}}]}] GuardGravity 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"auxiliary_charge",part:"left_arm"}}}]}] AuxiliaryCharge 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"auxiliary_charge",part:"right_arm"}}}]}] AuxiliaryCharge 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"auxiliary_charge",part:"head"}}}]}] AuxiliaryCharge 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"medaforce_control",part:"left_arm"}}}]}] MedafoceControl 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"medaforce_control",part:"right_arm"}}}]}] MedafoceControl 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"medaforce_control",part:"head"}}}]}] MedaforceControl 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"status_clear",part:"left_arm"}}}]}] StatusClear 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"status_clear",part:"right_arm"}}}]}] StatusClear 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"status_clear",part:"head"}}}]}] StatusClear 2
scoreboard players set @s[scores={LeftArmArmor=1..},tag=!ineffective_left,nbt={SelectedItemSlot:1,Inventory:[{Slot:1b,tag:{medabots_server:{activated:1b,move:"ineffective",part:"left_arm"}}}]}] Ineffective 1
scoreboard players set @s[scores={RightArmArmor=1..},tag=!ineffective_right,nbt={SelectedItemSlot:2,Inventory:[{Slot:2b,tag:{medabots_server:{activated:1b,move:"ineffective",part:"right_arm"}}}]}] Ineffective 3
scoreboard players set @s[scores={HeadUses=1..},tag=!ineffective_head,nbt={SelectedItemSlot:3,Inventory:[{Slot:3b,tag:{medabots_server:{activated:1b,move:"ineffective",part:"right_arm"}}}]}] Ineffective 2