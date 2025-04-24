module "eks" {

  #import the module name
    source = "terraform-aws-modules/eks/aws"

    #cluster info (control plane)
    cluster_name    = local.name
    cluster_endpoint_public_access = true

    cluster_addons ={
        vpc-cni ={
          most-recent = true
        }
        kube-proxy = {
          most-recent = true
        }
        coredns = {
          most_recent = true
        }

      }


    vpc_id = module.vpc.vpc_id
    subnet_ids = module.vpc.private_subnets

    # control plane network
    control_plane_subnet_ids = module.vpc.intra_subnets

    # managing nodes in the clusters 
    eks_managed_node_group_defaults = {

    instance_types = ["t2.micro"]
    attach_cluster_primary_security_group = true
  }
    eks_managed_node_groups = {
    ssk-cluster-ng = {
      instance_types = ["t2.micro"]

      min_size     = 2
      max_size     = 3
      desired_size = 2

      capacity_type = "SPOT"
    }
  }


    tags = {
    Environment = local.env
    Terraform   = "true"
  }
  
}
