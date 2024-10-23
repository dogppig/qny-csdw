package com.qny.csdw.entity;

import java.util.Date;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 用户表(User)表实体类
 *
 * @author Calyee
 * @since 2024-10-23 22:37:35
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("user")
public class User implements Serializable {
    //用户id@TableId
    private Long id;

    //用户昵称
    private String name;
    //用户头像
    private String avatar;
    //性别 1为男性，2为女性
    private Integer sex;
    //微信openid用户标识
    private String openId;
    //在线状态 1在线 2离线
    private Integer activeStatus;
    //最后上下线时间
    private Date lastOptTime;
    //ip信息
    private String ipInfo;
    //佩戴的徽章id
    private Long itemId;
    //使用状态 0.正常 1拉黑
    private Integer status;
    //创建时间
    private Date createTime;
    //修改时间
    private Date updateTime;


}

