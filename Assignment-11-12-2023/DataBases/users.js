// Creating & selecting Database

use("Zen_Class_Programme");

// Creating collections for Zen_Class_Programme

db.createCollection("users");

// Creating Documents for users

db.users.insertMany([
    {
        userId: 1,
        userName: "richard",
        userEmail: "richard@gmail.com",
        mentorId: 1,
    },
    {
        userId: 2,
        userName: "raja",
        userEmail: "raja@gmail.com",
        mentorId: 2,
    },
    {
        userId: 3,
        userName: "jesh",
        userEmail: "jesh@gmail.com",
        mentorId: 3,
    },
    {
        userId: 4,
        userName: "abi",
        userEmail: "abi@gmail.com",
        mentorId: 1,
    },
    {
        userId: 5,
        userName: "surya",
        userEmail: "surya@gmail.com",
        mentorId: 2,
    },
    {
        userId: 6,
        userName: "siva",
        userEmail: "siva@gmail.com",
        mentorId: 3,
    },
    {
        userId: 7,
        userName: "vinoth",
        userEmail: "vinoth@gmail.com",
        mentorId: 1,
    },
    {
        userId: 8,
        userName: "harish",
        userEmail: "harish@gmail.com",
        mentorId: 1,
    },
    {
        userId: 9,
        userName: "barath",
        userEmail: "barath@gmail.com",
        mentorId: 1,
    },
    {
        userId: 10,
        userName: "riyas",
        userEmail: "riyas@gmail.com",
        mentorId: 1,
    },
    {
        userId: 11,
        userName: "kumar",
        userEmail: "kumar@gmail.com",
        mentorId: 1,
    },
    {
        userId: 12,
        userName: "sanji",
        userEmail: "sanji@gmail.com",
        mentorId: 1,
    },
    {
        userId: 13,
        userName: "zoro",
        userEmail: "zoro@gmail.com",
        mentorId: 1,
    },
    {
        userId: 14,
        userName: "senthil",
        userEmail: "senthil@gmail.com",
        mentorId: 1,
    },
    {
        userId: 15,
        userName: "santhosh",
        userEmail: "santhosh@gmail.com",
        mentorId: 1,
    },
    {
        userId: 16,
        userName: "sanjai",
        userEmail: "sanjai@gmail.com",
        mentorId: 1,
    },
    {
        userId: 17,
        userName: "suseel",
        userEmail: "suseel@gmail.com",
        mentorId: 1,
    },
    {
        userId: 18,
        userName: "loki",
        userEmail: "loki@gmail.com",
        mentorId: 1,
    },
    {
        userId: 19,
        userName: "t",
        userEmail: "t@gmail.com",
        mentorId: 1,
    },
    {
        userId: 20,
        userName: "karthick",
        userEmail: "karthick@gmail.com",
        mentorId: 1,
    },
]);