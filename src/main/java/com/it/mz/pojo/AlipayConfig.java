package com.it.mz.pojo;

public class AlipayConfig {
    // 应用ID
    public static String app_id = "2021000119678827";

    // 商户私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC4n/MT00SRaf9tReyGGqsLNTZP+0tTx4B059ls0kJpVUPQ+fLYGzzt2YpAqtuBapydEdjHIUR80MQC2yWfudrF/2MK8RLQuJtqiTXzFhNZRr3/USVPLLAzX3FK8IJ8M2hlg8GXQEKBM7so7qo5/j8HpMFA+vs+ggrX7jed55Hkcy/BNgUDRFH+t7nvgmMf6ndbSQcefMxTsnof/XnLLhUBeQlMEH+RLG4Rds+bYRyO4jeN3rund+VZ7TEnibfvoczd04+Wn3DFZcnOs4EZur5cJ0MW9sKQieQvqgSl6DNJA0MyxbPSExqNoi9efsSZINDS79AY1aP4WOsadZyb8eRzAgMBAAECggEBAIzLHZoO0Ql7phh07IzQJYQkjkisQKOhTmrYrEx6g77EETV6hyEalHpmHTJ3mXG2Fb0KcSBaVFpC8lejO6v1FctMmQEtGsYlIhA6lvPL7/FzK01bWnJoh+6FaGZXx4pjwcc4lRd9H7pb8uyiJRqYswRnNiERxSvEC/Tja3J1uCJYDwMmucCdNVVjyucTU0xsDOd1eL4Qb4Z3SJzKEF5MgWcew5v62/Il/i2jJSx/XXZQjcfrcqG0sOsBHDnLqPhDcoMGliSBf1VCT8iIoqPHCEjyCmkc9t6A9Car40oSIissbqNtAZtk/OJeEe5TtUTTIilmcGMObje2TL0Xw9+wTFECgYEA9fspiqV2/jgtiXiStI/gIu5f0LJ3jq6Q3yvecJxEpqfynYF9hoE5cfoKq2dYa71ZFsDg04xLPEUD+lc66/mdc5hps4E+Z46GH7opynVDvC41+NiYbAkBsJQkhvFL9/me+wH7iIgBwojbvq2eegWY5dBsYE8pDgHH1E8SU9P6HX0CgYEAwCUG494j7KF6ylKJTn2vfsS8N7my02pFvg0ITCEWZ+2mSbl5P9OBwsE/xK9vwCqZ8Fofxa2/AASkf3aOZqSpyIYp1fZCEVL558yO0ccsyWeOVNSeHtKQT9fhw3XoF03h+QrQreedb6ATtoaUEwHh+PCKnoFdPuzSUuGyoiBTbK8CgYBCM3R8sgeSZ8AprV+eZNJn1EvJOR7gMa8fwQi+ue/oAm9TYJRN7N1vBWJ1uvybEny1mPdpN+rPr6tgZrWe6LEteSmJfBE1gbArPckdie3O6YjxDioHeW0Q/u3Nu4c8l9vnpiLyHdiLaJXrfYKXSIZb43oneWaNNIF5bEZ8dSJtaQKBgD2bYaMsNY6IlAtM/XNqPxvBTqv7YYgB2gy+tvtZ3IpEG34l9udtFHzyY1TX/1e5ERSMgQVr2QLTej7YL35fq4R85+sPg010smYNI3nFh+mnx24RogU19El1aZC3PExEj4C/Y/tueP8ybz+l1NJnVyHvVjLOPayQWDt03Ea5YKZHAoGAVQN8izi+CAmJD4+g5AfD94CEP05SVTV6pEYQeVtQbzaU4HY9BxhEbkUUiApltau+EbfU4o7oxQCk22gg89GXhyrD/paNmuNNPVamuXNKLnFGuEx68Jx1fWvEHdR4WPcs1LPhqT21bZ4kVxwRtv8QR2kRetrOR5McuqIFUPuB8WE=";

    // 支付宝公钥
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApK7+8SSS27LuTlz68EbRlrVqosevQBKzMiA9KE1zLZgZMNNMSiE2b4jr/+MDjdjLP8uKJqAUPM6iM/FzXWTUtz3NxwteNbmPKDE9UUVFsVwOJeqwc0+caPe3ML8qOj6P+wb6YV1rHnyZhnqC1TqnPCE7SJQkh+lXH2INo7cQf+/kb+vXupt7ustCSINottQ8ffSjKQiyWBspb3v44VJEzRk2UWb1fK6+Ve1bWty0vuRuJsDEfUtyvchUvFhxF2UQ6aayUmF3R6lLmjwcubRpF3ADEi4jGnjC+OLhRupMCgNZYOfftQsMY13IEPQkNUIZk+2FIuQipGf7UHRcmLiwIQIDAQAB";

    // 服务器异步通知页面路径
    public static String notify_url = "";

    // 页面跳转同步通知页面路径
    public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/index.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
}
