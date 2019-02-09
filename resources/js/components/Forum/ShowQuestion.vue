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
                <v-btn color="teal">5 Replies</v-btn>
            </v-card-title>
            <v-card-text v-html="content"></v-card-text>
            <v-card-action>
                <v-btn icon small color="orange">
                    <v-icon>edit</v-icon>
                </v-btn>
            </v-card-action>
        </v-container>

    </v-card>
</template>

<script>
import md from 'marked'
export default {
    props:['data'],
    computed:{
        content(){
            return md.parse(this.data.content)
        }
    }
}
</script>

<style>

</style>
