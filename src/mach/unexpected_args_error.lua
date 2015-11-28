local call_status_message = require 'mach.call_status_message'

return function(name, args, completed_calls, incomplete_calls, level)
  local arg_strings = {}
  for _, arg in ipairs(args) do
    table.insert(arg_strings, tostring(arg))
  end

  local error_message =
    'unexpected arguments (' .. table.concat(arg_strings) .. ') provided to function ' .. name ..
    call_status_message(completed_calls, incomplete_calls)

  error(error_message, level + 1)
end
