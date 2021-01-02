scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:woods_battle run teleport @s[scores={Dialog=0,Verified=3}] 23 59 24 -180 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] KillStreak 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={vs_sloan_begin=true,vs_sloan=false}}] run tag @s add dialog_infinity_vs_sloan
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={squidguts_jammy_battle=true,gillgirls_jammy=false}}] run tag @s add dialog_infinity_gillgirls_jammy
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={spykes_pass=true,sloans_pass=true,samanthas_pass=true,karins_pass=true,erikas_pass=true,kojis_pass=true}}] run function medabots_server:stage/enter/woods_battle_postgame