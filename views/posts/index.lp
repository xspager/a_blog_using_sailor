<?lua
for k, v in pairs(posts) do
?>

<ul>
	<li><a href="/posts/<%= k %>"><%=v %></a></li>
</ul>

<?lua end ?>
