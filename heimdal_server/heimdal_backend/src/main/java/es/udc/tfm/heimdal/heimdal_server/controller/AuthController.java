package es.udc.tfm.heimdal.heimdal_server.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/public")
public class AuthController {

    @GetMapping("/test")
    ResponseEntity<String> getPublic() {
        return ResponseEntity.ok("OK");
    }
}