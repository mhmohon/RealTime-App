<template>
    <div class="mt-4">
        <markdown-editor v-model="content" ></markdown-editor>

        <v-btn dark color="green" @click="submit">
                Reply
        </v-btn>
    </div>
</template>

<script>
export default {
    props: ['qSlug'],
    data(){
        return{
            content: null
        }
    },

    methods:{
        submit(){
            axios.post(`/api/question/${this.qSlug}/reply`, {content:this.content})
            .then(res => {
                this.content = ''
                EventBus.$emit('newReply', res.data.reply)
                window.scrollTo(0,0)

            })
        }
    }
}
</script>

<style>

</style>
