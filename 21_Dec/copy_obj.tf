data "template_file" "script" {
  template = "${file("/home/ubuntu/21_dec_tf_task/objects.sh")}"
}

resource "null_resource" "copy_objects" {

 provisioner "local-exec" {

    command = "${data.template_file.script.rendered}"
    interpreter = ["/bin/bash", "-c"]

}
}

