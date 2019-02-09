<template>
   <v-container>
        <v-form
            ref="form"
            v-model="valid"
            lazy-validation
            @submit.prevent="create"
        >
            <v-text-field
            v-model="form.title"
            type="text"
            label="Title"
            required
            ></v-text-field>

            <v-autocomplete
            v-model="form.category_id"
            label="Category"
            :items="categories"
            item-text="name"
            item-value="id"
            ></v-autocomplete>
            
            <markdown-editor v-model="form.content" ></markdown-editor>
            
            <v-btn
            :disabled="!valid"
            color="success"
            type="submit"
            @click="validate"
            >
            Create
            </v-btn>

            <v-btn
            color="error"
            @click="reset"
            >
            Clear
            </v-btn>

            
            
        </v-form>
    </v-container>
</template>

<script>
export default {
    data: () => ({

        valid: true,
        form:{
            title: null,
            category_id: null,
            content: null,
        },
        categories:{}
       
        
        
    }),
    created(){
        axios.get('/api/category')
        .then(res => this.categories = res.data.data)
        .catch(error => console.log(error.response.data))
    },
    methods: {
        validate () {
            if (this.$refs.form.validate()) {
            this.snackbar = true
            }
        },
        reset () {
            this.$refs.form.reset()
        },
        
        create () {
            axios.post('/api/question', this.form)
            .then(res => this.$router.push(res.data.path))
            .catch(error => console.log(error.response.data))
            
        }
    }
}
</script>

<style>

</style>

