﻿using ALMS.Models;
using ALMS.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALMS.ViewModels.RP01.Service
{
    public class RP01Service : ServiceBase
    {
        private TR01ARepository _Repository;
        public RP01Service()
        {
            _entity = new ALMSEntities();
            _Repository = new TR01ARepository(_entity);
        }

        public List<TR01A> GetMany(SearchViewModel searchViewModel)
        {
            var queryData = _Repository.GetQuery();
            if (!string.IsNullOrWhiteSpace(searchViewModel.Type))
            {
                if (searchViewModel.Type == "A")
                {
                    queryData = queryData.Where(x => x.DA03A_ID==1 || x.DA03A_ID==2);

                }
                else
                {
                    queryData = queryData.Where(x => x.DA03A_ID == 2 || x.DA03A_ID == 3);

                }
            }
            if (searchViewModel.DT_BEG_STR != "")
            {
                queryData = queryData.Where(x => x.TRN_DT.CompareTo(searchViewModel.DT_BEG_STR) >= 0);
            }
            if (searchViewModel.DT_END_STR != "")
            {
                queryData = queryData.Where(x => x.TRN_DT.CompareTo(searchViewModel.DT_END_STR) <= 0);
            }
            return queryData.ToList();
        }
    }
}