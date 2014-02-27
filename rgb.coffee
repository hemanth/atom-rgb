rgb = require("rgb")
plugin = module.exports

plugin.activate = ->
  atom.workspaceView.command "RGB", plugin.rgb

plugin.rgb = ->
  editor = atom.workspace.getActiveEditor()
  return  unless editor
  text = editor.getText()
  rgbed = rgb.replace(text)
  editor.setText rgbed