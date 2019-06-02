<template>
    <div class="page-tabbar">
        <div class="page-wrap">
            <!-- 标题子组件 -->
            <titlebar 
            leftTitle="微信"
            :rightFirstImg="require('@/assets/search.png')"
            :rightLastImg="require('@/assets/addition.png')"
            :search="search"
            :add="add"></titlebar>
            <!-- 48px占位 -->
            <div style="height:48px;"></div>
            <!-- 切换面板 -->
            <mt-tab-container v-model="selected" class="page-tabbar-container">
                <mt-tab-container-item id="msg">
                    <message></message>
                </mt-tab-container-item>
            </mt-tab-container>
            <!-- tabbar列表 -->
            <mt-tabbar v-model="selected" fixed>
                <mt-tab-item id="msg" @click.native="changeState(0)">
                    <tabbar-icon
                    :selectedImage="require('@/assets/ic_weixin_selected.png')"
                    :normalImage="require('@/assets/ic_weixin_normal.png')"
                    :focused="currentIndex[0].isSelect"></tabbar-icon>微信
                </mt-tab-item>
                <mt-tab-item id="contacts" @click.native="changeState(1)">
                    <tabbar-icon
                    :selectedImage="require('@/assets/ic_contacts_selected.png')"
                    :normalImage="require('@/assets/ic_contacts_normal.png')"
                    :focused="currentIndex[1].isSelect"></tabbar-icon>通讯录
                </mt-tab-item>
                <mt-tab-item id="find" @click.native="changeState(2)">
                    <tabbar-icon
                    :selectedImage="require('@/assets/ic_find_selected.png')"
                    :normalImage="require('@/assets/ic_find_normal.png')"
                    :focused="currentIndex[2].isSelect"></tabbar-icon>发现
                </mt-tab-item>
                <mt-tab-item id="me" @click.native="changeState(3)">
                    <tabbar-icon
                    :selectedImage="require('@/assets/ic_me_selected.png')"
                    :normalImage="require('@/assets/ic_me_normal.png')"
                    :focused="currentIndex[3].isSelect"></tabbar-icon>我的
                </mt-tab-item>
            </mt-tabbar>
        </div>
    </div>
</template>

<script>
// 引入子组件
import titlebar from './common/TitleBar'
import message from './common/MessageList'
import tabbarIcon from './common/TabBarIcon'

export default {
    data(){ 
        return { 
            // 面板中显示子组件id
            selected:"msg",
            // 创建数组保存图片焦点状态
            currentIndex:[
                {isSelect:true},
                {isSelect:false},
                {isSelect:false},
                {isSelect:false},
            ],
            id:["msg","contacts","find","me"]
        }
    },
    components:{
        titlebar,
        message,
        tabbarIcon,
    },
    methods:{
        search(){},
        add(){},
        changeState(i){
            this.selected = this.id[i];
            // 对所有的状态变为false
            for(var j=0;j<this.currentIndex.length;j++){
                this.currentIndex[j].isSelect = false;
            }
            // 给触发事件的状态显示true
            this.currentIndex[i].isSelect = true;
        }
    }
}
</script>

<style scoped>

</style>
