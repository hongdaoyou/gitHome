
import subprocess

class Test:
    def fun(self):

        # ret = subprocess.run(['ls', '-l'])
        ret = subprocess.run(['ls', '-l'], capture_output=True ,text=True )
        # ret = subprocess.run(['ls', '-l'], text=True )
        
        # print(ret)
        print(ret.stdout)
        print(ret.stderr)
        print(ret.returncode)
        


Test().fun()
