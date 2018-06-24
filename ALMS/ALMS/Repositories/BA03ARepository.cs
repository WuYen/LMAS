﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ALMS.Models;

namespace ALMS.Repositories
{
    public class BA03ARepository : RepositoryBase<BA03A, int>
    {
        public BA03ARepository(ALMSEntities entity) : base(entity)
        {
        }
    }
}