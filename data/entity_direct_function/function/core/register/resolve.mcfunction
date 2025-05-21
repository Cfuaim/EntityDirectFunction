# ここで@eセレクタ使ってるのもったいないのでいい方法探したい
data merge entity @s {text:{"selector":"@e[tag=entity_direct_function.register,limit=1,distance=..1]"}}
data modify storage entity_direct_function:register entry.instance.entity set from entity @s text.insertion
kill @s
