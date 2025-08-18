
package com.example.demo.security;

import com.example.demo.user.UserAccount;
import com.example.demo.user.UserAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Optional;

@Service
public class UserAccountDetailsService implements UserDetailsService {

    @Autowired
    private UserAccountRepository userAccountRepository;

    @Override
    public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
        // Try to find by email first, then by username
        Optional<UserAccount> userAccountOpt = userAccountRepository.findByEmail(usernameOrEmail);
        if (userAccountOpt.isEmpty()) {
            userAccountOpt = userAccountRepository.findByUsername(usernameOrEmail);
        }

        if (userAccountOpt.isEmpty()) {
            throw new UsernameNotFoundException("User not found: " + usernameOrEmail);
        }

        UserAccount userAccount = userAccountOpt.get();

        // Check if user is enabled
        if (!userAccount.isEnabled()) {
            throw new DisabledException("User account is disabled");
        }

        // Map roles string to SimpleGrantedAuthority
        return User.builder()
                .username(userAccount.getUsername())
                .password(userAccount.getPasswordHash())
                .authorities(Collections.singletonList(new SimpleGrantedAuthority("ROLE_USER")))
                .build();
    }
}
