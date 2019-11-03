teleport @s[scores={Dialog=0,Verified=3}] -1586 50 -599 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={roks_saved=true,doctor_harus_research=false}}] run tag @s add dialog_infinity_doctor_harus_research