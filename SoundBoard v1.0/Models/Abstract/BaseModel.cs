﻿using System.ComponentModel.DataAnnotations;

namespace Models.Abstract
{
    public abstract class BaseModel : IBaseModel
    {
        public int Id { get; set; }
    }
}
