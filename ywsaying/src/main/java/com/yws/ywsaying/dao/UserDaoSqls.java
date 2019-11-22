package com.yws.ywsaying.dao;

public class UserDaoSqls {
	public static final String SELECT_PAGING = "SELECT user_idx, user_id, user_password, user_eamil, user _name, user_bir_yy, "
			+ "user_bir_mm, user_bir_dd, user_gender, user_nickname, user_regtime ORDER BY user_idx DESC limit :start, :limit";
	public static final String DELETE_BY_ID ="DELETE FROM user where user_id= user_id";
	public static final String SELECT_COUNT = "SELECT count(*) FROM user";
			
			
			
			
			
			
			
			
}
