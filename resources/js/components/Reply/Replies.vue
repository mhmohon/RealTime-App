<template>
    <div>
        <reply 
        v-for="reply in content" 
        :key="reply.id" 
        :data="reply"
        v-if="replies"
        ></reply>
    </div>
</template>

<script>
import Reply from "./Reply";
export default {
    props: ['replies'],
    data(){
        return{
            content: this.replies
        }
    },
    components: {Reply},

    created(){
        this.listen()
    },

    methods: {
        listen(){
            EventBus.$on('newReply', (reply) => {
                this.content.unshift(reply)
            })

            Echo.private('App.User.' + User.id())
                .notification((notification) => {
                    this.content.unshift(notification.reply)
                });
        }
    }
}
</script>

<style>

</style>
