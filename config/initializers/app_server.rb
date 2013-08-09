def figure_out_app_server
  ["PhusionPassenger", "Unicorn", "Puma", "Thin"].each do |app_server|
    return app_server if Module.const_defined? app_server   
  end
  
  return "unknown"
end

APP_SERVER_IN_USE = figure_out_app_server