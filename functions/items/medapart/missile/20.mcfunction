# Set which part is activated
scoreboard players set @s[scores={Missile=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:saikachis_balister"}}}]}] MedapartType 1
scoreboard players set @s[scores={Missile=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rhinorush_rhinoburn"}}}]}] MedapartType 2
scoreboard players set @s[scores={Missile=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rhinorush_rhinogone"}}}]}] MedapartType 3
scoreboard players set @s[scores={Missile=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:abyss_greater_enticed"}}}]}] MedapartType 4
scoreboard players set @s[scores={Missile=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:blackbeetle_blackbalister"}}}]}] MedapartType 5
scoreboard players set @s[scores={Missile=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:god_emperor_death_missile"}}}]}] MedapartType 6
scoreboard players set @s[scores={Missile=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:mewtwo_shadow_ball"}}}]}] MedapartType 7
scoreboard players set @s[scores={Missile=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:metabee_missile"}}}]}] MedapartType 8
scoreboard players set @s[scores={Missile=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:pururun_jelly_missilebase"}}}]}] MedapartType 9
scoreboard players set @s[scores={Missile=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:pururun_jelly_intermissile"}}}]}] MedapartType 9
scoreboard players set @s[scores={Missile=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:pururun_jelly_guidemissile"}}}]}] MedapartType 10

# Give the weapon
replaceitem entity @s weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:3b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Missile=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"translate":"medabots_server:move_missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:missile"}}
replaceitem entity @s[scores={Missile=1..,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"translate":"medabots_server:move_missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:7s}],medabots_server:{id:"medabots_server:missile"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Missile=2}] HeadUses 1