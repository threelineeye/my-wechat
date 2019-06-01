<template>
    <div class="page-tabbar">
        <div class="page-wrap">
            <titlebar></titlebar>
        </div>
    </div>
</template>

<script>
// 引入子组件
import titlebar from './common/TitleBar'

export default {
    data(){ 
        return { }
    },
    components:{
        titlebar,
    }
}
</script>

<style scoped>

</style>
