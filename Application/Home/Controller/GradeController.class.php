<?php
namespace Home\Controller;
use Think\Controller;
class GradeController extends AuthController {
    public function addInfo(){
		$httpContent = file_get_contents('php://input', 'r');
		$grade=M('grade');
		if($grade->add((array)json_decode($httpContent)))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }
	
	public function getInfo(){	
		$grade=M('grade');
		$total=$grade->where('id>=1')->count();
		$data['totalCount']=$total;
		$data['success']=true;
		$data['data']=$grade->limit(I('start').','.I('limit'))->select();
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
		$grade=M('grade');
		if($grade->delete($ids))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }

	public function editInfo(){
		$httpContent = file_get_contents('php://input', 'r');
		$grade=M('grade');
		if($grade->save((array)json_decode($httpContent)))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }
}