package net.ezens.Intranet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
// 로그 테스트일뿐 추후 삭제
public class ApiController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ApiController.class);
 
    @GetMapping
    public ResponseEntity<String> hello() {
        LOGGER.debug("[ Hello Debug level log ]");
        LOGGER.info("[ Hello Info level log ]");
        LOGGER.error("[ Hello Error level log ]");
        LOGGER.warn("[ Hello Warn level log ]");
        LOGGER.info("[ TEST TEST TEST ]");
        LOGGER.info("[ TEST TEST TEST ]");
        LOGGER.info("[ TEST TEST TEST ]");
        LOGGER.info("[ TEST TEST TEST ]");
        
        return new ResponseEntity<String>("Hello World 로그 테스트", HttpStatus.OK);
    }
}

