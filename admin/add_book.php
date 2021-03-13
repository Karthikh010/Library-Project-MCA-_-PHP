<?php
  session_start();
  if(!isset($_SESSION['username'])){
	  header("location:../login.php");
  }
?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
</head>
<style>
    table{
        background-color: white;
        margin-left: auto;
        margin-right: auto;
        margin-top:4em;
        padding:1em;
        box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
    }
    tr,td,th{
        padding:1em;
        text-align: left;
    }
    .center th{
        text-align: center;
    }
    h2{
        text-align: center;
        margin-top: 2em;
        background-color:black;
        color: white;
    }

    body{
    background: url(../images/bg.jpg);
    background-position:center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-color: #464646;
    }
</style>
<body>
<?php
     $con = Mysqli_Connect("localhost","root","","library_management");
     if(!$con){
         echo "Connection Error !!";
     }

		$res=mysqli_query($con,"select * from book_details order by book_id desc limit 1");
		while($result=mysqli_fetch_array($res)){
		    $book_id =$result['book_id']; 
		    $book_id++;		
		}
        	
    if(isset($_POST['submit'])){
		$book_name = $_POST['book_name'];  
        $book_author = $_POST['book_author'];  
        $book_edition = $_POST['book_edition'];  
        $book_publisher = $_POST['book_publisher'];

        $query = "insert into book_details values('$book_id','$book_name','$book_author','$book_edition','$book_publisher',0)";
            if(mysqli_query($con,$query)){
                header("location:view_book.php");
            }
            else{
                echo "error".$query.mysqli_error($con);
            }
    }
?>

    
    <form name="form" action="#" method="POST">
        <table>
            <tr>
                <th colspan="2" style="text-align:center">ADD BOOK DETAILS</th>
            </tr>
            <tr>
			
			
                <th>ID</th>
                <td> <input readonly type="text" name="book_id" value="<?php echo $book_id;?>"> </td>
            </tr>
            <tr>
                <th>NAME</th>
                <td><input type="text" name="book_name"> </td>
            </tr>
            <tr>
                <th>AUTHOR </th>
                <td><input type="text" name="book_author"> </td>
            </tr>
            <tr>
                <th>EDITION </th>
                <td><input type="text" name="book_edition"> </td>
            </tr>
            <tr>
                <th>PUBLISHER </th>
                <td><input type="text" name="book_publisher"> </td>
            </tr>
            <tr class="center">
                <th colspan="2"><input type="submit" value="submit" name="submit"></th>
            </tr>
        </table>
    </form>
   
</body>
</html>