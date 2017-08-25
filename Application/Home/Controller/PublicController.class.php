<?php
// +----------------------------------------------------------------------------
// | 描述：共用类库
// +----------------------------------------------------------------------------
// | 作者：度月飞天 490702087@qq.com
// +----------------------------------------------------------------------------
// | 版权：Copyright (c) 2015 www.keebin.cn All rights reserved.
// +----------------------------------------------------------------------------
// | 日期：2015-2-10 下午8:37:58
// +----------------------------------------------------------------------------

namespace Home\Controller;
use Think\Controller;

class PublicController extends Controller {
	/**
	 * 用户登录
	 * @param string $username
	 * @param string $password
	 * @param string $verify
	 */
public function login($username = null, $password = null, $verify = null){
        if(IS_POST){
            /* 检测验证码 TODO: */
            if(!check_verify($verify)){
            	$success=array();
            	$success['success']=false;
            	$success['msg']='验证码错误';
            	$this->ajaxReturn($success);
            }
            
            $this->ajaxReturn(D('Member')->login($username,$password));
            
            
        } else {
            if(is_login()){
                $this->redirect('Index/index');
            }else{
                /* 读取数据库中的配置 */
                $config	=	S('DB_CONFIG_DATA');
                if(!$config){
                    $config	=	D('Config')->find();
                    S('DB_CONFIG_DATA',$config);
                }
                C($config); //添加配置
                
                $this->display();
            }
        }
    }

    /* 退出登录 */
    public function logout(){
        if(is_login()){
            D('Member')->logout();
            session('[destroy]');
            $this->success('退出成功！', U('login'));
        } else {
            $this->redirect('login');
        }
    }

    public function verify(){
        $verify = new \Think\Verify();
        $verify->entry(1);
    }
	
	
}