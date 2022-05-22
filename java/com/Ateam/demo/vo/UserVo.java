package com.Ateam.demo.vo;

import lombok.Data;
import java.util.Collection;
import java.util.Collections;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Data
@RequiredArgsConstructor
public class UserVo implements UserDetails {
    private int userNo;
    private String userId;
    private String userPw;
    private String userName;
    private String userAuth;
    private Integer userDoB;
    private String userEmail;
    private String userPhone;
    private String appendDate;
    private String updateDate;

    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singletonList(new SimpleGrantedAuthority(this.userAuth));
    }

    public String getPassword() {
        return this.userPw;
    }

    // 시큐리티의 userName
    // -> 따라서 얘는 인증할 때 id를 봄
    public String getUsername() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getUserPhone() {
        return this.userPhone;
    }

    public boolean isAccountNonExpired() {
        return true;
    }

    public boolean isAccountNonLocked() {
        return true;
    }

    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean isEnabled() {
        return true;
    }

}
