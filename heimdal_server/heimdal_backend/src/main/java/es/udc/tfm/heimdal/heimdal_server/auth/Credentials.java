package es.udc.tfm.heimdal.heimdal_server.auth;

import com.google.firebase.auth.FirebaseToken;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Credentials {

    public enum CredentialType {
        ID_TOKEN, SESSION
    }

    private CredentialType type;
    private FirebaseToken decodedToken;
    private String idToken;
    private String session;

}