<template>
    <div style="display:flex;justify-content:center;align-items:center;flex-direction:column;margin-top:20px">
        <mt-field placeholder="用户名/邮箱/手机号" class="mint-cell-wrapper" v-model="uname">
        </mt-field>
        <mt-field placeholder="请输入密码" type="password" class="mint-cell-wrapper" v-model="upwd"></mt-field>
        <mt-button type="primary" @click="login" size="large" style="margin-top:30px;">登录</mt-button>
    </div>
</template>

<script>
import querystring from 'querystring'
export default {
    data(){
        return {
            uname:"",
            upwd:"",
        }
    },
    methods:{
        login(){
            if(!this.uname){
                this.$messagebox({
                    title:"",
                    message:"请输入用户名"
                })
            }else if(!this.upwd){
                this.$messagebox("","请输入密码")
            }else{
                var uname = this.uname,
                upwd = this.upwd;
                // 正则验证
                var reg_uname = /^[a-zA-Z0-9]{3,10}$/,
                reg_upwd = /^\w{6,10}$/;
                if(!reg_uname.test(uname)){
                    this.$toast("用户名格式不正确");
                    return;
                }
                if(!reg_upwd.test(upwd)){
                    this.$toast("密码格式不正确");
                    return;
                }
                // 发送ajax请求
                var url = "login";
                var data = {uname,upwd};
                // {headers:{'Content-Type':'application/x-www-form-urlencoded'}}
                this.axios({
                    url,
                    method:'post',
                    data,
                    transformRequest:[function(data){
                        // let ret = "";
                        // for (let it in data){
                        //     ret += encodeURIComponent(it) + '=' +encodeURIComponent(data[it]) + '&'
                        // }
                        // return ret
                        data = querystring.stringify(data);
                        return data;
                    }],
                    headers:{'Content-Type':'application/x-www-form-urlencoded'}
                }).then(result=>{
                    var code = result.data.code;
                    var msg = result.data.msg;
                    if(code==-1){
                        this.$toast(msg)
                    }else{
                        this.$router.push("/loginbg")
                    }
                })
            }
        }
    }
}
</script>

<style scoped>

</style>
