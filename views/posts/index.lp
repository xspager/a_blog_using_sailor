<?lua
for k, v in pairs(posts) do
?>

<ul>
	<li><a href="./<%= k %>"><%=v %></a></li>
</ul>

<?lua end ?>
