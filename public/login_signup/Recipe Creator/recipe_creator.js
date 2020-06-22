var firebaseConfig = {
    apiKey: "AIzaSyCnLYKaaIWmy6cYCYGamO5AcCL8oUKYRMs",
    authDomain: "fooduko-64df6.firebaseapp.com",
    databaseURL: "https://fooduko-64df6.firebaseio.com",
    projectId: "fooduko-64df6",
    storageBucket: "fooduko-64df6.appspot.com",
    messagingSenderId: "594668776094",
    appId: "1:594668776094:web:e9e28c184fe7b4f38aa98f",
    measurementId: "G-KSL439B0XM"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

const firestore = firebase.firestore();
const  docRef = firestore.doc("posts");

// var ref = .ref('post');
// ref.on('value' , gotData , errData);

// function gotData(data){
//     console.log(data);
// }

// function errData(err){
//     console.log("Error !"); 
//     console.log(err); 
// }

function loadRecipes(){
    console.log("Page Loaded....");
    

}