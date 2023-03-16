module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0ed5e6c5d3c05bd90"

  private_subnets = ["subnet-004a907e71baa21d9", "subnet-0723cc9eb4fe22c6f"]
  public_subnets  = ["subnet-0c849bb89c0b118d5", "subnet-0c1d467cb0f864368"]
}