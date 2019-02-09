<template>
    <v-container>
        <v-form
            ref="form"
            v-model="valid"
            lazy-validation
            @submit.prevent="signup"
        >
            <v-text-field
            v-model="form.name"
            type="text"
            label="Name"
            required
            ></v-text-field>
            <span class="red--text" v-if="errors.name">{{ errors.name[0] }}</span>

            <v-text-field
            v-model="form.email"
            :rules="emailRules"
            type="email"
            label="E-mail"
            required
            ></v-text-field>
            <span class="red--text" v-if="errors.email">{{ errors.email[0] }}</span>

            <v-text-field
            v-model="form.password"
            type="password"
            label="Password"
            required
            ></v-text-field>
            <span class="red--text" v-if="errors.password">{{ errors.password[0] }}</span>

            <v-text-field
            v-model="form.password_confirmation"
            type="password"
            label="Confirm Password"
            required
            ></v-text-field>
            <span class="red--text" v-if="errors.password">{{ errors.password[0] }}</span>

            <v-checkbox
            v-model="checkbox"
            :rules="[v => !!v || 'You must agree to continue!']"
            label="Do you agree?"
            required
            ></v-checkbox>

            <v-btn
            :disabled="!valid"
            color="success"
            type="submit"
            @click="validate"
            >
            Signup
            </v-btn>

            <v-btn
            color="error"
            @click="reset"
            >
            Clear
            </v-btn>

            <router-link to="/login">
                <v-btn color="blue">login</v-btn>
            </router-link>

            
        </v-form>
    </v-container>
</template>

<script>
  export default {
    data: () => ({

        valid: true,
        form:{
            name: null,
            email: null,
            password: null,
            password_confirmation: null
        },
        emailRules: [
            v => !!v || 'E-mail is required',
            v => /.+@.+/.test(v) || 'E-mail must be valid'
        ],
        
        checkbox: false,
        errors:{}
    }),
    created(){
        if(User.loggedIn()){
          this.$router.push({name:'forum'})  
        }
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
        resetValidation () {
            this.$refs.form.resetValidation()
        },
        signup () {
            axios.post('/api/auth/signup', this.form)
            .then(res => {
                User.responseAfterlogin(res)
                this.$router.push({name:'forum'})
            })
            .catch(error => this.errors = error.response.data.errors)
        }
    }
  }
</script>

<style>

</style>
