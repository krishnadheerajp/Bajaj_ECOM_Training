<?php
echo "Hello world";
echo "<br>";
$a = 3000;
echo "I love you " .$a. " - Iron Man. <br>";

// // Operators
$a=5; $b=10;

// // Assignment Operators
echo var_dump($a == $b). "<br>";
// Identity Operator
echo var_dump($a === $b). "<br>";
echo "Addition: ".($a+$b) . "<br>";
echo "Subtraction: ".($a-$b) . "<br>";

// Conditional Statements
if($a>4){
    echo "The variable is greater than 4";
}
else{
    echo "The variable is not greater than 4";
}
echo "<br>";

$per = 91;
if ($per > 90)
    echo "S";
elseif ($per > 80 && $per<=90)
    echo "A";
elseif ($per > 70 && $per<=80)
    echo "B";
elseif ($per > 60 && $per<=70)
    echo "C";
elseif ($per > 50 && $per<=60)
    echo "D";
else
    echo "F";
echo "<br>";

switch($per){
    case 91:{
            echo "You got 91 marks, Congrats";
            break;
     }
    case 19:{
        echo "You got 19 marks, Congrats";
            break;
    }
    default:{
        echo "Hello";
    }
}

echo "<br>";
// $j = 0;
// while($j<5){
//     echo "Hello " . $j. "<br>"; 
//     $j++;
// }

// echo "<br>";
// for($i=0;$i<5;$i++){
//     echo "Hello " . $i. "<br>";
// }

// echo "<br>";
// $j = 0;
// do {
//     echo "Hello " . $j . "<br>";
//     $j++;
// } while ($j < 5);


// Arrays

$arr = array(5,4,3,2,1);
// foreach ($arr as $value) {
//     echo $value . "<br>";
// }

// for($i=0;$i<count($arr);$i++){
//     for($j=0;$j<count($arr)-1;$j++){
//         if($arr[$j]>$arr[$j+1]){
//             $temp = $arr[$j];
//             $arr[$j] = $arr[$j+1];
//             $arr[$j+1] = $temp;
//         }
//     }
// }

// sort($arr);
// rsort($arr);
// print_r($arr);

// foreach ($arr as $value) {
//     echo $value . "<br>";
// }

$arr1 = array('Ram'=>90,'Shyam'=>60,'Sam'=>80);
foreach($arr1 as $key => $val){
    echo "$key got $val marks <br>";
}

// asort($arr1);

function fun1($a){
    echo "Inside fun1, $a <br>";
}
$name = "Dheeraj";
fun1($name);

function psqr($num){
    for($i=1;$i<=$num/2;$i++){
        if ($i * $i == $num)
            return $i;
    }
    return -1;
}

function fact($num){
    $a = 1;
    for($i=1;$i<=$num;$i++){
        $a = $a * $i;
    }
    return $a;
}

echo psqr(49)."<br>";
echo fact(5);

?>