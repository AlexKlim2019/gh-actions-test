package com.example.gtactionstest

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class GtActionsTestApplication {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            runApplication<GtActionsTestApplication>(*args)
        }
    }
}
