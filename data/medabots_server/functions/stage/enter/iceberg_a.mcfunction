scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:iceberg_a run teleport @s[scores={Dialog=0,Verified=3}] 58 59 24 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={jammy_explained=true,rubberobo_enters_iceberg_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_iceberg_a