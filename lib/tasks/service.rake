namespace :service do
    desc "create data service"
    task init: :environment do 
      Service.destroy_all

      Service.create([
        {
          icon: "fas fa-pencil-alt",
          title: "Design",
          description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
        },
        {
          icon: "fas fa-cogs",
          title: "Development",
          description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
        },
        {
          icon: "fas fa-camera-retro",
          title: "Photography",
          description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
        },
        {
          icon: "fas fa-search",
          title: "Seo",
          description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
        }
      ])
    end
end
