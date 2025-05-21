# 実行
data modify storage entity_direct_function:call root.act set from storage entity_direct_function:call root.Queue[-1]
function entity_direct_function:core/call/act with storage entity_direct_function:call root.act
# 実行済みキューをコピー
data modify storage entity_direct_function:call root.ProcessedQueue append from storage entity_direct_function:call root.act
# キューがなくなるまでループ
data remove storage entity_direct_function:call root.Queue[-1]
execute if data storage entity_direct_function:call root.Queue[] run function entity_direct_function:core/call/while
