hyper = { "cmd", "alt", "shift", "ctrl" }

-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "padclear")

-- Trigger existing hyper key shortcuts

hyperBindings = {'a', 'b', 'c', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ';', ',', '.', '/', '\\', '\'', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9', 'f10', 'f11', 'f12', 'f13', 'f14', 'f15', 'pad*', 'pad+', 'pad/', 'pad-', 'pad=', 'pad0', 'pad1', 'pad2', 'pad3', 'pad4', 'pad5', 'pad6', 'pad7', 'pad8', 'pad9', 'padclear', 'padenter', 'return', 'tab', 'space', 'delete', 'escape', 'help', 'home', 'pageup', 'forwarddelete', 'end', 'pagedown', 'left', 'right', 'down', 'up'}

for i,key in ipairs(hyperBindings) do
  k:bind({}, key, nil, function() hs.eventtap.keyStroke(hyper, key)
    k.triggered = true
  end)
end

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'F19')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
