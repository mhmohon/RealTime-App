<template>
    <div v-if = "question">
        <edit-question 
        v-if="editing"
        :data = question
        ></edit-question>
        <div v-else>
            <show-question 
            :data = question
            v-if = "question"
            ></show-question>
        </div>
    </div>
</template>

<script>
import ShowQuestion from './ShowQuestion'
import EditQuestion from './EditQuestion'

export default {
    components:{ShowQuestion, EditQuestion},
    data(){
        return{
            question: null,
            editing: false
        }
    },
    created(){

        this.listen()
        this.getQuestion()
        
    },
    methods:{
        listen(){
            EventBus.$on('EditQuestion', () => {
                this.editing = true
            })

            EventBus.$on('cancelEditing', () => {
                this.editing = false
            })
        },

        getQuestion(){
            axios.get(`/api/question/${this.$route.params.slug}`)
            .then(res => this.question = res.data.data)
            .catch(error => console.log(res.response.data))
        }
    }
}
</script>

<style>

</style>
