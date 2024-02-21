//resource "from_to" "resourceName" {
//  parameters = "values"
//}

//Terraform destroy deletes the file
resource "local_file" "pet" {
    content = "My favorite pet is ${random_pet.my-pet.id}"
    filename = var.filename
    file_permission = "0700"
    //Dependency if the reference expression isn't used
    //depends_on = [ random_pet.my-pet ]
}

//Outputs a random pet name
resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = var.separator
    length = var.length
}

//Can use terraform output
output "pet-name" {
    value = random_pet.my-pet.id
}