<template>
    <div class="rootstyle" @click="itemClick(id)" :class="itemclass">
        <div class="msgStyle">
            <img :src="img" alt="#" class="imgStyle">
            <div class="rightOfImg">
                <span class="title">{{title}}</span>
                <span class="subtitle">{{subtitle}}</span>
            </div>
        </div>
        <span class="sendTime">{{time}}</span>
    </div>
</template>

<script>
export default {
    props:{
        id:{default:''},
        img:{default:''},
        title:{type:String,default:''},
        subtitle:{type:String,default:''},
        time:{type:String,default:''},
        itemClick:{type:Function},
        itemclass:{default:true}
    }
}
</script>

<style scoped>
    .rootstyle{
        display:flex;
        font-size:14px;
        justify-content: space-between;
        align-items: center;
        margin-top:3px;
    }
    .imgStyle{
        width:40px;
        height:40px;
    }
    .msgStyle{
        display:flex;
    }
    .rightOfImg{
        display:flex;
        flex-direction: column;
        justify-content: center;
        margin-left: 7px;
    }
    .title{
        color:#000;
        font-size:17px;
    }
    .subtitle{
        color:gray;
        margin-top: 4px;
        width:100%;
        height:20px;
        overflow: hidden;
    }
    .sendTime{
        margin-right: 10px;
        color:gray;
        align-self: flex-start;
    }
</style>
