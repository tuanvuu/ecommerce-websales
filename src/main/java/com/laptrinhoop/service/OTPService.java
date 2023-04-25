package com.laptrinhoop.service;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import org.springframework.stereotype.Service;

import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
public class OTPService {
    private static final Integer EXPIRE_MINS = 12;
    private static LoadingCache<String, Integer> otpCache;

    public  OTPService() {
        super();
        otpCache = CacheBuilder.newBuilder().
                expireAfterWrite(EXPIRE_MINS, TimeUnit.MILLISECONDS)
                .build(new CacheLoader<String, Integer>() {
                    public Integer load(String key) {
                        return 0;
                    }
                });
    }

    public  int generateOTP(String key){
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);
        otpCache.put(key, otp);
        return otp;
    }

    public int getOtp(String key){
        try{
            return otpCache.get(key);
        }catch (Exception e){
            return 0;
        }
    }

    public void clearOTP(String key){
        otpCache.invalidate(key);
    }

    public static void main(String[] args) {
        OTPService S = new OTPService();
        S.generateOTP("test");
        System.out.println(S.getOtp("test"));
        S.generateOTP("test");
        System.out.println(S.getOtp("test"));

        try {
            Thread.sleep(5000);
            System.out.println(S.getOtp("test"));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
