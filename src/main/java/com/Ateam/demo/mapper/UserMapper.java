//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.UserVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    void saveUser(UserVo userVo);

    UserVo getUserAccount(String userId);
}
