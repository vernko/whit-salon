require 'faker'

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
    corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
    velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
    ",
)
end

puts "10 blog posts created"

3.times do |service|
    Service.create!(
        title: "Barbered Cuts",
        body: "This service takes [time] and starts at [price].",
        main_image:  "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/300x200",
    )
end

3.times do |service|
    Service.create!(
        title: "Length Cuts",
        body: "This service takes [time] and starts at [price].",
        main_image:  "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/300x200",
    )
end

3.times do |service|
    Service.create!(
        title: "Children Cuts",
        body: "This service takes [time] and starts at [price].",
        main_image:  "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/300x200",
    )
end

puts "9 services created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Colored",
        subtitle: "Azure",
        body: "This portfolio showcases [technique] for this type of [cut]",
        main_image:  "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/300x150",
    )
end

puts "9 portfolio items created"

9.times do |transformation|
    Transformation.create!(
        title: "Transformation: #{transformation}",
        before_image:  "http://placehold.it/250x200",
        after_image: "http://placehold.it/250x200"
    )
end

puts "9 transformations created"