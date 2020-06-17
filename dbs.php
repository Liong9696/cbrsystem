<?php
// Enter your Host, username, password, database below.
// I left password empty because i do not set password on localhost.
$con = mysqli_connect("ryvdxs57afyjk41z.cbetxkdyhwsb.us-east-1.rds.amazonaws.com","n4rtw9oyycy54r3n","kw96kfvkw3ae94vy","nyrcls6o28ze1y39");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
