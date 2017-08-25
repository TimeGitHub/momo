<?php

namespace Home\Controller;

class ChartLineController extends AuthController {
	public function getInfo(){
		$data[]=array('name'=>'英雄联盟','data1'=>10, 'data2'=>12, 'data3'=>14, 'data4'=>8, 'data5'=>13);
		$data[]=array('name'=>'穿越火红','data1'=>7, 'data2'=>8, 'data3'=>16, 'data4'=>10, 'data5'=>3);
		$data[]=array('name'=>'魔兽世界','data1'=>5, 'data2'=>2, 'data3'=>14, 'data4'=>12, 'data5'=>7);
		$data[]=array('name'=>'QQ飞车','data1'=>2, 'data2'=>14, 'data3'=>6, 'data4'=>1, 'data5'=>23);
		$data[]=array('name'=>'勇者传奇','data1'=>27, 'data2'=>38, 'data3'=>36, 'data4'=>13, 'data5'=>33);
		
		$this->ajaxReturn($data);
		
	}
}

?>