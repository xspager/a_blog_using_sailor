<h1>Some badly written notes on stuff I'm doing</h1>

<?lua

for k, v in pairs(posts) do
?>

<ul>
	<li><a href="/posts/<%= k %>"><%=v %></a></li>
</ul>

<?lua end ?>
