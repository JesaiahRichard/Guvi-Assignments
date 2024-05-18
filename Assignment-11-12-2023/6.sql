-- 06 Find the number of users who are absent and task is not submitted  between 15 oct-2020 and 31-oct-2020


--Query




db.attendance.aggregate([
  {
    $lookup: {
      from: "topics",
      localField: "topicId",
      foreignField: "topicId",
      as: "topicInfo",
    },
  },
  {
    $lookup: {
      from: "tasks",
      localField: "topicId",
      foreignField: "topicId",
      as: "taskInfo",
    },
  },
  {
    $match: {
      $and: [{ attended: false }, { "taskInfo.submitted": false }],
    },
  },
  {
    $match: {
      $and: [
        {
          $and: [
            { "topicInfo.topicDate": { $gt: new Date("15-oct-2020") } },
            { "topicInfo.topicDate": { $lt: new Date("31-oct-2020") } },
          ],
        },
        {
          $and: [
            { "taskInfo.dueDate": { $gt: new Date("15-oct-2020") } },
            { "taskInfo.dueDate": { $lt: new Date("31-oct-2020") } },
          ],
        },
      ],
    },
  },
  {
    $count: "No_of_students_absent & task not submitted",
  },
]);




--Answer

{
  'No_of_students_absent & task not submitted': 6
}