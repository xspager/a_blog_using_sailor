local lfs = require("lfs")

local posts = {}

function capitalize_case(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, capitalize(match));
    end
    return table.concat(result, " ");
end

function capitalize(s)
    s, _ = s:gsub("^%a", string.upper)
    return s
end

function posts.index(page)
    local my_posts = {}
    for file in lfs.dir("views/posts/") do
        local name_without_extention = string.match(file, "(.*)%.md$")
        if name_without_extention then
            my_posts[name_without_extention] = capitalize_case(name_without_extention, '_')
        end
    end
    page:render("index", {posts=my_posts})
end

function posts.sample(page)
    page.layout = "blog"
    page:render("index")
end

setmetatable(posts, {
    __index = function(a, action)
        if action == 'conf' or action == 'path' then
            return nil
        end

        return function(page)
            local my_posts = {
                freebsd = "views/posts/sailor_on_freebsd.md",
            }
            setmetatable(my_posts, {
                __index = function(t, key)
                    return "views/posts/"..key..".md"
                end
            })

            page.title = capitalize_case(action, "_")

            page:render("md", {
                md_file_path = my_posts[action]
            })
        end
    end
})

return posts
