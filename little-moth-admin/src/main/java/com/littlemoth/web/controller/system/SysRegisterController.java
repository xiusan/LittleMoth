package com.littlemoth.web.controller.system;

import com.littlemoth.common.annotation.Log;
import com.littlemoth.common.constant.Constants;
import com.littlemoth.common.core.controller.BaseController;
import com.littlemoth.common.core.domain.AjaxResult;
import com.littlemoth.common.core.domain.model.RegisterBody;
import com.littlemoth.common.core.redis.RedisCache;
import com.littlemoth.common.enums.BusinessType;
import com.littlemoth.common.utils.StringUtils;
import com.littlemoth.framework.web.service.SysRegisterService;
import com.littlemoth.system.service.ISysConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 注册验证
 *
 * @author xiusan
 */
@RestController
@RequestMapping("/monitor/online")
public class SysRegisterController extends BaseController {
    @Autowired
    private SysRegisterService registerService;

    @Autowired
    private ISysConfigService configService;

    @Autowired
    private RedisCache redisCache;

    @PostMapping("/register")
    public AjaxResult register(@RequestBody RegisterBody user) {
        if (!("true".equals(configService.selectConfigByKey("sys.account.registerUser")))) {
            return error("当前系统没有开启注册功能！");
        }
        String msg = registerService.register(user);
        return StringUtils.isEmpty(msg) ? success() : error(msg);
    }


    /**
     * 强退用户
     */
    @Log(title = "在线用户", businessType = BusinessType.FORCE)
    @GetMapping("/{tokenId}")
    public AjaxResult forceLogout(@PathVariable String tokenId) {
        redisCache.deleteObject(Constants.LOGIN_TOKEN_KEY + tokenId);
        return AjaxResult.success();
    }
}
