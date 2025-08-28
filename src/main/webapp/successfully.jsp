<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Survey Confirmation</title>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Prata&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap')
	;
</style>
<style>
body {
	padding: 10px;
	font-family: "Outfit", sans-serif;
}

img {
	width: 100px;
}

h1 {
	color: teal;
}

h2 {
	max-width: 500px;
	color: teal;
}

.form-container {
	display: flex;
	flex-direction: column;
}

.form-group {
	width: 20%;
	display: flex;
	justify-content: space-between;
}

option {
	width: 100px;
}
</style>
<body>
	<img alt=""
		src="https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/278088100_660354014930294_7201503616104229665_n.jpg?_nc_cat=108&cb=99be929b-fc739e1c&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFIvaEfVkR5fsMUKc5SiHNoM6ZCYu3CVN4zpkJi7cJU3vrKqRhA0TPbSKePTsMHX8XmwJg0EMoBTALObSvbFFy5&_nc_ohc=IbSqxXhpCrEQ7kNvwEPh7rH&_nc_oc=Adnn_4mUPfxKN9LEmGgd2wLQcuxLToRx5-wWXS92ZfM2oMBmIKYA7H9JAVXPtN18SH0&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=vuwbdRwI1cnHelNCWNGZDw&oh=00_AfV7jf6A-ygyWNQ5kLrpNnvJu4HVjszuT2R7EijoG9Xy4g&oe=68B5C9DC">
	<h1>Thank you for filling out the survey!</h1>
	<h2>Your Information:</h2>
	<div class="form-container">
		<div class="form-group">
			<label>First Name:</label> <span>${firstName}</span>
		</div>

		<div class="form-group">
			<label>Last Name:</label> <span>${lastName}</span>
		</div>

		<div class="form-group">
			<label>Email:</label> <span>${email}</span>
		</div>


	</div>
	
	<h2>How did you hear about us?</h2>
	<span>${hearAboutUs}</span>
	<br>
	
	<h2>Announcements:</h2>
	<span>${likeUpdates}</span>
	<br>
	
	<h2>Preferred contact method:</h2>
	<span>${contactMethod}</span>

</body>
</html>
