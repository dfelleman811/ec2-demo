package com.revature;

import io.javalin.Javalin;
import io.javalin.http.staticfiles.Location;

public class HelloEC2 {

    public static void main(String[] args) {
        Javalin app = Javalin.create(config -> {
            config.addStaticFiles("/public", Location.CLASSPATH);
                }
        ).start(8081);

        app.get("/hello", ctx -> {
            ctx.json("Hello from you EC2 instance! If you're seeing this message our webhook worked!");
        });
    }
}
