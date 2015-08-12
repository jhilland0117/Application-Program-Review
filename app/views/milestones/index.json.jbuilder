json.array!(@milestones) do |milestone|
  json.extract! milestone, :name, :deadline
  json.url milestone_url(milestone, format: :json)
end
