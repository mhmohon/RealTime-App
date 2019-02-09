<template>
    <v-container>
        <v-form
            ref="form"
            v-model="valid"
            lazy-validation
            @submit.prevent="login"
        >
            <v-text-field
            v-model="form.email"
            :rules="emailRules"
            type="email"
            label="E-mail"
            required
            ></v-text-field>

            <v-text-field
            v-model="form.password"
            type="password"
            label="Password"
            required
            ></v-text-field>

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
            Login
            </v-btn>

            <v-btn
            color="error"
            @click="reset"
            >
            Clear
            </v-btn>

            <router-link to="/signup">
                <v-btn color="blue">SignUp</v-btn>
            </router-link>

            
        </v-form>
    </v-container>
</template>

<script>
  export default {
    data: () => ({

        valid: true,
        form:{
            email: null,
            password: null
        },
        emailRules: [
            v => !!v || 'E-mail is required',
            v => /.+@.+/.test(v) || 'E-mail must be valid'
        ],
        
        checkbox: false,
        
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
        login () {
            User.login(this.form)
            
        }
    }
  }
</script>

<style>

</style>
