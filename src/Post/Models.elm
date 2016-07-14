module Post.Models exposing (..)


import Post.Show.Models as ShowModels


import Post.List.Models as ListModels


type alias Post = ShowModels.Post
initialPost = ShowModels.initialPost


type alias Posts = ListModels.Posts