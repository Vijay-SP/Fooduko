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
const createForm = document.querySelector("#createForm");
const progressBar = document.querySelector("#progressBar");
const progressHandler = document.querySelector("#progressHandler");
const submit = document.querySelector("#submitRecipe");

if (createForm != null) {
    let d;
    createForm.addEventListener("submit", async (e) => {
        e.preventDefault();
        if (document.getElementById("userName").value != ""  && 
            document.getElementById("email").value != "" &&
            document.getElementById("phoneNo").value != "" &&
            document.getElementById("recipeName").value != "" &&
            document.getElementById("ingredients").value != "" &&
            document.getElementById("recipeContent").value != "" &&
            document.getElementById("image").files[0] != "") {

            let userName = document.getElementById("userName").value;
            let email = document.getElementById("email").value;
            let phoneNo = document.getElementById("phoneNo").value;
            let recipeName = document.getElementById("recipeName").value;
            let ingredients = document.getElementById("ingredients").value;
            let recipeContent = document.getElementById("recipeContent").value;
            let image = document.getElementById("image").files[0];

            console.log(image);

            const storageRef = firebase.storage().ref(); // Reference to the firebase storage bucket where files would be stored
            const storageChild = storageRef.child(image.name);

            console.log("Uploading file....");

            const postImage = storageChild.put(image);

            await new Promise ((resolve) => {
                postImage.on("state_changed", (snapshot) => {

                    let progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                    console.log(Math.trunc(progress));

                    if (progressHandler != null) {
                        progressHandler.style.display = true;
                    }

                    if (submit != null) {
                        submit.disabled = true;
                    }

                    if (progressBar != null) {
                        progressBar.value = progress;
                    }

                }, (error) => { console.log(error); },

                    async () => {

                        const downloadURL = await storageChild.getDownloadURL();
                        d = downloadURL;
                        console.log(d);
                        resolve();
                    });
            });

            const fileRef = await firebase.storage().refFromURL(d);
            let recipe = {
                userName: userName,
                email: email,
                phoneNo:phoneNo,
                recipeName: recipeName,
                ingredients:ingredients,
                recipeContent:recipeContent,
                image: d,
                fileref: fileRef.location.path, //image.jpg
            }

            await firebase.firestore().collection("User Recipes").doc(recipeName+"_"+userName).set(recipe);

            // alert("Recipe Added");

            if (submit != null) {
                window.location.replace("recipe.html");
                submit.disabled = false;
            }

        }
        else {
            console.log("Fill all the fields");
        }
    });
}

// const recipeList = document.querySelector("#recipeList");

// function recipe(doc) {
//     let li = document.createElement('li');
//     let content = document.createElement('span');
//     let fileref = document.createElement('span');
//     let image = document.createElement('img');
//     let title = document.createElement('h1');
//     title.id = "title";
//     let breakLine = document.createElement('br');

//     li.setAttribute('dataId', doc.id);
//     content.textContent = doc.data().content;
//     fileref.textContent = doc.data().fileref;
//     image.src = doc.data().image;
//     title.textContent = doc.data().title;
    
//     li.appendChild(title);
//     li.appendChild(breakLine);
//     li.appendChild(content);
//     li.appendChild(breakLine);

//     // li.appendChild(fileref);
//     li.appendChild(image);

//     recipeList.appendChild(li);
// }

// const docRef = firestore.collection("posts");
// // const docRef = firestore.doc("posts/QB0ShyP1mLLFdoqwu5sh");
// docRef.get().then((snapshot) => {
//     snapshot.docs.forEach(doc => {
//         recipe(doc);
//         console.log(doc.data);
//     });
// });

// console.log(docRef);
// const loadButton = document.querySelector("#load");
// const postName = document.querySelector("#postName");
// const imageRecipe = document.querySelector("#imageRecipe");
// loadButton.addEventListener("click", function () {
//     docRef.get().then(function (doc){
//         if(doc && doc.exists){
//             const myData = doc.data();
//             postName.innerHTML = myData.title;
//             console.log("Image url:" + myData.image);
//             imageRecipe.src = myData.image;
//         }
//     }).catch(function (e){
//         console.log("ERROR !!!!!!!!!!!!!!" + e);
//     })
// });

// getRealTimeUpdates = function(){
//     docRef.onSnapshot(function (doc){
//         if(doc && doc.exists){
//             const myData = doc.data();
//             postName.innerHTML = myData.title;
//             imageRecipe.src = myData.image;
//         }
//     });
// }

// getRealTimeUpdates();