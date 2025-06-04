const vscode = require('vscode')

  console.log('1111');


  exports.activate = function(context) {
      console.log("aaa myExtension activated!"); // 检查控制台是否输出

    // 开启了
    vscode.window.showInformationMessage('hello world')

      // 执行命令
      let disposable_Run = vscode.commands.registerCommand('myExtension.runCmd', function () {
          // vscode.window.showInformationMessage('Hello, hdy!');
      
          const editor = vscode.window.activeTextEditor;
          if (!editor) {
              vscode.window.showErrorMessage('没有活动的文本编辑器！');
              return;
          }

          // 获取当前光标位置
          const position = editor.selection.active;
          // 获取当前行的文本范围
          const lineRange = editor.document.lineAt(position.line).range;
          // 提取当前行文本
          const lineText = editor.document.getText(lineRange);

          // 显示结果
          // vscode.window.showInformationMessage(`当前行内容: ${lineText}`);

          rv = require('child_process').execSync(lineText )
        
          // vscode.window.showInformationMessage(`当前行内容: ${rv}`);

          editor.edit((editBuilder) => {
              editBuilder.replace(lineRange, rv.toString());
          }).then(success => {
              if (success) {
                  // 移动光标到新内容的末尾
                  const newPosition = new vscode.Position(position.line, 3);
                  editor.selection = new vscode.Selection(newPosition, newPosition);
              }
          });

          // setTimeout(()=>{
          //     vscode.commands.executeCommand('workbench.action.files.revert');
          // }, 10);

        });
      context.subscriptions.push(disposable_Run);


      // 获取,当前的命令
      let disposable_getCmd = vscode.commands.registerCommand('myExtension.getCmd', function () {
          // vscode.window.showInformationMessage('Hello, hdy!');
      
          const editor = vscode.window.activeTextEditor;
          if (!editor) {
              vscode.window.showErrorMessage('没有活动的文本编辑器！');
              return;
          }

          // 获取当前光标位置
          const position = editor.selection.active;
          // 获取当前行的文本范围
          const lineRange = editor.document.lineAt(position.line).range;
          // 提取当前行文本
          const lineText = editor.document.getText(lineRange);

          // 显示结果
          // vscode.window.showInformationMessage(`当前行内容: ${lineText}`);

          // rv = require('child_process').execSync(lineText )
          rv = require('child_process').execSync('bin_cmd_ls_path.sh ' + lineText + "| awk -F'/' '{ print $NF }' " )
        
          vscode.window.showInformationMessage(`当前行内容: ${rv}`);

          editor.edit((editBuilder) => {
              editBuilder.replace(lineRange, rv.toString());
          }).then(success => {
              if (success) {
                  // 移动光标到新内容的末尾
                  const newPosition = new vscode.Position(position.line, 3);
                  editor.selection = new vscode.Selection(newPosition, newPosition);
              }
          });

          // setTimeout(()=>{
          //     vscode.commands.executeCommand('workbench.action.files.revert');
          // }, 10);

        });
      context.subscriptions.push(disposable_getCmd);

      
    // 测试：直接执行命令
    // setTimeout(() => {
    //     vscode.commands.executeCommand('myExtension.runCmd');
    // }, 3000);
  }