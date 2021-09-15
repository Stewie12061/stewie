namespace :project do
  desc "create data service"
  task init: :environment do 
    Project.destroy_all

    Project.create([
      {
      icon: "fas fa-toolbox",
      value: "300",
      text: "Project Done"
    },
    {
      icon: "fas fa-clock",
      value: "1700+",
      text: "Hours Worked"
    },
    {
      icon: "fas fa-trophy",
      value: "37",
      text: "Awards Won"
    }
  ])
  end
end
