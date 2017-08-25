<?php
namespace Home\Controller;
use Think\Controller;

class IndexController extends AuthController {
    public function index(){
    	$this->display();
    }
    
    public function main(){
    	$this->assign('username',session('user_auth')['username']);
    	$this->assign('login',M('member')->field('login')->where(array('uid'=>UID))->find()['login']);
    	$this->assign('last_login_time',date('Y-m-d h-m-s',M('member')->field('last_login_time')->where(array('uid'=>UID))->find()['last_login_time']));
    	$this->display();
    }
}