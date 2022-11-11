execute as @a[tag=disabled_placing] run function trigger:modify/break
execute as @a[tag=disabled_breaking] run function trigger:modify/place
execute as @a[tag=!disabled_placing,tag=!disabled_breaking] run function trigger:modify/none
gamemode adventure @a[tag=disabled_placing,gamemode=survival]
gamemode adventure @a[tag=disabled_breaking,gamemode=survival]
