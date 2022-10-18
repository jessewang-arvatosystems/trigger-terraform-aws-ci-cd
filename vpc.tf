resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Creator = "terraform",
    Id      = "terraform vpc",
    Name    = "terraform vpc",
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Creator = "terraform",
    Id      = "terraform subnet",
    Name    = "terraform subnet",
  }
}
