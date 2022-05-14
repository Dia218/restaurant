//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.Ateam.demo.service;

import com.Ateam.demo.mapper.UserMapper;
import com.Ateam.demo.vo.ReservationVo;
import com.Ateam.demo.vo.UserVo;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService {
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:sss");
    Date time = new Date();
    String localTime = format.format(time);

    private final UserMapper userMapper;

    @Transactional
    public void joinUser(UserVo userVo) {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        userVo.setUserPw(passwordEncoder.encode(userVo.getPassword()));
        userVo.setUserAuth("ROLE_USER");  // ROLE_ADMIN 계정은 일단 디비 테이블상에서 수동으로 UPDATE
        userVo.setUserPhone(userVo.getUserPhone());
        userVo.setAppendDate(this.localTime);
        userVo.setUpdateDate(this.localTime);
        this.userMapper.saveUser(userVo);
    }

    public UserVo loadUserByUsername(String userId) throws UsernameNotFoundException {
        //여기서 받은 유저 패스워드와 비교하여 로그인 인증
        UserVo userVo = this.userMapper.getUserAccount(userId);
        if (userVo == null) {
            throw new UsernameNotFoundException("User not authorized.");
        } else {
            return userVo;
        }
    }
}
