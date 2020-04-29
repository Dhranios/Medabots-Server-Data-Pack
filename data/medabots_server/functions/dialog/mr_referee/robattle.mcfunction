playsound medabots_server:entity.mr_referee.robattle voice @a[tag=this_robattle] ~ ~ ~ 1000
tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.robattle"}]}
scoreboard players set @s Dialog 60
tag @s add finished