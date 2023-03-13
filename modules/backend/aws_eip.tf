resource "aws_eip" "minecraft-eip" {
  instance = aws_instance.minecraft-instance.id
  vpc      = true
}