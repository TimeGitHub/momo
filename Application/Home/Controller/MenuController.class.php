<?php
namespace Home\Controller;
use Think\Controller;
class MenuController extends Controller {
	//系统管理
	public function config(){
		$data["children"]=array(
			array('text'=>'网络设置','leaf'=>true,'xtypeClass'=>'configNetset'),
			array('text'=>'数据库设置','leaf'=>true,'xtypeClass'=>'configDbset'),
		);
		echo $this->ajaxReturn($data);
	}
	
	//数据查询
	public function inquiry(){
		$data["children"]=array(
				array('text'=>'玩家等级查询','leaf'=>true,'xtypeClass'=>'gradeList'),
				array('text'=>'装备查询','leaf'=>true,'xtypeClass'=>'userList'),
				array('text'=>'充值查询','leaf'=>true,'xtypeClass'=>'userList'),
		);
		echo $this->ajaxReturn($data);
	}
	
	//分发数据
	public function distribute(){
		$data["children"]=array(
				array('text'=>'数据管理','leaf'=>true,'xtypeClass'=>'userList')
		);
		echo $this->ajaxReturn($data);
	}
}