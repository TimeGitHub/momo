<?php
namespace Home\Controller;
use Think\Controller;
class AreaController extends Controller {   
	
	public function getInfo(){	
		$area=M('area');
		$data=$area->select();
		echo $this->ajaxReturn($data);
    }
	
	public function delInfo(){
		$httpContent=file_get_contents('php://input', 'r');
		$httpContent=str_replace(']','',str_replace('[','',$httpContent));
		$httpContent=explode(',',$httpContent);

		$temp=array();
		$ids='0';
		
		foreach($httpContent as $val){
			$temp=(array)json_decode($val);
			$ids=$ids.','.$temp['id'];
		}
		$area=M('area');
		if($area->delete($ids))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }

	public function editInfo(){
		$httpContent = file_get_contents('php://input', 'r');
		$area=M('area');
		if($area->save((array)json_decode($httpContent)))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }
}