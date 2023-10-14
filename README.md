# Software Requirements Specification (SRS) for Grocery Delivery App

**1. User Authentication Screen**

- **Login**:
    - Email/Username TextField (TextField)
    - Password TextField (TextField with obscureText property)
    - Submit Button (ElevatedButton)
    - Forget Password Link (TextButton)
- **Register**:
    - Name TextField (TextField)
    - Email TextField (TextField)
    - Password TextField (TextField with obscureText property)
    - Confirm Password TextField (TextField with obscureText property)
    - Submit Button (ElevatedButton)
    - Link to Login Screen (TextButton)

**2. Seller Dashboard Screen**

- **Product Listing**:
    - Add Product Button (FloatingActionButton)
    - List of Products (ListView.builder)
        - Product Image (Image.network)
        - Product Name (Text)
        - Product Price (Text)
        - Edit Product Button (IconButton with Icons.edit)
        - Delete Product Button (IconButton with Icons.delete)
- **Add/Edit Product**:
    - Product Name TextField (TextField)
    - Product Image Upload (ImagePicker)
    - Product Price TextField (TextField)
    - Product Category Dropdown (DropdownButton)
    - Product Health Attributes (Sliders or Dropdowns)
    - Save Button (ElevatedButton)

**3. Customer Shopping Screen**

- **Product Browsing**:
    - Search Bar (TextField with a leading Search Icon)
    - List of Products (GridView.builder)
        - Product Image (Image.network)
        - Product Name (Text)
        - Add to Cart Button (IconButton with Icons.add_shopping_cart)
- **Sorting Option**:
    - Sort by Healthy Option (DropdownButton or ToggleButtons)
    - Custom Filter Widgets based on nutrients like trans fats, protein, etc. (RangeSlider or custom Widgets)

**4. Cart Management Screen**

- **Shopping Cart**:
    - List of Added Products (ListView.builder)
        - Product Image (Image.network)
        - Product Name (Text)
        - Quantity Selector (DropdownButton)
        - Remove from Cart Button (IconButton with Icons.remove_circle_outline)
    - Total Price Display (Text)
    - Checkout Button (ElevatedButton)

**5. Side Navigation Bar (Drawer)**

- Profile Overview (UserAccountsDrawerHeader)
- Home (ListTile with leading Icon)
- My Orders (ListTile with leading Icon)
- Settings (ListTile with leading Icon)
- Logout (ListTile with leading Icon)

**6. Bottom Navigation Bar**

- Home (Icon with label)
- Categories (Icon with label)
- Cart (Icon with badge for the number of items)
- Profile (Icon with label)
