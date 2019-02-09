<template>
    <v-container fluid grid-list-md>
    <v-layout row wrap>
      <v-flex xs8>
        <question
        v-for = "question in questions"
        :key="question.path"
        :question=question
        >

        </question>
      </v-flex>
      <v-flex xs4>
        <v-card dark color="primary">
          <v-card-text class="px-0">12</v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
    </v-container>
</template>

<script>
import Question from './Question'
export default {
    components: {Question},
    data(){
        return {
            questions: { }
        }
    },
    created(){
        axios.get('/api/question')
        .then(res => this.questions = res.data.data)
        .catch(error => console.log(error.response.data))
    }
}
</script>

<style>

</style>
