function fn(){

    var config = {
        name: "Raghav",
        baseUrl: "https://reqres.in/api"
    };


    var env = karate.env
    karate.log('The value of env is : ', env);

    if(env == 'qa'){
        config.baseUrl = 'https://reqres.in/api/qa'
    }
    else if(env == 'dev'){
        config.baseUrl = 'https://reqres.in/api/dev'
    }
    else {
        config.baseUrl = 'https://reqres.in/api'
    }
       karate.configure('connectTimeout', 5000);
       karate.configure('readTimeout', 5000);
    return config;
}