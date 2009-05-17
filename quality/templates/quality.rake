
desc 'Run all code quality tasks'
task :quality => ['quality:flog', 'quality:flay', 'quality:roodi', 'metrics:all']
