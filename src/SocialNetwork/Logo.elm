module SocialNetwork.Logo exposing (..)


import Html
import Svg exposing (..)
import Svg.Attributes exposing (..)


gitHub : Html.Html msg
gitHub =
    svg
      [ enableBackground "new 0 0 512 512"
      , height "24px"
      ,id "Layer_1"
      , version "1.1"
      , viewBox "0 0 512 512"
      , width "24px"
      , xmlSpace "preserve"
      , xmlBase "http://www.w3.org/2000/svg"
      , xlinkHref "http://www.w3.org/1999/xlink"
      ]
      [ g []
          [ Svg.path  [ clipRule "evenodd"
                      , fill "#0D2636"
                      , fillRule "evenodd"
                      , d "M296.133,354.174c49.885-5.891,102.942-24.029,102.942-110.192   c0-24.49-8.624-44.448-22.67-59.869c2.266-5.89,9.515-28.114-2.734-58.947c0,0-18.139-5.898-60.759,22.669   c-18.139-4.983-38.09-8.163-56.682-8.163c-19.053,0-39.011,3.18-56.697,8.163c-43.082-28.567-61.22-22.669-61.22-22.669   c-12.241,30.833-4.983,53.057-2.718,58.947c-14.061,15.42-22.677,35.379-22.677,59.869c0,86.163,53.057,104.301,102.942,110.192   c-6.344,5.452-12.241,15.873-14.507,30.387c-12.702,5.438-45.808,15.873-65.758-18.592c0,0-11.795-21.31-34.012-22.669   c0,0-22.224-0.453-1.813,13.592c0,0,14.96,6.812,24.943,32.653c0,0,13.6,43.089,76.179,29.48v38.543   c0,5.906-4.53,12.702-15.865,10.89C96.139,438.977,32.2,354.626,32.2,255.77c0-123.807,100.216-224.022,224.03-224.022   c123.347,0,224.023,100.216,223.57,224.022c0,98.856-63.946,182.754-152.828,212.688c-11.342,2.266-15.873-4.53-15.873-10.89   V395.45C311.1,374.577,304.288,360.985,296.133,354.174L296.133,354.174z M512,256.23C512,114.73,397.263,0,256.23,0   C114.73,0,0,114.73,0,256.23C0,397.263,114.73,512,256.23,512C397.263,512,512,397.263,512,256.23L512,256.23z"
                      ]
                      [ 
                      ]
          ]
      ]


twitter : Html.Html msg
twitter =
    svg
      [ enableBackground "new 0 0 512 512"
      , height "24px"
      ,id "Layer_1"
      , version "1.1"
      , viewBox "0 0 512 512"
      , width "24px"
      , xmlSpace "preserve"
      , xmlBase "http://www.w3.org/2000/svg"
      , xlinkHref "http://www.w3.org/1999/xlink"
      ]
      [ g []
          [ Svg.path  [ clipRule "evenodd"
                      , fill "#1EBEF0"
                      , fillRule "evenodd"
                      , d "M256.23,512C396.81,512,512,396.81,512,256.23   C512,115.184,396.81,0,256.23,0C115.184,0,0,115.184,0,256.23C0,396.81,115.184,512,256.23,512L256.23,512z"
                      ]
                      []
          , Svg.path  [ clipRule "evenodd"
                      , fill "#FFFFFF"
                      , fillRule "evenodd"
                      , d "M276.635,137.407c-9.077,6.351-15.873,15.42-20.865,25.396   l-2.265,5.898c-1.359,4.077-2.273,8.163-2.726,12.241c-0.453,2.265-0.453,4.085-0.906,5.898v3.625l0.453,5.898l0.906,7.71h-0.453   h-2.719h-1.813c-22.224-0.453-43.987-5.445-63.04-14.061l-11.334-5.437c-2.265-0.914-4.078-2.273-6.351-3.632   c-12.694-7.257-24.028-16.78-34.012-27.208c-6.343-6.804-12.241-14.061-17.232-21.771c-5.438,10.437-8.616,22.677-8.616,35.379   c0,4.531,0.453,9.069,1.359,13.6c0,2.265,0.453,4.085,0.914,5.898c4.078,13.6,11.334,25.849,21.31,34.918l4.992,4.539l-6.351-1.367   c-8.163-2.266-16.326-4.984-24.036-8.164c0.906,16.327,7.257,31.293,17.232,43.089c9.522,11.327,22.224,19.951,36.73,24.028   l-16.779,0.906l-14.054-0.453c10.429,25.403,34.465,43.995,63.033,46.261c-26.302,19.498-58.955,30.388-93.873,30.388   c25.849,15.873,55.33,25.841,87.521,27.653h20.865c99.31-5.438,177.77-87.522,177.77-188.199v-9.522   c3.625-3.171,7.25-6.343,10.89-9.975c8.608-7.71,16.326-16.78,22.67-26.302c-10.437,6.804-22.67,10.429-36.277,10.429h-0.453   h-0.453h0.453c12.232-8.163,21.763-20.404,26.747-34.465c-9.515,4.992-20.404,8.616-31.294,11.796l-1.359,0.453l-8.155,1.812   c-11.795-12.702-28.575-20.865-47.167-20.865h-0.452h-0.906c-4.984,0-9.983,0.453-14.968,1.367   c-7.249,1.812-14.514,4.984-20.404,8.616L276.635,137.407z"
                      ]
                      [ 
                      ]
          ]
      ]


linkedIn : Html.Html msg
linkedIn =
    svg
      [ enableBackground "new 0 0 32 32"
      , height "24px"
      ,id "Layer_1"
      , version "1.1"
      , viewBox "0 0 32 32"
      , width "24px"
      , xmlSpace "preserve"
      , xmlBase "http://www.w3.org/2000/svg"
      , xlinkHref "http://www.w3.org/1999/xlink"
      ]
      [ g []
          [ Svg.path  [ fill "#007BB5"
                      , d "M32,30c0,1.104-0.896,2-2,2H2c-1.104,0-2-0.896-2-2V2c0-1.104,0.896-2,2-2h28c1.104,0,2,0.896,2,2V30z"
                      ]
                      []
          , g         []
                      [ rect      [ fill "#FFFFFF"
                                  , height "14"
                                  , width "4"
                                  , x "7"
                                  , y "11"
                                  ]
                                  []
                      , Svg.path  [ fill "#FFFFFF"
                                  , d "M20.499,11c-2.791,0-3.271,1.018-3.499,2v-2h-4v14h4v-8c0-1.297,0.703-2,2-2c1.266,0,2,0.688,2,2v8h4v-7    C25,14,24.479,11,20.499,11z"
                                  ]
                                  []
                      , circle    [ cx "9"
                                  , cy "8"
                                  , fill "#FFFFFF"
                                  , r "2"
                                  ]
                                  []
                      ]
          , g         [] []
          , g         [] []
          , g         [] []
          , g         [] []
          , g         [] []
          , g         [] []
          ]
      ]


mail : Html.Html msg
mail =
  svg [ enableBackground "new 0 0 512 512"
      ,id "Layer_1"
      , version "1.1"
      , viewBox "0 0 512 512"
      , height "24px"
      , width "24px"
      , xmlSpace "preserve"
      , xmlBase "http://www.w3.org/2000/svg"
      , xlinkHref "http://www.w3.org/1999/xlink"
      ]
      [ g []
          [ Svg.path  [ fill "#E65C4F"
                      , d "M257.1,507.9C119.2,507.9,7.9,395.4,8.5,255.5C9.1,116.9,120.9,4.8,259.6,6.2   c136,1.3,247,112.8,245.9,253.1C504.4,397.1,393.9,507.5,257.1,507.9z M257,25.9C132.9,25.5,29.3,126.6,28.1,254.5   c-1.3,130.3,102.8,232.4,226.4,233.7c125.9,1.3,230.7-100.6,231.3-229.2C486.5,129.4,384.3,25.9,257,25.9z"
                      ]
                      []
          , Svg.path  [ fill "#E65A4D"
                      , d "M388.1,143c13.4-1.4,26,9.3,26.9,22.9c0.2,3.6,0,7.3,0,11c-1.2,0-2.1,0.8-3.1,1.5   c-11,7.9-21.9,15.7-32.9,23.6c-36.7,25.2-73.4,50.3-110,75.6c-3.8,2.6-8.1,4.6-11.1,8.3c-1.7,0.3-2.8-0.8-4-1.7   c-29.6-20.6-59.3-41.3-88.9-61.9c-10.1-7-20.1-14-31-21.5c0,2.7,0,4.5,0,6.3c0,28.6,0,57.3,0,85.9c0,25.3,0.1,50.6,0.2,75.9   c0,0.7-0.1,1.4-0.1,2.1c-16.6,3.2-30.7-4.7-34.4-19.4c-0.5-2.1-0.7-4.3-0.7-6.4c0-58.7,0.1-117.5-0.1-176.2   c-0.1-14.9,13.2-28.1,27.1-26c0.5,0.5,0.9,1,1.4,1.4c42.1,31.2,84.2,62.4,126.2,93.6c2.5,1.9,4,1.6,6.3-0.1   c26.2-19.4,52.5-38.7,78.7-58C355.1,167.7,371.6,155.3,388.1,143z"
                      ]
                      []
          , Svg.path  [ fill "#E6E3D6"
                      , d "M134.1,369c-0.1-25.3-0.1-50.6-0.2-75.9c0-28.6,0-57.3,0-85.9c0-1.8,0-3.5,0-6.3   c10.8,7.5,20.9,14.5,31,21.5c29.6,20.6,59.3,41.3,88.9,61.9c1.2,0.8,2.3,1.9,4,1.7c0.2,2.2,2.2,2.8,3.7,3.8   c34,23.6,68,47,101.9,70.8c4.3,3,9.3,5.2,12.6,9.6c-1,1.3-2.4,1-3.7,1c-78.8,0-157.6-0.1-236.4-0.1c0.7-1,1.4-1.9,2.1-2.9   c2.2-0.7,4.2-1.6,5-4c4.2-0.6,6.7-3.6,9.3-6.5c-3.6,1.5-7,3.1-9.5,6.3c-2.2,0.7-4.2,1.6-5,4C136.6,368.2,135.4,368.6,134.1,369z    M194,329c0.3,0,0.6,0,1,0c1.3-0.7,2.9-1,3-3c0.8,0,1.6-0.2,2-1c0.3-0.3,0.7-0.7,1-1c0.8,0,1.6-0.2,2-1c0.1-0.2,0.3-0.3,0.4-0.5   c-0.2,0.1-0.3,0.3-0.5,0.4c-0.8,0-1.6,0.2-2,1c-0.3,0.3-0.7,0.7-1,1c-0.8,0-1.6,0.2-2,1c-1.4,0-2.4,0.7-3,2   C194.6,328.3,194.3,328.6,194,329c-0.2,0.1-0.4,0.2-0.5,0.4C193.7,329.3,193.9,329.2,194,329z M188,333c0.8,0,1.6-0.2,2-1   c0.8-0.1,1.6-0.2,1.5-1.2c0-0.1-0.2-0.3-0.3-0.3c-1.1-0.1-1.2,0.7-1.3,1.5C189.1,332,188.4,332.1,188,333c-0.4,0.3-0.7,0.6-1.1,0.9   c-0.8,0-1.6,0.2-2,1c-0.3,0.3-0.7,0.7-1,1c-0.8,0-1.6,0.2-2,1c-1.4,0.1-2.4,0.7-3,2c-0.3,0.3-0.6,0.7-1,1c-0.1,0.2-0.3,0.3-0.4,0.5   c0.2-0.1,0.3-0.3,0.5-0.4c0.8,0,1.6-0.2,2-1c1.2-0.1,1.9-0.7,2-2c0.8,0,1.6-0.2,2-1c0.3-0.3,0.7-0.7,1-1c0.8,0,1.6-0.2,2-1   C187.4,333.7,187.7,333.4,188,333z M172,344c-0.8,0.1-1.6,0.2-1.5,1.3c0,0.1,0.2,0.3,0.3,0.3C171.8,345.6,171.9,344.8,172,344   c0.9,0.1,1.6-0.1,2.1-0.9c0.8-0.1,1.6-0.2,1.5-1.3c0-0.1-0.2-0.3-0.3-0.3c-1.1-0.1-1.2,0.7-1.3,1.5C173.1,343,172.4,343.2,172,344z    M158.9,352.9c-1.4,0.1-2.4,0.8-3,2c-0.7,0.2-1.6,0.3-1.5,1.3c0,0.1,0.2,0.3,0.3,0.3c1,0.1,1.2-0.7,1.4-1.5c1.4,0,2.8-0.2,3-2   c0.8,0,1.5-0.2,2-1c1.4-0.1,2.4-0.8,3-2c0.7-0.2,1.6-0.2,1.5-1.3c0-0.1-0.2-0.3-0.3-0.3c-1.1-0.1-1.2,0.7-1.3,1.5   c-1.4,0-2.8,0.1-3,2C160.1,352,159.4,352.2,158.9,352.9z M168.7,347.2c-0.1-0.3-0.1-0.7-0.3-0.8c-0.2-0.1-0.6,0-0.8,0.2   c-0.3,0.4-0.2,0.9,0.4,0.9C168.1,347.6,168.4,347.4,168.7,347.2z"
                      ]
                      []
          , Svg.path  [ fill "#F6F4EC"
                      , d "M388.1,143c-16.5,12.3-33,24.6-49.6,36.9c-26.2,19.4-52.5,38.6-78.7,58c-2.4,1.8-3.8,2-6.3,0.1   c-42-31.3-84.1-62.4-126.2-93.6c-0.5-0.4-0.9-0.9-1.4-1.4c54.6,0,109.2-0.1,163.9-0.1C322.5,143,355.3,143,388.1,143z"
                      ]
                      []
          , Svg.path  [ fill "#B13A30"
                      , d "M379.1,371c0-56.3,0-112.6-0.1-168.9c11-7.9,21.9-15.7,32.9-23.6c0.9-0.7,1.8-1.5,3.1-1.5   c0.1,18.5,0.2,36.9,0.2,55.4c0,36.1,0,72.2,0,108.3c0,2.5,0,5-0.1,7.5c-0.6,12.4-6.6,19.4-18.6,21.7   C390.7,371,384.9,371.7,379.1,371z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M138.1,368.1c-0.7,1-1.4,1.9-2.1,2.9c-0.7,0-1.3,0-2,0.1c0-0.7,0.1-1.4,0.1-2.1c1.3-0.4,2.5-0.7,3.8-1.1   C137.9,367.9,138.1,368.1,138.1,368.1z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M142.9,363.9c2.5-3.1,5.9-4.8,9.5-6.3c-2.6,2.9-5.1,5.9-9.3,6.5L142.9,363.9z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M143.1,364.1c-0.9,2.4-2.9,3.3-5,4c0,0-0.2-0.2-0.2-0.2c0.8-2.4,2.9-3.3,5-4   C142.9,363.9,143.1,364.1,143.1,364.1z"
                      ]
                      []
          , Svg.path  [ fill "#C5C3B9"
                      , d "M198,326c-0.1,1.9-1.8,2.2-3,3c0-0.3,0-0.7,0-1C195.6,326.7,196.6,326,198,326C198,326,198,326,198,326z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M178.9,339c0.6-1.3,1.6-2,3-2l0.1,0.1c0,1.3-0.7,1.9-2,2C179.7,339,179.3,339,178.9,339z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M164.1,350.1c-0.6,1.3-1.6,1.9-3,2c0,0-0.1-0.1-0.1-0.1c0.2-1.9,1.6-2,3-2L164.1,350.1z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M155.9,354.9c0.6-1.2,1.6-1.9,3-2l0.1,0.2c-0.2,1.9-1.5,2-3,2L155.9,354.9z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M173.9,342.9c0.1-0.8,0.3-1.6,1.3-1.5c0.1,0,0.3,0.2,0.3,0.3c0,1.1-0.8,1.1-1.5,1.3L173.9,342.9z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M172,344.1c-0.1,0.8-0.2,1.6-1.3,1.5c-0.1,0-0.3-0.2-0.3-0.3C170.4,344.1,171.2,344.1,172,344.1   C172,344,172,344.1,172,344.1z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M168.7,347.2c-0.2,0.1-0.5,0.4-0.7,0.4c-0.5-0.1-0.7-0.5-0.4-0.9c0.1-0.2,0.6-0.3,0.8-0.2   C168.5,346.6,168.6,346.9,168.7,347.2z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M163.9,349.9c0.1-0.8,0.3-1.5,1.3-1.5c0.1,0,0.3,0.2,0.3,0.3c0.1,1.1-0.8,1.1-1.5,1.3   C164.1,350.1,163.9,349.9,163.9,349.9z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M156.1,355.1c-0.2,0.8-0.3,1.5-1.4,1.5c-0.1,0-0.3-0.2-0.3-0.3c-0.1-1.1,0.8-1.1,1.5-1.3   C155.9,354.9,156.1,355.1,156.1,355.1z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M190,332c0.1-0.8,0.2-1.6,1.3-1.5c0.1,0,0.3,0.2,0.3,0.3C191.6,331.9,190.8,331.9,190,332L190,332z"
                      ]
                      []
          , Svg.path  [ fill "#C5C3B9"
                      , d "M201,324c0.4-0.8,1.2-1,2-1l0,0C202.6,323.8,201.9,324,201,324L201,324z"
                      ]
                      []
          , Svg.path  [ fill "#C5C3B9"
                      , d "M200,325c-0.4,0.8-1.2,1-2,1c0,0-0.1-0.1-0.1-0.1C198.4,325.2,199.1,325,200,325C200,325,200,325,200,325z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M185,335c0.4-0.8,1.2-1,2-1c0,0,0.1,0.1,0.1,0.1C186.6,334.8,185.9,335,185,335C185,335.1,185,335,185,335z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M182,337c0.4-0.8,1.2-1,2-1l0.1,0.1C183.6,336.9,182.9,337,182,337C182,337,182,337,182,337z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M178.9,339c0.4,0,0.8,0,1.1,0c-0.5,0.8-1.2,1-2,1c0,0-0.1-0.1-0.1-0.1C178.3,339.6,178.6,339.3,178.9,339z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M174,343c-0.4,0.8-1.2,1-2,1c0,0-0.1-0.1-0.1-0.1c0.4-0.8,1.2-1,2-1C173.9,342.9,174,343,174,343z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M158.9,352.9c0.4-0.8,1.2-1,2-1c0,0,0.1,0.1,0.1,0.1c-0.4,0.8-1.2,1-2,1   C159.1,353.1,158.9,352.9,158.9,352.9z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M190,332c-0.4,0.8-1.1,1-2,1L188,333C188.4,332.1,189.1,332,190,332C190,332,190,332,190,332z"
                      ]
                      []
          , Svg.path  [ fill "#C5C3B9"
                      , d "M203,323c0.2-0.1,0.3-0.3,0.5-0.4C203.3,322.7,203.2,322.9,203,323C203,323,203,323,203,323z"
                      ]
                      []
          , Svg.path  [ fill "#C5C3B9"
                      , d "M201,324c-0.3,0.3-0.7,0.7-1,1c0,0-0.1-0.1-0.1-0.1C200.3,324.6,200.6,324.3,201,324   C201,324,201,324,201,324z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M195,328c0,0.3,0,0.7,0,1c-0.3,0-0.6,0.1-1,0L194,329C194.3,328.6,194.6,328.3,195,328z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M194,329c-0.2,0.1-0.3,0.3-0.5,0.4C193.7,329.3,193.8,329.1,194,329C194,329,194,329,194,329z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M184,336c0.3-0.3,0.7-0.7,1-1c0,0,0.1,0.1,0.1,0.1C184.7,335.4,184.4,335.7,184,336   C184,336,184,336,184,336z"
                      ]
                      []
          , Svg.path  [ fill "#C1C0B6"
                      , d "M178,340c-0.2,0.1-0.3,0.3-0.5,0.4C177.7,340.3,177.8,340.1,178,340C178,340,178,340,178,340z"
                      ]
                      []
          , Svg.path  [ fill "#C3C2B8"
                      , d "M188,333c-0.3,0.3-0.7,0.7-1,1c0,0-0.1-0.1-0.1-0.1C187.3,333.6,187.6,333.3,188,333   C188,333,188,333,188,333z"
                      ]
                      []
          ]
      ]