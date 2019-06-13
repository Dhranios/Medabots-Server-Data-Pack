# Set which part is activated
scoreboard players set @s[scores={Press=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_veryweighter"}}}]}] MedapartType 1
scoreboard players set @s[scores={Press=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_hardweighter"}}}]}] MedapartType 2
scoreboard players set @s[scores={Press=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_heavyweighter"}}}]}] MedapartType 3
scoreboard players set @s[scores={Press=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:king_pharaoh_dark_hall"}}}]}] MedapartType 4
scoreboard players set @s[scores={Press=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:uglyduck_featherdone"}}}]}] MedapartType 5
scoreboard players set @s[scores={Press=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rob_stack_arm"}}}]}] MedapartType 6
scoreboard players set @s[scores={Press=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:ashton_ash_breaker"}}}]}] MedapartType 7

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Press=1..},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","cpu_owned","enemy_team"],NoGravity:1b}
execute if entity @s[scores={Press=1..,ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press","cpu_owned","enemy_team","strong"],NoGravity:1b}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Press=2}] HeadUses 1