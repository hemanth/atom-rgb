rgb = require("rgb")
plugin = module.exports

plugin.activate = ->
  atom.commands.add "atom-text-editor", "RGB", plugin.rgb

plugin.rgb = ->
  editor = atom.workspace.getActiveTextEditor()
  return  unless editor
  text = editor.getText()
  rgbed = rgb.replace(text)
  editor.setText rgbed
