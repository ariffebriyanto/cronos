/*
 * created by arif
 * 
 * 
 * 
 */
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Model.DTO.OneStopRecruitmentDTO;
using Model.Subdomains.EmailSubdomain;
using Model.Subdomains.MasterCandidateSubdomain;
using Repository.Repositories.OneStopRecruitmentRepository;
using Service.Helpers.EmailHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;


namespace Service.Modules
{
    public class CandidateMailJob : CronJobService
    {
        private readonly ILogger<CandidateMailJob> _logger;
        private readonly IServiceProvider _serviceProvider;
        private readonly IMasterScheduleRepository _masterScheduleRepository;
        private readonly IPeriodRepository _periodRepository;
        private readonly ICandidateRepository _candidateRepository;
        private readonly ITransactionScheduleRepository _transactionScheduleRepository;
        private readonly IUserRepository _userRepository;
        private readonly IAssignmentRepository _assignmentRepository;
        private readonly IEmailHelper _emailHelper;
        private readonly ISubmissionRepository _submissionRepository;

        public CandidateMailJob(IScheduleConfig<CandidateMailJob> config, ILogger<CandidateMailJob> logger, IServiceProvider serviceProvider)
            : base(config.CronExpression, config.TimeZoneInfo)
        {
            _logger = logger;
            _serviceProvider = serviceProvider;
            _masterScheduleRepository = serviceProvider.GetRequiredService<IMasterScheduleRepository>();
            _periodRepository = serviceProvider.GetRequiredService<IPeriodRepository>();
            _candidateRepository = serviceProvider.GetRequiredService<ICandidateRepository>();
            _transactionScheduleRepository = serviceProvider.GetRequiredService<ITransactionScheduleRepository>();
            _userRepository = serviceProvider.GetRequiredService<IUserRepository>();
            _assignmentRepository = serviceProvider.GetRequiredService<IAssignmentRepository>();
            _emailHelper = serviceProvider.GetRequiredService<IEmailHelper>();
            _submissionRepository = serviceProvider.GetRequiredService<ISubmissionRepository>();
        }

        public override Task StartAsync(CancellationToken cancellationToken)
        {
            _logger.LogInformation("ScheduleEmailJob starts.");
            return base.StartAsync(cancellationToken);
        }

        public override async Task DoWork(CancellationToken cancellationToken)
        {

            //  var currentDate = DateTime.Now.Date;
            var currentDate = new DateTime(2022,11,05);

            _logger.LogInformation("{now} ScheduleEmailJob is working.", currentDate.ToString("T"));
            #region 7  hari todo

           
            /* Scheduler for MsSchedule with Active Period (7 days) */
            var period = _periodRepository.GetActivePeriod();
            var scheduleDTOs = _masterScheduleRepository.GetScheduleByPeriod(period.IDPeriod)
                .Where(i => i.Date.Date == currentDate.AddDays(7))
                .Select(i => new { i.IDSchedule, i.IDPeriod, i.IDStage, i.IDSubStage, i.IDPosition, i.Date })
                .Distinct()
                .ToList();
            
            foreach (var item in scheduleDTOs)
            {
                /* Checking Schedule (Start of Group Schedule?) */
                var startGroupScheduleDate = _masterScheduleRepository.GetScheduleByPeriodStageSubStage(item.IDPeriod, item.IDStage, item.IDSubStage)
                    .OrderBy(i => i.ScheduleDate)
                    .Select(i => i.ScheduleDate.Date)
                    .FirstOrDefault();
                if (item.Date.Date != startGroupScheduleDate.Date)
                    continue;

                /* Get Candidates */
                var candidates = new List<CandidateDTO>();
                var idPositions = item.IDPosition.Split(';').Where(i=>!string.IsNullOrEmpty(i)).ToArray();
                foreach (var position in idPositions)
                    candidates.AddRange(_candidateRepository.GetCandidateByPeriod(item.IDPeriod).Where(i=>i.IDPosition==position).ToList());

                var newCandidates = candidates.Select(i => new { i.NIM, i.Email }).Distinct().ToList();
                var userCandidates = _userRepository.GetUserCandidateList(newCandidates.Select(i => i.NIM).ToList(), 2).ToList();

                /* Get Unenrolled Candidates */
                var trxSchedules = _transactionScheduleRepository.GetByScheduleAndUsers(item.IDSchedule, userCandidates.Select(i => i.IDUser).ToList());
                var unenrolledCandidates = userCandidates.Where(i => !trxSchedules.Select(j => j.IDUser).Contains(i.IDUser)).ToList();

                _emailHelper.Send(new Email
                {
                    Recipients = unenrolledCandidates.Select(i => i.Email).Distinct().ToList(),
                    Subject = "Testing",
                    Body = "This email is sent for testing purposes. If you receive this email, please kindly ignore this. Sorry for the inconvenience. Thank you.",
                    IsBodyHtml = true
                });
            }
            #endregion
            #region 1 hari todo

           
            /* Scheduler for MsSchedule with Active Period (1 days) */
            scheduleDTOs = _masterScheduleRepository.GetScheduleByPeriod(period.IDPeriod)
                .Where(i => i.Date.Date == currentDate.AddDays(1))
                //.OrderBy(x => x.Date).ThenBy(x => x.StartTime)
                .Select(i => new { i.IDSchedule, i.IDPeriod, i.IDStage, i.IDSubStage, i.IDPosition, i.Date })
                .Distinct().ToList();

            foreach (var item in scheduleDTOs)
            {
                /* Checking Schedule (End of Group Schedule?) */
                var endGroupScheduleDate = _masterScheduleRepository.GetScheduleByPeriodStageSubStage(item.IDPeriod, item.IDStage, item.IDSubStage)
                    .OrderByDescending(i => i.ScheduleDate)
                    .Select(i => i.ScheduleDate.Date)
                    .FirstOrDefault();
                if (item.Date.Date != endGroupScheduleDate.Date)
                    continue;

                /* Get Candidates */
                var candidates = new List<CandidateDTO>();
                var idPositions = item.IDPosition.Split(';').Where(i => !string.IsNullOrEmpty(i)).ToArray();
                foreach (var position in idPositions)
                    candidates.AddRange(_candidateRepository.GetCandidateByPeriod(item.IDPeriod).Where(i => i.IDPosition == position).ToList());

                var newCandidates = candidates.Select(i => new { i.NIM, i.Email }).Distinct().ToList();
                var userCandidates = _userRepository.GetUserCandidateList(newCandidates.Select(i => i.NIM).ToList(), 2).ToList();

                /* Get Unenrolled Candidates */
                var trxSchedules = _transactionScheduleRepository.GetByScheduleAndUsers(item.IDSchedule, userCandidates.Select(i => i.IDUser).ToList());
                var unenrolledCandidates = userCandidates.Where(i => !trxSchedules.Select(j => j.IDUser).Contains(i.IDUser)).ToList();

                _emailHelper.Send(new Email
                {
                    Recipients = unenrolledCandidates.Select(i => i.Email).Distinct().ToList(),
                    Subject = "Testing",
                    Body = "This email is sent for testing purposes. If you receive this email, please kindly ignore this. Sorry for the inconvenience. Thank you.",
                    IsBodyHtml = true
                });
            }
            #endregion
            #region assigment
            /* Assignment on Deadline Start & Deadline End */
            var assignmentDTOs = _assignmentRepository.GetAssignmentByIdPeriod(period != null ? period.IDPeriod : 0)
                .Where(i => i.DeadlineStart.Date == currentDate.Date || i.DeadlineEnd == currentDate.Date)
                .ToList();

            foreach (var item in assignmentDTOs)
            {
                var schedule = _masterScheduleRepository.GetScheduleByPeriod(period != null ? period.IDPeriod : 0)
                    .Where(i => i.IDStage == item.IDStage && i.IDSubStage == item.IDSubStage)
                    .Select(i => new { i.IDSchedule, i.IDPeriod, i.IDStage, i.IDSubStage, i.IDPosition, i.Date })
                    .Distinct()
                    .FirstOrDefault();
                

                /* Get Candidates */
                var candidates = new List<CandidateDTO>();
                
                var idPositions = schedule.IDPosition.Split(';').Where(i => !string.IsNullOrEmpty(i)).ToArray();
                foreach (var position in idPositions)
                    candidates.AddRange(_candidateRepository.GetCandidateByPeriod(item.IDPeriod).Where(i => i.IDPosition == position).ToList());

                var newCandidates = candidates.Select(i => new { i.NIM, i.Email }).Distinct().ToList();
                var userCandidates = _userRepository.GetUserCandidateList(newCandidates.Select(i => i.NIM).ToList(), 2);

                var candidateEmail = new List<string>();
                foreach (var candidate in userCandidates)
                {
                    //check sudah submit atau belum
                    if (_submissionRepository.GetLastSubmission(item.IDAssignment, candidate.IDUser) == null)
                    {
                        
                        candidateEmail.Add(candidate.Email);

                        
                        

                    }
                }

                _emailHelper.Send(new Email
                {
                    Recipients = candidateEmail,
                    Subject = "Testing Assigment",
                    Body = "This email is sent for testing purposes. If you receive this email, please kindly ignore this. Sorry for the inconvenience. Thank you.",
                    IsBodyHtml = true
                });
            }
            #endregion
        }


        public override Task StopAsync(CancellationToken cancellationToken)
        {
            _logger.LogInformation("ScheduleEmailJob is stopping.");
            return base.StopAsync(cancellationToken);
        }
    }
}
