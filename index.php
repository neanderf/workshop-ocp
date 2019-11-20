<?php                    
  echo "<h1>Openshift Workshop v3.0</h1> ";                    
  $host= gethostname();
  $ip = gethostbyname($host);                    
  echo $ip;
?>
