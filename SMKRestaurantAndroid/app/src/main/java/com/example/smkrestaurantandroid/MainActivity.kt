package com.example.smkrestaurantandroid

import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.example.smkrestaurantandroid.R // <-- Tambahkan import R di sini
import kotlinx.coroutines.launch
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class MainActivity : AppCompatActivity() {

    private lateinit var apiService: ApiService

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // 10.0.2.2 adalah IP khusus Emulator Android Studio untuk mengakses localhost PC kamu
        val retrofit = Retrofit.Builder()
            .baseUrl("http://10.0.2.2:5000/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        apiService = retrofit.create(ApiService::class.java)

        loadMenuData()
    }

    private fun loadMenuData() {
        lifecycleScope.launch {
            try {
                val result = apiService.getMenu("Bearer sample_access_token")
                Toast.makeText(this@MainActivity, "Berhasil mengambil ${result.size} menu", Toast.LENGTH_SHORT).show()
            } catch (e: Exception) {
                Toast.makeText(this@MainActivity, "Gagal: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }
    }
}