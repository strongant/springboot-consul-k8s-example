package com.maryanto.dimas.example.server.discovery.server.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class ExampleRestController {

    @Value("${server.port:8080}")
    private int serverPort;

    @GetMapping("/server/hello")
    public Map<String, Object> serverHalo() {
        Map<String, Object> params = new HashMap<>();
        params.put("time", LocalDateTime.now());
        params.put("message", "Halo ini dari aplikasi springboot");
        return params;
    }

    @GetMapping("/serve/call")
    public String call() {
        return "server:" + serverPort;
    }
}
