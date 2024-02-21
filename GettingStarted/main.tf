//resource "from_to" "resourceName" {
//  parameters = "values"
//}

//Terraform destroy deletes the file
resource "local_file" "pet" {
    content = "We love pets!"
    filename = "./pets.txt"
    file_permission = "0700"
}

//Outputs a random pet name
resource "random_pet" "my-pet" {
    prefix = "Mrs"
    separator = "."
    length = "1"
}