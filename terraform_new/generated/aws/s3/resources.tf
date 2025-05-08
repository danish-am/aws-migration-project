resource "aws_s3_bucket" "tfer--1-terrraform-migration" {
  bucket        = "1-terrraform-migration"
  force_destroy = "false"

  grant {
    id          = "d8bfa83cf3c0de5a2b8919de7ff51ff0d4daf99fba832fcf0c221eff0f808230"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--2-terraform-migration" {
  bucket        = "2-terraform-migration"
  force_destroy = "false"

  grant {
    id          = "d8bfa83cf3c0de5a2b8919de7ff51ff0d4daf99fba832fcf0c221eff0f808230"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--3-terraform-migration" {
  bucket        = "3-terraform-migration"
  force_destroy = "false"

  grant {
    id          = "d8bfa83cf3c0de5a2b8919de7ff51ff0d4daf99fba832fcf0c221eff0f808230"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
