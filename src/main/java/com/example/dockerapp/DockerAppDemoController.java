package com.example.dockerapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerAppDemoController {

    @GetMapping("/hello")
    public String hello() {
        return System.getenv("docker-app");
    }

    @GetMapping("/docker-app/yhstory")
    public String yhstory() {
        return "yhstory Hello~~~~~ from local";
    }
}
