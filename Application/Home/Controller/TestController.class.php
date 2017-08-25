<?php
namespace Home\Controller;
use Think\Controller;

class TestController extends AuthController {
    public function index(){
    	$this->display();
    }
}