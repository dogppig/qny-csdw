package com.qny.csdw.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qny.csdw.mapper.UserMapper;
import com.qny.csdw.service.UserService;
import org.springframework.stereotype.Service;
import com.qny.csdw.entity.User;

/**
 * 用户表(User)表服务实现类
 *
 * @author Calyee
 * @since 2024-10-23 22:37:39
 */
@Service("userService")
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}

