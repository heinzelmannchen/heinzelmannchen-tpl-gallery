<!DOCTYPE html>
<html>
<head>
<title><%= title %></title>
<style type="text/css">
	body {
		background: #222;
		margin-top: 20px;
	}

	h3 {
		color: #eee;
		font-family: Verdana;
	}

	.thumbnails img {
		height: 80px;
		border: 4px solid #555;
		padding: 1px;
		margin: 0 10px 10px 0;
	}

	.thumbnails img:hover {
		border: 4px solid #00ccff;
		cursor:pointer;
	}

	.preview img {
		border: 4px solid #444;
		padding: 1px;
		height: 500px;
	}
</style>
</head>
<body>
<div class="gallery" align="center">
<h3><%= title %></h3>

<div class="thumbnails">
	<% for(var i = 0; i < files.length; i++) { %>
	<img onmouseover="preview.src=img<%= i %>.src" name="img<%= i %>" src="<%= files[i] %>" alt="" />
	<% } %>
</div>
<div class="preview" align="center">
	<img name="preview" src="<%= files[0] %>" alt=""/>
</div>

</div> 
</body>
</html>