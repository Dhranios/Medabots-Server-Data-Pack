scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:laboratory_c run teleport @s[scores={Dialog=0,Verified=3}] 10 59 21 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={roks_saved=true,doctor_harus_research=false}}] run tag @s add dialog_infinity_doctor_harus_research