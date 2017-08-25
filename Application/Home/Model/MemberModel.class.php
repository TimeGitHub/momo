<?php

namespace Home\Model;
use Think\Model;
class MemberModel extends Model {
	/**
	 * 用户登录
	 * @param unknown $username
	 * @param unknown $password
	 * @return string
	 */
	public function login($username,$password){
		$where['username']=$username;
		$where['password']=md5($password);
		$where['status']=1;
		$user=$this->where($where)->select();
		if (count($user)>0){
			$success['success']=true;
            $success['msg']='OK';
            $success['url']=U('Index/index');
            
            $this->autoLogin($user[0]);
		}else{
			$success['success']=false;
			$success['msg']='用户名密码错误，或用户被锁定';
		}		
		return $success;
	}
	
	/**
     * 自动登录用户
     * @param  integer $user 用户信息数组
     */
    private function autoLogin($user){
        /* 更新登录信息 */
        $data = array(
            'uid'             => $user['uid'],
            'login'           => array('exp', '`login`+1'),
            'last_login_time' => NOW_TIME,
            'last_login_ip'   => get_client_ip(1),
        );
        $this->save($data);

        /* 记录登录SESSION和COOKIES */
        $auth = array(
            'uid'             => $user['uid'],
            'username'        => $user['username'],
            'last_login_time' => $user['last_login_time'],
        );

        session('user_auth', $auth);
        session('user_auth_sign', data_auth_sign($auth));
    }
    
    /**
     * 注销当前用户
     * @return void
     */
    public function logout(){
    	session('user_auth', null);
    	session('user_auth_sign', null);
    }
    
    
}