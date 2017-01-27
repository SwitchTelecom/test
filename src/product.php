<?php
/**
 * Hint thsi is all about Design pattern and Factory classes
 */

abstract class Products
{
    /**
     * @var
     * here is our variable
     */
    public $IncreasePercentage;
    public $IncreaseFee;
    public $getServiceFee;
    public  $ServiceFee;
    private $line;
    private $trunk;
    protected  $type = null;

    /**
     * @param
     * Here is our function getServiceFee
     *
     */

    public function ServiceFee()
    {
        return $this-> ServiceFee;
    }


    public function getServiceFee()
    {
       return  $this-> getServiceFee;

    }

    public function IncreaseFee()
    {
        return $this-> IncreaseFee;
    }

    public function IncreasePercentage()
    {
         return $this-> IncreasePercentage;
    }

    /**
     * Products constructor.
     */
    public function __construct($line, $trunk)
    {
        $this-> line = $line;
        $this -> trunk = $trunk ;

    }

    public function getLine()
    {
        return $this-> line;
    }

    public function getTrunk()
    {
          return $this-> trunk;
    }

    public function getType()
    {
        return $this-> type;
    }


}

/**
 * @class
 * Here we  gonna  create a class  product_trunk which extend our class Product
 */

class Product_trunk extends Products
{
    /**
     * @var
     */
     protected $type = 'trunk';

}

class Product_line  extends Products
{

    /**
     * @var
     * $type
     */
     protected $type = 'line';
}