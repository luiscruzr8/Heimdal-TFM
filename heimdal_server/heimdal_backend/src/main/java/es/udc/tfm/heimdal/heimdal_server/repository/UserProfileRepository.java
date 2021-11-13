package es.udc.tfm.heimdal.heimdal_server.repository;

import es.udc.tfm.heimdal.heimdal_server.model.UserProfile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface UserProfileRepository extends JpaRepository <UserProfile, Integer>{

    UserProfile findByFirebaseId(String firebaseId);
}