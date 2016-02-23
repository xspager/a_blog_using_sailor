local posts = {}

function posts.index(page)
	page:render("md", {
		md_file_path="views/posts/index.md"
	})
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

			page.title = "Teste"
	
			page:render("md", {
				md_file_path = my_posts[action]
			})
    	end
	end
}) 

return posts
