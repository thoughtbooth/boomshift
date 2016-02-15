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

# Create Stripe static data.  See https://github.com/andrewculver/koudoku
plans = Plan.create([
          {
            name: 'Starter',
            price: 0.00,
            interval: 'month',
            stripe_id: '1',
            features: ['**2** clients', '**2** services', 'Job tracking', 'Client billing', '**Free forever**'].join("\n\n"),
            display_order: 1
            },
          {
            name: 'Unlimited',
            price: 5.00,
            interval: 'month',
            stripe_id: '1',
            features: ['**unlimited** clients', '**unlimited** services', 'Job tracking', 'Client billing'].join("\n\n"),
            display_order: 2,
            highlight: true
            }
          ])
          # Markdown cheatsheet for plan features: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

# https://github.com/andrewculver/koudoku#using-coupons
# coupon = Coupon.create(code: '30-days-free', free_trial_length: 30)