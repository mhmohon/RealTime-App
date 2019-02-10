<template>
    <v-container fluid>
        <v-card>
            <v-form
                ref="form"
                lazy-validation
                @submit.prevent="update"
            >
                <v-text-field
                v-model="form.title"
                type="text"
                label="Title"
                required
                ></v-text-field>

                <markdown-editor v-model="form.content" ></markdown-editor>

                <v-card-actions>
                    <v-btn icon small type="submit">
                        <v-icon color="teal">save</v-icon>
                    </v-btn>
                    <v-btn icon small @click="cancel">
                        <v-icon>cancel</v-icon>
                    </v-btn>
                </v-card-actions>
                

            </v-form>
        </v-card>
    </v-container>
</template>

<script>
export default {
    props:['data'],
    data(){
        return{
            form : {
                title: null,
                content: null
            }
        }
    },
    mounted(){
        this.form = this.data
    },
    methods: {
        update() {
            axios.patch(`/api/question/${this.form.slug}`, this.form)
            .then(res => this.cancel())
            .catch(error => console.log(error.response.data))
        },

        cancel(){
            EventBus.$emit('cancelEditing')
        }
    }
}
</script>

<style>

</style>
