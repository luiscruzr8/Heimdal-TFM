package es.udc.tfm.heimdal.heimdal_server.model;

import java.io.Serializable;
import java.time.ZonedDateTime;
import java.util.List;


import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "users")
public class UserProfile implements Serializable {

    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter @Setter
    private int id;

    @Getter @Setter
    private String firebaseId;

    @Getter @Setter
    private String username;

    @Getter @Setter
    private String password;

    @Getter @Setter
    private String email;

    @Getter @Setter
    private boolean isActive;

    @Getter @Setter
    private String authToken;

    @Getter @Setter
    private byte[] qrShare;

    @Getter @Setter
    private String photoUrl;

    @Getter @Setter
    private boolean usesTelegram;

    @Getter @Setter
    private boolean usesEmail;

    @Getter @Setter
    private boolean usesSms;

    @Getter @Setter
    private String telegramId;

    @Getter @Setter
    private String telegramToken;

    @Getter @Setter
    private String currentTaskId;

    @Getter @Setter
    private String phoneNumber;

    @Getter @Setter
    private String phoneToken;

    @Getter @Setter
    @ElementCollection(fetch = FetchType.EAGER)
    private List<Role> roles;
    
    @Getter
    private ZonedDateTime createdAt;

    @Getter
    private ZonedDateTime updatedAt;

}