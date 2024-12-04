
#------------------------ Create Load Balancer (ALB) ----------------------#

resource "aws_lb" "app" {
  name                       = "ALB-kota"
  internal                   = false # كدا يعني هأكسس الابلكيشن من برا مش جوا
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.HTTP-SG.id]
  subnets                    = [aws_subnet.priv_subnet1.id, aws_subnet.priv_subnet2.id] # انا حاطط اللود في البرايفت
  enable_deletion_protection = false
  tags = {
  Name = "Cloudkode-alb" }
}
#--------------------------- Create Targe "algoritm" Group --------------------------#

resource "aws_lb_target_group" "app" {
  name     = "TG-Cloudkode"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.myvpc.id
  health_check {                    # بيعمل شيك هل الانستانس قايمه ولا لا لو لا بيخرجها برا تبع الاوتو سكيلينج جروب
    protocol = "HTTP"
    path     = "/"
  }
  tags = {
    Name = "TG-cloudkode"
  }
}
#------------------------- Create Listener for ALB ----------------------------------#

resource "aws_lb_listener" "test" {
  load_balancer_arn = aws_lb.app.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app.arn
  }
}