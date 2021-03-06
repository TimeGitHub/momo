<?php
namespace Home\Controller;
use Think\Controller;
class UserController extends Controller {
    public function addInfo(){
		$httpContent = file_get_contents('php://input', 'r');
		$user=M('user');
		if($user->add((array)json_decode($httpContent)))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }
	
	public function getInfo(){	
		$user=M('user');
		$total=$user->where('id>=1')->count();
		$data['totalCount']=$total;
		$data['success']=true;
		$data['data']=$user->limit(I('start').','.I('limit'))->select();
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
		$user=M('user');
		if($user->delete($ids))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }

	public function editInfo(){
		$httpContent = file_get_contents('php://input', 'r');
		$user=M('user');
		if($user->save((array)json_decode($httpContent)))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }
}