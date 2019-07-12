# Set which part is activated
scoreboard players set @s[scores={Napalm=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:fly_falcon_burncapsule"}}}]}] MedapartType 1
scoreboard players set @s[scores={Napalm=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:fly_falcon_burn_head"}}}]}] MedapartType 2
scoreboard players set @s[scores={Napalm=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:fly_falcon_burntube"}}}]}] MedapartType 3
scoreboard players set @s[scores={Napalm=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:king_pharaoh_grand_bomb"}}}]}] MedapartType 4
scoreboard players set @s[scores={Napalm=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:fancyroll_letbomb"}}}]}] MedapartType 5
scoreboard players set @s[scores={Napalm=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:metal_general_produce"}}}]}] MedapartType 6

# Give the weapon
replaceitem entity @s weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
replaceitem entity @s[scores={Napalm=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:napalm"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Napalm=2}] HeadUses 1