<?php
namespace Home\Controller;
use Think\Controller;
class AccountController extends Controller {
    private function addInfo(){
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
		$connection = C('DB_ACCOUNT');
		$account=M('account', 'uw_', $connection);
		$total=$account->count();
		$data['totalCount']=$total;
		$data['success']=true;
		$data['data']=$account->limit(I('start').','.I('limit'))->select();
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

		$connection = C('DB_ACCOUNT');
		$account=M('account', 'uw_', $connection);
		if($account->delete($ids))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }

	public function editInfo(){
		$httpContent = file_get_contents('php://input', 'r');
		$connection = C('DB_ACCOUNT');
		$account=M('account', 'uw_', $connection);
		if($account->save((array)json_decode($httpContent)))
		{
			$data['success']=true;
		}else{
			$data['success']=false;
		}
		echo $this->ajaxReturn($data);
    }
}