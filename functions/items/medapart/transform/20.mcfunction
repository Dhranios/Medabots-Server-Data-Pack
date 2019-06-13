# Set which part is activated
scoreboard players set @s[scores={Transform=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_arm"}}}]}] TransformLID 1
scoreboard players set @s[scores={Transform=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_hand"}}}]}] TransformRID 1
scoreboard players set @s[scores={Transform=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_head"}}}]}] TransformHID 1
scoreboard players set @s[scores={Transform=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:potato_insect_changedress"}}}]}] TransformHID 2

# Transform
scoreboard players set @s[scores={Transform=1}] TransformLTime 2400
scoreboard players set @s[scores={Transform=3}] TransformRTime 2400
scoreboard players set @s[scores={Transform=2}] TransformHTime 2400