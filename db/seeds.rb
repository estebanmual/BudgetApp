user1 = User.create(name: "John Doe", email: "john@example.com", password: "password")

category1 = Category.create(name: "Food", icon: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80", user_id: 1)
category2 = Category.create(name: "Transport", icon: "https://images.unsplash.com/photo-1613638377394-281765460baa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80", user_id: 1)
category3 = Category.create(name: "Entertainment", icon: "https://images.unsplash.com/photo-1586899028174-e7098604235b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80", user_id: 1)

entity1 = Entity.create(name: "Mcdonalds", amount: 6, user_id: 1, category_id: 1)
entity2 = Entity.create(name: "Uber", amount: 13, user_id: 1, category_id: 2)
entity3 = Entity.create(name: "Didi", amount: 12, user_id: 1, category_id: 2)
entity4 = Entity.create(name: "Netflix", amount: 10, user_id: 1, category_id: 3)
entity5 = Entity.create(name: "Spotify", amount: 10, user_id: 1, category_id: 3)
entity6 = Entity.create(name: "Starbucks", amount: 5, user_id: 1, category_id: 1)

