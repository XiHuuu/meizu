package com.it.mz.utils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class JedisPoolUtils {
    private static JedisPool jedisPool;
    private static String AUTH;
    static{
        //读取配置文件
        InputStream is = null;

        is = JedisPoolUtils.class.getClassLoader().getResourceAsStream("jedis.properties");

        //创建Properties对象
        Properties pro = new Properties();
        //关联文件

        try {
            pro.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
//        将AUTH赋值
        //AUTH=pro.getProperty("redis.auth");
        //获取数据，设置到JedisPoolConfig中
        JedisPoolConfig config = new JedisPoolConfig();
        config.setMaxTotal(Integer.parseInt(pro.getProperty("redis.pool.maxTotal")));
        config.setMaxIdle(Integer.parseInt(pro.getProperty("redis.pool.maxIdle")));

        //初始化JedisPool
        jedisPool = new JedisPool(config,pro.getProperty("redis.ip"),Integer.parseInt(pro.getProperty("redis.port")));



    }


    /**
     * 获取连接方法
     */
    public static Jedis getJedis(){
        Jedis jedis = jedisPool.getResource();
        //jedis.auth(AUTH);
        return jedis;
    }

    /**
     *
     * 释放资源
     */

    public static void releaseJedis(Jedis jedis){
        if(jedis!=null){
            jedis.close();
        }
    }

}
