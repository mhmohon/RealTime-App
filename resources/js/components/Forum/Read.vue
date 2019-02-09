<template>
    <show-question 
    :data = question
    v-if = "question"
    >
        
    </show-question>
</template>

<script>
import ShowQuestion from './ShowQuestion'

export default {
    components:{ShowQuestion},
    data(){
        return{
            question:null
        }
    },
    created(){
        axios.get(`/api/question/${this.$route.params.slug}`)
        .then(res => this.question = res.data.data)
        .catch(error => console.log(res.response.data))
    }
}
</script>

<style>

</style>
