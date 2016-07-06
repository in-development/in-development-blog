module Posts.Models exposing (..)


import Posts.Show.Models as ShowModels


import Posts.List.Models as ListModels


type alias Post = ShowModels.Post
initialPost = ShowModels.initialPost


type alias Posts = ListModels.Posts