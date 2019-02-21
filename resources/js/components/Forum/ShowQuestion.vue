<template>
    <v-card>
        <v-container fluid>
            <v-card-title primary-title>
                <div>
                <h3 class="headline mb-0">
                    

                    {{ data.title }}
                    
                </h3>
                <div class="grey--text">
                    By {{ data.user }}
                    ({{ data.created_at }})
                </div>
                </div>
                <v-spacer></v-spacer>
                <v-btn color="teal" dark>{{ data.reply_count }} Replies</v-btn>
            </v-card-title>
            <v-card-text v-html="content"></v-card-text>
            <v-card-actions v-if="own">
                <v-btn icon small @click="edit">
                    <v-icon color="orange">edit</v-icon>
                </v-btn>
                <v-btn icon small @click="destroy">
                    <v-icon color="red">delete</v-icon>
                </v-btn>
            </v-card-actions>
        </v-container>

    </v-card>
</template>

<script>
import md from 'marked'
export default {
    props:['data'],
    data(){
        return{
            own : User.own(this.data.user_id)
        }
    },
    computed:{
        content(){
            return md.parse(this.data.content)
        }
    },
    methods:{
        destroy(){
            axios.delete(`/api/question/${this.data.slug}`)
            .then(res => this.$router.push('/forum'))
            .catch(error => console.log(error.response.data))
        },
        edit(){
            EventBus.$emit('EditQuestion')
        }
    }
}
</script>

<style>

</style>
