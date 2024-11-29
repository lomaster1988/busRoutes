<?php


include 'database.php';

$currentTime = date("H:i");
echo "Текущее время: ".$currentTime.'<br>';

$currentRoute = "ROUTE1";
const NUMBER_OF_ROUTES = 3;

$fromStation = $_POST["from"];
$toStation = $_POST["to"];




echo "Вы хотите поехать от: ".$fromStation.'<br>';
echo "До станции: ".$toStation.'<br>';


echo "Можем предложить вам следующий вариант: <br>";

    $query = "SELECT bus1, bus2, bus3 FROM $currentRoute where station = '$fromStation' and EXISTS(SELECT * from $currentRoute 
where station = '$fromStation') and EXISTS(SELECT * from $currentRoute where station = '$toStation') and bus1 >='$currentTime'";

    $result = pg_query($db_connect, $query) or die('Ошибка запроса: ' . pg_last_error());

    $arr = [];

    echo "<table>\n";
    $i = 1;
    while ($line = pg_fetch_array($result, null, PGSQL_ASSOC) and $i < 3) {
        echo "\t<tr>\n";
        foreach ($line as $col_value) {
            echo "\t\t<td>$col_value</td>\n";
            array_push($arr, $col_value);
            $i++;
        }
        echo "\t</tr>\n";
    }
    echo "</table>\n";

    echo '<br>';


    $routeNumber = 3;
    $lastStop = 'ул. Ленина';

    $routeString = "route:" . "Автобус №" . $routeNumber . "в сторону остановки " . $lastStop;
    echo $routeString;
    $timeResult = json_encode($arr);
    echo $timeResult;




?>
<br><br>
