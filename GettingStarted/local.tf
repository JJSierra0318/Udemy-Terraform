//resource "from_to" "resourceName" {
//  parameters = "values"
//}
resource "local_file" "pet" {
    content = "We love pets!"
    filename = "./pets.txt"
}