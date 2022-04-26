package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.UserVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    void saveUser(UserVo userVo);
}