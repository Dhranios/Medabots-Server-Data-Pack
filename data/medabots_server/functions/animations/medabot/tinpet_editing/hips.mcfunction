# Move with
execute at @a[tag=this_medabot,limit=1] rotated ~ 0 positioned ^ ^ ^2 facing entity @a[tag=this_medabot,limit=1] feet rotated ~ 0 run teleport @s ^ ^-1.5 ^ ~ ~
execute unless entity @s[scores={UpAmount=0}] run function medabots_server:animations/medabot/offset/up