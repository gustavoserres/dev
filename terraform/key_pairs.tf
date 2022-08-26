resource "aws_key_pair" "kp-terraform-aws-london" {
    provider = aws.eu-west-2
    key_name   = "terraform-aws"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5tr0u0zDoo0Ax1/A9bCGyj0GSGIVaGN1MM1pBZie+pgGASucrHt+uRFhbI+lhjg87NL5h9kiCXHu7IrvMrWbhulwM6lguoW2YyOUpaKDK2hEtNElzJXXd26poilN3HD8Yie28cyS5hTTaM5bDKXylr50uTmxoyEtoShpA51vCluX82f2NmEm5RbPJjPiTF2PcY9SEE+GcZ5zNC7vRSPqT8NjC9wbt1qJ3roaRO3ueoqnMMGMQhuFYfScPExYsrrDwkF+4n2PV4DzRwMR0Shfy2G6WCHXTGWSq+9u0FxALAt+zLxjKssahX0h6DaBppWEP86BMLRVbQUkTZ/rN3CEJHsPzlx/+1zKiz3rjADe9OPNIFG2g1VQSLPEXTYPhy7hgK7LDZTNv9YX9YHL3p5fbEEjeGodyqdHJojGFv9hzIdw/FFdToKEtAoBOyWuxng062Ivk1K7aHd2Pc8H3HgMlubA9ScIjwjJaaXw1J2lSz9l8E0fLAQcLxX50erAzeBc= gustavo@ACER-GUSTAVO"
}
resource "aws_key_pair" "kp-terraform-aws-paris" {
    provider = aws.eu-west-3
    key_name   = "terraform-aws"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5tr0u0zDoo0Ax1/A9bCGyj0GSGIVaGN1MM1pBZie+pgGASucrHt+uRFhbI+lhjg87NL5h9kiCXHu7IrvMrWbhulwM6lguoW2YyOUpaKDK2hEtNElzJXXd26poilN3HD8Yie28cyS5hTTaM5bDKXylr50uTmxoyEtoShpA51vCluX82f2NmEm5RbPJjPiTF2PcY9SEE+GcZ5zNC7vRSPqT8NjC9wbt1qJ3roaRO3ueoqnMMGMQhuFYfScPExYsrrDwkF+4n2PV4DzRwMR0Shfy2G6WCHXTGWSq+9u0FxALAt+zLxjKssahX0h6DaBppWEP86BMLRVbQUkTZ/rN3CEJHsPzlx/+1zKiz3rjADe9OPNIFG2g1VQSLPEXTYPhy7hgK7LDZTNv9YX9YHL3p5fbEEjeGodyqdHJojGFv9hzIdw/FFdToKEtAoBOyWuxng062Ivk1K7aHd2Pc8H3HgMlubA9ScIjwjJaaXw1J2lSz9l8E0fLAQcLxX50erAzeBc= gustavo@ACER-GUSTAVO"
}