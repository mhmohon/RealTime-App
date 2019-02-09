<template>
    <v-card>
        <v-card-title primary-title>
            <div>
            <h3 class="headline mb-0">
                <router-link :to="question.path">

                    {{ question.title }}
                </router-link>
            </h3>
            <div class="grey--text">
                By {{ question.user }}
                {{ question.created_at }}
            </div>
            </div>
        </v-card-title>

        <v-card-text>
            {{ question.content }}
        </v-card-text>
    </v-card>
    
</template>

<script>
export default {
    props:['question']
}
</script>

<style>

</style>
