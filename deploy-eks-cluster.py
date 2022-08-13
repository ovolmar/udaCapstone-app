#/usr/bin/env python
import subprocess


# Create Cluster.
def launcher():
    subprocess.run(["eksctl", "create", "cluster", "-f", "infrastructure/k8s-cluster.yml" ])

# Deletes Cluster.
def destroyer():
    subprocess.run(["eksctl", "delete", "cluster", "-f", "infrastructure/k8s-cluster.yml" ])


if __name__ == '__main__':
    while True:
        deploy = input("*** SELECT YOUR OPTIONS: ***\n A) Deploy k8s Cluster. \n B) Destroy k8s Cluster. \n C) Enter q to Quit. \n" )
        if deploy == "A" or deploy == "a":
            print ("Deploying Cluster...")
            launcher()
        elif deploy == "B" or deploy ==   "b":
            print("Tear down begins. Please wait. ")
            destroyer()
        elif deploy == "q" or deploy == "Q" or deploy == "c" or deploy == "C":
            print("Bye Felicia!!\n")
            break