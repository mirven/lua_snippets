for var_1, var_2, ..., var_n in <explist> do
	<block>
end


local _f, _s, _var = <explist>
while true do
    local var_1, var_2, ..., var_n = _f(_s, _var)
    _var = var_1
    if _var == nil then break end
    <block>
end
