local lfs = require("lfs")

local posts = {}

function posts.index(page)
    local my_posts = {}
    for file in lfs.dir("views/posts/") do
        local name_without_extention = string.match(file, "(.*)%.md$")
        if name_without_extention then
            table.insert(my_posts, name_without_extention)
        end
    end
    page:render("index", {posts=my_posts})
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

            page.title = "Teste"

            page:render("md", {
                md_file_path = my_posts[action]
            })
        end
    end
})

return posts
