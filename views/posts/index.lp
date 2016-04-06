<div class="row">
    <div class="col-md-4">
        <script>
          (function() {
            var cx = '013501510318618175967:lqj6dytxvb8';
            var gcse = document.createElement('script');
            gcse.type = 'text/javascript';
            gcse.async = true;
            gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                '//cse.google.com/cse.js?cx=' + cx;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(gcse, s);
          })();
        </script>
        <gcse:search></gcse:search>
    </div>

    <div class="col-md-8">
        <h1>Some badly written notes on stuff I'm doing</h1>
        <ul>
<?lua
        for k, v in posts do
?> 
    	    <li>
                <a href="/posts/<%= k %>"><%=v['title'] %></a><%= v['date'] == 'unknown' and '' or ' - '..os.date("%Y-%m-%d", v['date']) %>
            </li>
    
<?lua
        end
?>
        </ul>
    </div>
</div><!-- close row-->
