//resource "from_to" "resourceName" {
//  parameters = "values"
//}

//Terraform destroy deletes the file
resource "local_file" "pet" {
    content = "My favorite pet is ${random_pet.my-pet.id}"
    filename = var.filename
    file_permission = "0700"
}

//Outputs a random pet name
resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = var.separator
    length = var.length
}