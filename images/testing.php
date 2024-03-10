<!DOCTYPE html>
<html lang="en">
<head>
<title>RestoPin HomePage</title>
</head>

<style>
	
	body {
		background-image:url('bg.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
   }
   
   img {
        display: block;
        float: left;
        width: 7%;
        margin-left: 5%;
    }
   .navbar {
        overflow: hidden;
        background-color: #7d4218;
        font-family: Caballero;
    }

    .navbar a {
        float: right;
        margin-right: 5%;
        font-size: 16px;
        color: #FFFFFF;
        text-align: center;
        padding: 29px 32px;
        text-decoration: none;

        }

    .navbar a:hover, .dropdown:hover .dropbtn {

            background-color: #7d4218;
        }

        .colorh{

        color: #FFFFFF;
        }
    p{
        margin-left:50px;
        color: #7d4218;
        font-size:18px;
    }
    
    a{
        margin-left:24px;
        font-size:18px;
    }
    * {
	margin: 0;
	padding: 0;
    }

	.navbar {
		overflow: hidden;
        background-color: #7d4218;
		font-family: Caballero;
	}

    .navbar a {
		float: right;
        margin-right: 5%;
		font-size: 16px;
		color: #FFF;
		text-align: center;
		padding: 29px 32px;
		text-decoration: none;

        }

    .navbar a:hover, .dropdown:hover .dropbtn {

            background-color: #fff;
        }

        .colorh{

        color: #FFFFFF;
        }
       
	.wrapper {
		width: 1170px;
		margin: 0 auto;
		}

	header {
		height: 100px;
		background: #7d4218;
		width: 100%;
		z-index: 10;
		position: fixed;
		}

    .banner-area {
	width: 100%;
	height: 600px;
	position: fixed;
	top: 150px;
	background-image:url('bg.png');;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	}

	.content-area {
	width: 100%;
	position: relative;
	top: 670px;
	background: #fff;
	height: 1000px;
	}

	.content-area h2 {
	font-family: poppins;
	letter-spacing: 4px;
	padding-top: 30px;
	font-size: 40px;
	margin: 0;
	}

	.content-area p {
	padding: 2% 0px;
	font-family: poppins;
	line-height: 30px;
	}

    
</style>

<body>
	<div class='navbar' >
	<img src = "logo.png" />

   	<a href="Login.php "> LOGOUT </a>
    <a href="Contact.php"> CONTACT US </a>
    <a href ="Menu.php "> ORDER </a>
    <a href ="Home.php "> HOME </a>
	
		<header>
        <div class='navbar' >
            <img src = "logo.png" />
				</div>
			</div>
		</header>
	
		<div class="content-area">
			<div class="wrapper">
				<h2>content area</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, esse est iste magni reprehenderit saepe sint! Assumenda consectetur fugit sit tempore. Architecto blanditiis deleniti, est fuga iusto perspiciatis suscipit voluptatibus! Ad alias assumenda autem deleniti esse est excepturi hic itaque, magnam magni nam officia provident quae recusandae reiciendis rem sed. Adipisci animi aut autem deserunt dolore, ea eius error ex facilis inventore ipsum minus modi nihil nostrum nulla, obcaecati porro reprehenderit repudiandae sed sint sunt tempore vero. At dolores doloribus, dolorum ea eaque hic ipsa iusto libero minus natus neque nisi nobis nostrum odio optio pariatur perspiciatis praesentium rerum sapiente.</p>
			</div>
		</div>
	</div>
</body>
</html>
