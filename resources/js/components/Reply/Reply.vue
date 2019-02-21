<template>
    <div class="mt-3">
        <v-card>
            <v-card-title>
                <div class="headline">{{ data.user }}</div>
                <div class="ml-2">said {{ data.created_at }}</div>
                <v-spacer></v-spacer>
                <like :content = "data"></like>
            </v-card-title>
            <v-divider></v-divider>
            <v-card-text v-html="data.content"></v-card-text>
            <v-divider></v-divider>
            <v-card-actions v-show="own">
                <v-btn icon small>
                    <v-icon color="orange">edit</v-icon>
                </v-btn>
                <v-btn icon small>
                    <v-icon color="red">delete</v-icon>
                </v-btn>
            </v-card-actions>
        </v-card>
    </div>
</template>

<script>
import Like from '../Likes/Like'

export default {
    props: ['data'],
    components:{Like},
    computed: {
        own(){
            return User.own(this.data.user_id)
        }
    }
}
</script>

<style>

</style>
