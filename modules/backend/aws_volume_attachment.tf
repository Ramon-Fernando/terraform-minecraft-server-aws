resource "aws_volume_attachment" "this" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.server_volume.id
  instance_id = aws_instance.minecraft-instance.id
}