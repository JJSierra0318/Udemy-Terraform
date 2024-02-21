//resource "from_to" "resourceName" {
//  parameters = "values"
//}

//Terraform destroy deletes the file
resource "local_file" "pet" {
    content = var.file-content["statement2"]
    filename = var.filename
    file_permission = "0700"
}

//Outputs a random pet name
resource "random_pet" "my-pet" {
    prefix = var.prefix[0]
    separator = var.separator
    length = var.length
}