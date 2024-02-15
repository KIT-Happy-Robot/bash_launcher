import os
import subprocess

folders = [f for f in os.listdir('.') if os.path.isdir(f)]
skipped_folders = []

for folder in folders:
    # 書くフォルダーを確認していく。
    os.chdir(folder)

    if os.path.exists('.git'):
        print("現在操作中のフォルダー: ",folder)
        current_branch = subprocess.check_output(['git', 'rev-parse', '--abbrev-ref', 'HEAD']).decode('utf-8').strip()

        # ブランチがmasterでない場合はスキップする
        if current_branch != 'master' or subprocess.call(['git','rev-parse','--abbrev-ref','HEAD']):
            print(f"警告: {folder} はブランチ{current_branch}であり、masterブランチではありません。master情報を取得する処理をスキップします。")
            skipped_folders.append(folder)
        else:
            subprocess.call(['git', 'fetch','origin','master'])
            subprocess.call(['git', 'pull','origin','master'])
        
    os.chdir('..')

print("以下のフォルダーはmasterブランチではないため、スキップしました。")
for folder in skipped_folders:
    print(folder)


