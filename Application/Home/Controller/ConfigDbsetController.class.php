<?php
namespace Home\Controller;
use Think\Controller;
class ConfigDbsetController extends AuthController {
	
	public function getInfo(){	
		$model=M('config_dbset');
		$data['success']=true;
		$data['data']=$model->where(array('id'=>1))->select()[0];
		echo $this->ajaxReturn($data);
    }
	
	public function editInfo(){
		
		$model=M('config_dbset');
		if($model->save(I('post.','',false)))
		{
			$data['success']=true;
			$data['message']='恭喜，更新成功！';
		}else{
			$data['success']=false;
			$data['errorMessage']='更新失败，可能没修改任何数据！';
		}
		echo $this->ajaxReturn($data);
    }
}