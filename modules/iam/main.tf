
# resource "aws_iam_user" "ex1" {
#      count = 5
#      name = "user-${count.index + 1}"
# }

# resource "aws_iam_user" "ex2" {
#   for_each = toset(["sam","tom","tim"])
#   name = each.value
# }

resource "aws_iam_user" "ex3" {
  name = var.qwerty
  
}
      
    
