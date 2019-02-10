import Token from './Token'
import AppStorage from './AppStorage';

class User {
    login(form) {
        axios.post('/api/auth/login', form)
            .then(res => this.responseAfterlogin(res))
            .catch(error => console.log(error.response.data))
    }

    responseAfterlogin(res){
        const access_token = res.data.access_token
        const user = res.data.user
        
        if (Token.isValid(access_token)) {
            
            AppStorage.store(user, access_token)
            
            window.location = '/forum'
            
        }
    }

    hasToken(){
        const storedToken = AppStorage.getToken();
        if(storedToken){
            return Token.isValid(storedToken) ? true : false
        }
        return false
    }

    loggedIn(){
        return this.hasToken();
    }

    logout(){
        AppStorage.clear();
        window.location = '/forum'
    }

    name(){
        if(this.loggedIn()){
            return AppStorage.getUser();
        }
    }

    id(){
        if(this.loggedIn()){
            const payload = Token.payload(AppStorage.getToken())
            return payload.sub;
        }
    }

    own(id){
        return this.id() == id
    }
}
export default User = new User();