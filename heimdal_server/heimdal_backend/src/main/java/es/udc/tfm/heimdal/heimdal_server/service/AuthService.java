package es.udc.tfm.heimdal.heimdal_server.service;

import es.udc.tfm.heimdal.heimdal_server.auth.JwtResponse;
import es.udc.tfm.heimdal.heimdal_server.repository.UserProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    @Autowired
    private UserProfileRepository userProfileRepository;

    public JwtResponse signInOrSignUp(){
        
    }

}
