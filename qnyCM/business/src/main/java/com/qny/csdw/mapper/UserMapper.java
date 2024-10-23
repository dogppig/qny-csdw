package com.qny.csdw.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import com.qny.csdw.entity.User;

/**
 * 用户表(User)表数据库访问层
 *
 * @author Calyee
 * @since 2024-10-23 22:37:41
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

}

