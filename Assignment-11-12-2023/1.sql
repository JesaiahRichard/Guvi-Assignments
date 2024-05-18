-- 01 Find all the topics and tasks which are thought in the month of October

-- Query:::::
db.topics.aggregate([
    {$lookup:{
              from:"tasks",
              localField:"topicId",
              foreignField:"topicId",
              as:"tasksInfo"
  }},
    {$match:{topicDate:{$lt:new Date("2020-11-1"),$gt:new Date("2020-9-30")},"tasksInfo.dueDate":{$lt:new Date("2020-11-1"),$gt:new Date("2020-9-30")}}},
    {$project:{
              _id:0,
              topicId:1,
              topicDate:1,
              topicDate:1,
              "tasksInfo.task":1,
              "tasksInfo.dueDate":1,
              "tasksInfo.submitted":1
  }}
  ])


  --Answer:::::
  {
    topicId: 1,
    topicDate: 2020-10-09T18:30:00.000Z,
    tasksInfo: [
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'RWD',
        dueDate: 2020-10-11T18:30:00.000Z,
        submitted: true
      }
    ]
  }
  {
    topicId: 2,
    topicDate: 2020-10-10T18:30:00.000Z,
    tasksInfo: [
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Bootstrap',
        dueDate: 2020-10-12T18:30:00.000Z,
        submitted: true
      }
    ]
  }
  {
    topicId: 3,
    topicDate: 2020-10-16T18:30:00.000Z,
    tasksInfo: [
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'JS',
        dueDate: 2020-10-18T18:30:00.000Z,
        submitted: true
      }
    ]
  }
  {
    topicId: 4,
    topicDate: 2020-10-17T18:30:00.000Z,
    tasksInfo: [
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'Async Programming',
        dueDate: 2020-10-19T18:30:00.000Z,
        submitted: true
      }
    ]
  }
  {
    topicId: 5,
    topicDate: 2020-10-23T18:30:00.000Z,
    tasksInfo: [
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React',
        dueDate: 2020-10-25T18:30:00.000Z,
        submitted: true
      }
    ]
  }
  {
    topicId: 6,
    topicDate: 2020-10-24T18:30:00.000Z,
    tasksInfo: [
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: false
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      },
      {
        task: 'React-Redux',
        dueDate: 2020-10-26T18:30:00.000Z,
        submitted: true
      }
    ]
  }