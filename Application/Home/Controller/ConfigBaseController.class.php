<?php

namespace Home\Controller;

class ConfigBaseController extends AuthController {
	public function read(){
		//$data['id']=1;
		$data['web_name']='网站名称';
		$data['web_title']='网站标题';
		$data['web_keywords']='网站关键词';
		$data['web_description']='网站描述';
		$data['web_remark']='网站备注';
		
		$this->ajaxReturn($data);
		
	}
}

?>