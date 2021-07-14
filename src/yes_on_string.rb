def yes_on_string(p, i)
  Module.new.tap do |m|
    m.extend(m)
    method_name = m.class_eval(p)

    if m.send(method_name, i) == 'yes'
      return 'yes'
    else
      return 'no'
    end
  rescue => e
    puts e
    return 'no'
  end
end
