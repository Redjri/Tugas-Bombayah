package com.example.smkrestaurantandroid

import retrofit2.http.GET
import retrofit2.http.Header

interface ApiService {
    @GET("menu")
    suspend fun getMenu(
        @Header("Authorization") token: String
    ): List<Menu>
}