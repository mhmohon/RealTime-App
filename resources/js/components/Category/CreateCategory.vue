<template>
    <v-container>
        <v-form @submit.prevent="submit">
            <v-text-field
            v-model="form.name"
            type="text"
            label="Category Name"
            required
            ></v-text-field>

            <v-btn
            v-if="editSlug"
            color="pink"
            type="submit"
            >
            Update
            </v-btn>
            <v-btn
            v-else
            color="success"
            type="submit"
            >
            Create
            </v-btn>
        </v-form>

        <v-card>
            <v-toolbar color="indigo" dark dense class="mt-2">
                <v-toolbar-title>Categories</v-toolbar-title>
            </v-toolbar>

            <v-list>
                <div v-for="(category, index) in categories" :key="category.id">
                    <v-list-tile>
                        <v-list-tile-action>
                            <v-btn icon small @click="edit(index)">
                                <v-icon color="orange">edit</v-icon>
                            </v-btn>
                        </v-list-tile-action>
                        <v-list-tile-content>
                            <v-list-tile-title>{{ category.name }}</v-list-tile-title>
                        </v-list-tile-content>
                        <v-list-tile-action>
                            <v-btn icon small @click="destroy(category.slug, index)">
                                <v-icon color="red">delete</v-icon>
                            </v-btn>
                        </v-list-tile-action>
                    </v-list-tile>
                    <v-divider></v-divider>
                </div>
            </v-list>
        </v-card>
    </v-container>
</template>

<script>
export default {
    data(){
        return{
            categories: {},
            form:{
                name: '',
            },
            editSlug: null
        }
    },
    created(){
        if(!User.admin()){
            this.$router.push('/forum')
        }
        this.fetchData();
    },
    methods:{
        fetchData(){
            axios.get('/api/category')
            .then(res => this.categories = res.data.data)
        },
        submit(){
            this.editSlug ? this.update() : this.create()
            
        },
        create(){
            axios.post('/api/category', this.form)
            .then(res => {
                console.log(res.data)
                this.categories.unshift(res.data);
                // this.fetchData()
                this.form.name = null
            })
            .catch(error => console.log(error.response.data))
        },

        update(){
            axios.patch(`/api/category, ${this.editSlug}`,this.form)
            .then(res => {
                console.log(res.data)
                this.categories.unshift(res.data);
                // this.fetchData()
                this.form.name = null
            })
            .catch(error => console.log(error.response.data))
        },
        destroy(slug, index){
            axios.delete(`/api/category/${slug}`)
            .then(res => this.categories.splice(index, 1))
        },

        edit(index){
            this.form.name = this.categories[index].name
            this.editSlug = this.categories[index].slug
            this.categories.splice(index, 1)
        }
    }
}
</script>

<style>

</style>
