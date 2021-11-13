package es.udc.tfm.heimdal.heimdal_server.auth;

import es.udc.tfm.heimdal.heimdal_server.model.UserProfile;
import es.udc.tfm.heimdal.heimdal_server.repository.UserProfileRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserProfileDetails implements UserDetailsService {

    @Autowired
    private UserProfileRepository userProfileRepository;

    @Override
    public UserDetails loadUserByUsername(String firebaseId) throws UsernameNotFoundException {
        final UserProfile user = userProfileRepository.findByFirebaseId(firebaseId);

        if (user == null) {
            throw new UsernameNotFoundException("User with firebaseId '" + firebaseId + "' not found");
        }

        return User
                .withUsername(user.getUsername())
                .password(user.getFirebaseId())
                .authorities(user.getRoles())
                .accountExpired(false)
                .accountLocked(false)
                .credentialsExpired(false)
                .disabled(false)
                .build();
    }

}