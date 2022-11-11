execute store success score @s trigger.tmp if entity @s[tag=disabled_breaking]
execute if entity @s[tag=disabled_placing] run tellraw @s ["",{"text":"Cannot trigger breaking : target is placing-disabled","color":"gold"}]
execute unless entity @s[tag=disabled_placing] if score @s trigger.tmp matches 0 run tag @s add disabled_breaking
execute unless entity @s[tag=disabled_placing] if score @s trigger.tmp matches 0 run tellraw @s ["",{"text":"Cannot break blocks anymore","color":"red"}]
execute unless entity @s[tag=disabled_placing] if score @s trigger.tmp matches 1 run tag @s remove disabled_breaking
execute unless entity @s[tag=disabled_placing] if score @s trigger.tmp matches 1 run tellraw @s ["",{"text":"Can now break blocks","color":"green"}]
execute unless entity @s[tag=disabled_placing] if score @s trigger.tmp matches 1 run gamemode survival @s