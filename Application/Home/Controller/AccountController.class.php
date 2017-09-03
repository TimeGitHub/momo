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
		$data['success']=true;

		$seakey = I('seakey');
		if ($seakey === '') {
			$limit = I('limit');
			$start = I('start');
			if ($start < 0) {
				$start = 0;
			}

			$total=$account->count();
			$data['totalCount']=$total;
			$data['data']=$account->limit($start.','.$limit)->select();
		} else {
			$data['data']=$account->where("name like '%".$seakey."%'")->select();
			$data['totalCount']=count($data['data']);
		}

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