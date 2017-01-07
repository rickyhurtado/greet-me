craig = Contact.find_or_create_by(email: 'calexander@example.com', full_name: 'Craig Alexander')
mirinda = Contact.find_or_create_by(email: 'mcarfrae@example.com', full_name: 'Mirinda Carfrae')

craig.update_attributes(gender: 'm')
mirinda.update_attributes(gender: 'f')

craig.interests.create([{ name: 'Swim' }, { name: 'Bike' }, { name: 'Run' }])
mirinda.interests.create([{ name: 'Swim' }, { name: 'Bike' }, { name: 'Run' }])
