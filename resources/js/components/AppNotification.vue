<template>
    <div class="text-xs-center">
        <v-menu offset-y>
        <v-btn icon slot="activator">
            <v-icon :color="color">add_alert</v-icon> {{ this.unreadCount }}
        </v-btn>
        
        <v-list>
            <v-list-tile
            v-for="item in unread"
            :key="item.id"
            >
            <router-link :to="item.path">
                <v-list-tile-title @click="readIt(item)">{{ item.question }}</v-list-tile-title>
            </router-link>
            </v-list-tile>

            <v-divider></v-divider>

            <v-list-tile
            v-for="item in read"
            :key="item.id"
            >
            <v-list-tile-title>{{ item.question }}</v-list-tile-title>
            </v-list-tile>
        </v-list>
        </v-menu>
    </div>
       
</template>

<script>
export default {
    data: () => ({
        read: {},
        unread: {},
        unreadCount: 0,
        sound: "http://soundbible.com/mp3/Air%20Plane%20Ding-SoundBible.com-496729130.mp3"
    }),
    created(){
        if(User.loggedIn()){
            this.getNotification()
        }
        Echo.private('App.User.' + User.id())
            .notification((notification) => {
                this.playSound()
                this.unread.unshift(notification)
                this.unreadCount ++
            });
    },
    computed: {
        color(){
            return this.unreadCount > 0 ? 'red' : 'red lighten-4'
        }
    },
    methods: {
        playSound(){
            let alert = new Audio(this.sound)
            alert.play()
        },
        getNotification(){
            axios.post('/api/notifications')
            .then(res => {
                this.read = res.data.read
                this.unread = res.data.unread
                this.unreadCount = res.data.unread.length
            })
            .catch(error => Exception.handle(error))
        },
       readIt(notification){
           axios.post('/api/notification/markRead', {id:notification.id})
           .then(res => {
               this.unread.splice(notification,1)
               this.read.push(notification)
               this.unreadCount --
           })
       }
    }
}
</script>

<style>

</style>
