# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

job_statuses = JobStatus.create([
          {
            status: 'Scheduled'
            },
          {
            status: 'Completed'
            },
          {
            status: 'Billed'
            },
          {
            status: 'Paid'
            }
          ])

# Create Stripe subscription plan static data.
plans = SubscriptionPlan.create([
          {
            amount: 0.00,
            interval: 'month',
            stripe_id: '1',
            name: 'Starter'
            },
          {
            amount: 5.00,
            interval: 'month',
            stripe_id: '2',
            name: 'Unlimited'
            }
          ])