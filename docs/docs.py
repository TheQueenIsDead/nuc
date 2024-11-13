
from diagrams import Cluster, Diagram

from diagrams.k8s.controlplane import API
from diagrams.onprem.compute import Server
from diagrams.onprem.client import User

from diagrams.onprem.container import Lxc, Docker

from diagrams.generic.network import Firewall
from diagrams.onprem.network import Internet

from diagrams.onprem.iac import Ansible
with Diagram("Topology", show=False):

    admin = User()
    ansible = Ansible()

    with Cluster("nuc"):
        nuc = Server()


        with Cluster("LXD Containers"):
            Docker()

        with Cluster("LXD VMs"):
            Docker()
            k8sApiServer = API()

    admin >> ansible >> nuc



    # dns = Route53("dns")
    # lb = ELB("lb")
    #
    # with Cluster("Services"):
    #     svc_group = [ECS("web1"),
    #                  ECS("web2"),
    #                  ECS("web3")]
    #
    # with Cluster("DB Cluster"):
    #     db_primary = RDS("userdb")
    #     db_primary - [RDS("userdb ro")]
    #
    # memcached = ElastiCache("memcached")
    #
    # dns >> lb >> svc_group
    # svc_group >> db_primary
    # svc_group >> memcached