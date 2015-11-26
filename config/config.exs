use Mix.Config


if File.exists?("#{Mix.env}_private.exs") do
  import_config "#{Mix.env}_private.exs"
end
