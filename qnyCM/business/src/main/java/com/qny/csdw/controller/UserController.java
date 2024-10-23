package com.qny.csdw.controller;



import org.springframework.web.bind.annotation.*;

/**
 * 用户表(User)表控制层
 *
 * @author Calyee
 * @since 2024-10-23 22:37:34
 */
 
/**
 * 用户表(User)表控制层
 *
 * @author Calyee
 * @since 2024-10-23 22:37:34
 */
@Api(tags = "用户表(User)")
@RestController
@RequestMapping("/user")
public class UserController{
    /**
     * 服务对象
     */
    @Autowired
    private UserService userService;

    /**
     * 分页查询
     *
     * @param page 筛选分页
     * @param size 分页大小
     * @return 查询结果
     */
    @GetMapping("/page")
    @ApiOperation("User分页查询")
    public R<PageInfo<User>> queryByPage(@RequestParam(value = "page", required = true,defaultValue = "1") Integer page,
                                         @RequestParam(value = "size", required = true,defaultValue = "10")Integer size) {
        return R.ok(userService.queryByPage(page ,size));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/{id}")
    @ApiOperation("UserID查询")
    public R<User> queryById(@PathVariable("id") Integer id) {
        return R.ok(userService.queryById(id));
    }

    /**
     * 新增或修改数据
     *
     * @param user 实体
     * @return 新增或修改结果
     */
    @PostMapping("/addOrUpdate")
    @ApiOperation("User添加")
    public R<User> addOrUpdate(@RequestBody User user) {
        return R.ok(userService.addOrUpdate(user));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping("delete/{id}")
    @ApiOperation("UserID删除")
    public R deleteById(@PathVariable("id") Integer id) {
        return R.ok(userService.deleteById(id));
    }
}

