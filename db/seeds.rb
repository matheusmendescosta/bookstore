# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
supplier = Supplier.create([{
                             name: 'Wiley'
                           }])

author = Author.create([{
                         first_name: 'Al',
                         last_name: 'Brooks',
                         title: 'Trading Price Action Trading Ranges - Technical Analysis Of Price Charts Bar By Bar For The Serious Trader'
                       }])

book = Book.create([{
                     title: 'Trading Price Action Trading Ranges - Technical Analysis Of Price Charts Bar By Bar For The Serious Trader',
                     year_published: 2011,
                     isbn: 'B0067PZ87C',
                     price: 212.40,
                     out_of_print: false,
                     views: 485,
                     supplier_id: 1,
                     author_id: 1
                   }])

customer = Customer.create([{
                             first_name: 'Matheus',
                             last_name: 'Mendes',
                             title: '',
                             email: 'matheusmendescosta@icloud.com',
                             visits: 1,
                             orders_count: 0,
                             lock_version: 0
                           }])

order = Order.create([{
                       date_submitted: '09/06/2023',
                       status: 0,
                       subtotal: 70,
                       shipping: true,
                       tax: 5,
                       total: 55,
                       customer_id: 1
                     }])

bookOrder = BookOrder.create([{
                               order_id: 1,
                               book_id: 1
                             }])

reviews = Review.create([{
                          title: 'A biblia do faria limmerrr',
                          body: 'Livro para quem gosta de bingo de playboy',
                          rating: 10,
                          state: 1,
                          customer_id: 1,
                          book_id: 1
                        }])
