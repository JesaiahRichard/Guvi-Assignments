// Creating & selecting Database

use("Zen_Class_Programme");

// Creating collections for Zen_Class_Programme

db.createCollection("mentors");

// Creating Documents for mentors

db.mentors.insertMany([
    {
        mentorId: 1,
        mentorName: "sangetha",
        mentorEmail: "sangetha@gmail.com",
    },
    {
        mentorId: 2,
        mentorName: "vivek",
        mentorEmail: "vivek@gmail.com",
    },
    {
        mentorId: 3,
        mentorName: "shahid",
        mentorEmail: "shahid@gmail.com",
    },
    {
        mentorId: 4,
        mentorName: "rahul",
        mentorEmail: "rahul@gmail.com",
    },
]);