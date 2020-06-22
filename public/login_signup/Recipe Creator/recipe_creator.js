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

const recipeList = document.querySelector("#recipeList");

function recipe(doc) {
    let li = document.createElement('li');

    let userName = document.createElement('i')
    let recipeName = document.createElement('h1');
    recipeName.id = "title";
    let image = document.createElement('img');
    image.id = "image"
    let ingredients = document.createElement('p');
    let recipeContent = document.createElement('p');
    // let fileref = document.createElement('span');
    
    let breakLine = document.createElement('br');

    li.setAttribute('dataId', doc.id);
    userName.textContent = doc.data().userName;
    recipeName.textContent = doc.data().recipeName;
    image.src = doc.data().image;
    ingredients.textContent = doc.data().ingredients;
    recipeContent.textContent = doc.data().recipeContent;
    // fileref.textContent = doc.data().fileref;


    
    li.appendChild(recipeName);
    li.appendChild(breakLine);
    li.appendChild(userName);
    li.appendChild(breakLine);
    li.appendChild(breakLine);
    li.appendChild(image);
    li.appendChild(breakLine);
    li.appendChild(ingredients);
    li.appendChild(breakLine);
    li.appendChild(recipeContent);
    li.appendChild(breakLine);
    li.appendChild(breakLine);
    li.appendChild(breakLine);
    li.appendChild(breakLine);
    li.appendChild(breakLine);
    li.appendChild(breakLine);

    // li.appendChild(fileref);

    recipeList.appendChild(li);
}

const docRef = firestore.collection("User Recipes");
// const docRef = firestore.doc("posts/QB0ShyP1mLLFdoqwu5sh");

function loadRecipes(){
    console.log("Page Loaded....");
    docRef.get().then((snapshot) => {
        snapshot.docs.forEach(doc => {
            recipe(doc);
            console.log(doc.data);
        });
    });
    
}