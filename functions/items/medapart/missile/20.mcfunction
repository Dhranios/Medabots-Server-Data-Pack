# Set which part is activated
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:saikachis_balister"}}}]}] MedapartID 1
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rhinorush_rhinoburn"}}}]}] MedapartID 2
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rhinorush_rhinogone"}}}]}] MedapartID 3
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:abyss_greater_enticed"}}}]}] MedapartID 4
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:blackbeetle_blackbalister"}}}]}] MedapartID 5
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:god_emperor_death_missile"}}}]}] MedapartID 6
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:mewtwo_shadow_ball"}}}]}] MedapartID 7
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:metabee_missile"}}}]}] MedapartID 8
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:pururun_jelly_missilebase"}}}]}] MedapartID 9
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:pururun_jelly_intermissile"}}}]}] MedapartID 9
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:pururun_jelly_guidemissile"}}}]}] MedapartID 10
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:galleom_armored_body"}}}]}] MedapartID 11

# Give the weapon
replaceitem entity @s weapon.offhand minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:3b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_selected,scores={Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:missile"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_selected,scores={Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:missile"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_selected,scores={Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:missile"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"translate":"medabots_server:move_missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:missile"}}
replaceitem entity @s[tag=left_arm_selected,scores={Drop=0,ScoutTime=1..}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:7s}],medabots_server:{id:"medabots_server:missile"}}
replaceitem entity @s[tag=right_arm_selected,scores={Drop=0,ScoutTime=1..}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:7s}],medabots_server:{id:"medabots_server:missile"}}
replaceitem entity @s[tag=head_selected,scores={Drop=0,ScoutTime=1..}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:7s}],medabots_server:{id:"medabots_server:missile"}}
replaceitem entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"translate":"medabots_server:move_missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:7s}],medabots_server:{id:"medabots_server:missile"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1