package com.revature;

import io.javalin.Javalin;

public class HelloEC2 {

    public static void main(String[] args) {
        Javalin app = Javalin.create().start();

        app.get("/hello", ctx -> {
            ctx.json("Hello from you EC2 instance!");
        });
    }
}
