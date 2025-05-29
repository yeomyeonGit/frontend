import axios from "axios" ;

const api = axios.create( {
    baseURL : "http://ec2-54-180-86-206.ap-northeast-2.compute.amazonaws.com:8808",
    withCredentials : true
})

export default api ;