local ls = require('luasnip')
-- some shorthands...
local s = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local lambda = require('luasnip.extras').lambda

return {
    -- use state
    s('us', {
        text('const ['),
        insert(1, 'state'),
        text(', set'),
        lambda(lambda._1:gsub('^%l', string.upper), 1),
        text('] = useState('),
        insert(2, 'initialState'),
        text(')'),
    }),
    -- use effect
    s('ue', {
        text({ 'useEffect(() => {', '\t' }),
        insert(1, 'effect'),
        text({ '', '}, [' }),
        insert(2, 'input'),
        text('])'),
    }),
}
