<?php

namespace Home\Controller;

class ChartBarController extends AuthController {
	public function getInfo(){
		$data[]=array('name'=>'metric one','value'=>10);
		$data[]=array('name'=>'metric two','value'=>7);
		$data[]=array('name'=>'metric three','value'=>5);
		$data[]=array('name'=>'metric four','value'=>2);
		$data[]=array('name'=>'metric five','value'=>27);
		
		$this->ajaxReturn($data);
		
	}
}

?>