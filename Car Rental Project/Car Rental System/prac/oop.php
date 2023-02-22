<?php

// class Demo {
//     private $name;
//     private $fan;
//     function __construct($name,$fan){
//         $this->name = $name;
//         $this->fan = $fan;
//     }

//     public function setName($name){
//         $this->name=$name;
//     }
//     public function getName(){
//         return $this->name;
//     }
//     // public function getName():string | int{
//     //     return $this->name;
//     // }
//     function printDetails(){
//         echo "Hello ".$this->name.", Welcome to ".$this->fan."<br>";
//     }
// }

// $o1=new Demo("Dheeraj","MCU");
// $o1 -> printDetails();

// class ChildDemo extends Demo{
//     function printDetails(){
//         echo "Hello, you are awesome and a great MCU fan";
//     }
// }

// $c = new ChildDemo("PKD", "MCU");
// $c->setName("Dheeraj");
// $c->printDetails();

trait Details{
    function getUDetails(){
        echo "get user details <br>";
    }
    function getADetails(){
        echo "get admin details <br>";
    }
}

class Child {
    use Details;
}

class Child1 extends Child{
    public static string $name = "MCU";
    public string $normal = "Marvel";
    function changeName($newname){
        self::$name = $newname;
    }

    public static function statFun(){
        echo "Hello I am a static function <br>";
    }
    function hello(){
        echo "Hello user, welcome to ".self::$name. ". We are glad to have you in $this->normal<br>";
    }
}

$c = new Child1();
// $c->getADetails();
// $c->getUDetails();
$c->hello();
$c1 = new Child1();
$c1->changeName("DCU");
echo $c1->normal."<br>";
$c1->normal = "Dark";
echo $c1->normal."<br>";
$c1->hello();
$c2 = new Child1();
$c2->hello();
echo $c2->normal . "<br>";
$c2::statFun();
?>