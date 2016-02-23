<?lua
for _, v in pairs(posts) do
?>

<ul>
	<li><a href="./<%= v %>"><%=v %></a></li>
</ul>

<?lua end ?>
