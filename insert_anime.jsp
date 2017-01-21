<!DOCTYPE html>
<html>
<head>
	<title>AnimeKu - Insert New Anime</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="navigation.jsp"%>
	<div class="row content">
		<div class="col-sm-4"></div>
		<div class="col-sm-4 form-style">
			<h2 class="text-center">Insert New Anime</h2>	
			<form action="controller/doInsertAnime.jsp" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="txtTitle">Title</label>
					<input type="text" name="txtTitle" class="form-control" placeholder="Input Title" required>
				</div>
				<div class="form-group">
					<label for="txtRating">Rating</label>
					<input type="text" name="txtRating" class="form-control" placeholder="Input Rating" required>
				</div>
				<div class="form-group">
					<label for="txtGenre">Genre</label>
					<input type="text" name="txtGenre" class="form-control" placeholder="e.g : Action, Adventure, Drama" required>
				</div>
				<div class="form-group">
					<label for="txtEpisode">Total Episode</label>
					<input type="number" name="txtEpisode" class="form-control" placeholder="Input total episode" required>
				</div>
				<div class="form-group">
					<label>Aired</label>
					<input type="number" name="txtDay" class="form-control" placeholder="Day" required>
					<input type="number" name="txtMonth" class="form-control" placeholder="Month" required>
					<input type="number" name="txtYear" class="form-control" placeholder="Year" required>
				</div>
				<div class="form-group">
					<label for="txtSeason">Season</label>
					<input type="text" name="txtSeason" class="form-control" placeholder="Input Season" required>
				</div>
				<div class="form-group">
					<label for="txtStudio">Studio</label>
					<input type="text" name="txtStudio" class="form-control" placeholder="Input Studio" required>
				</div>
				<div class="form-group">
					<label for="txtDuration">Duration</label>
					<input type="number" name="txtDuration" class="form-control" placeholder="In Minute" required>
				</div>
				<div class="form-group">
					<label for="status">Status</label>
					<label class="radio-inline"><input type="radio" name="status" value="Finish">Finish</label> 
                    <label class="radio-inline"><input type="radio" name="status" value="Airing">Currently Airing</label>
                   	<label class="radio-inline"><input type="radio" name="status" value="Not Aired">Not yet Aired</label>
				</div>
				<div class="form-group">
					<label for="txtDescription">Description</label>
					<textarea name="txtDescription" class="form-control" style="max-width:100%;" required></textarea>
				</div>
				
				<div class="form-group">
					<label for="txtDescription">Picture</label>
					<input type="file" name="gambar">
				</div>
				
				<div class="form-group">
					<label for="txtDescription">Musik</label>
					<input type="file" name="music">
				</div>

				<div class="form-group">
					<label for="txtDescription">Vidio</label>
					<input type="file" name="video">
				</div>
                <%@ include file="error.jsp" %>
				<div class="form-group">
					<input type="submit" value="Insert New Anime" class="btn login btn-primary form-control">
				</div>
			</form>
		</div>
		<div class="col-sm-4"></div>
	</div>
</body>
</html>